---
title: NestJS Doctor
date: 2026-07-28 22:44:06 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: nestjs-doctor0.7.3
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action "nestjs-doctor" automates the process of diagnosing and fixing NestJS code. It provides a comprehensive set of 50 rules covering various aspects like security, performance, correctness, architecture, and schema. The action outputs a score with actionable diagnostics, supports monorepos, and detects anti-patterns introduced by AI-generated code. Users can run it as a CLI tool or integrate it into their GitHub workflow to ensure code quality in pull requests and pushes.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **nestjs-doctor@0.7.3**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The GitHub Action "nestjs-doctor" automates the process of diagnosing and fixing NestJS code. It provides a comprehensive set of 50 rules covering various aspects like security, performance, correctness, architecture, and schema. The action outputs a score with actionable diagnostics, supports monorepos, and detects anti-patterns introduced by AI-generated code. Users can run it as a CLI tool or integrate it into their GitHub workflow to ensure code quality in pull requests and pushes.

## What's Changed

### Patch Changes

- b357b1d: Examine route handlers declared on an undecorated base controller.

  Nest reads route metadata off the prototype chain, so a base class can hold the
  handlers while the concrete subclass carries `@Controller()`:

  ```ts
  export class DomainControllerBase<T> {          // no decorator at all
    @Get()
    async getItems(@Req() req): Promise<T[]> { return this.entityRepo.find(...); }
  }

  @Controller('/reminder/:organizationSlug/:userId')
  export class ReminderController extends DomainControllerBase<ReminderEntity> {}
  ```

  The previous release taught the controller rules to recognise a decorator that
  composes `Controller()`. This one drops the decorator requirement entirely: a
  class declaring route handlers is examined whether or not it carries anything.

  Across 211 public repositories there are 10 such classes holding 33 handlers,
  and examining them adds 35 findings — repositories injected into a controller,
  raw entities returned, endpoints with no guard.

  Two rules needed care rather than widening:

  - **`require-guards-on-endpoints`** now knows which base classes a subclass
    guards, gathered once per run beside the existing `APP_GUARD` and composed
    decorator facts. A base whose subclass carries `@UseGuards` is left alone; one
    nothing guards is reported.
  - **`param-decorator-matches-route`** treats a missing `@Controller()` as an
    unreadable prefix rather than an empty one, so a `@Param('orgId')` matching a
    prefix declared on the subclass is not reported as a mismatch.

  Closes #179.

- 0dea5be: Recognise a controller behind a composed decorator.

  Nine rules opened with `if (!isController(cls)) continue;`, and `isController`
  matches the literal name `Controller`. A project that wraps it — which NestJS
  encourages through `applyDecorators` — was invisible to all nine:

  ```ts
  export const ApiController = (path?: string) => Controller(`/api/v${API_VERSION}/${path}`);

  @ApiController('activities')
  export class ActivityController {
    @Get('/') activities(@Query() pager: ActivityQueryDto) { switch (pager.type) { ... } }
  }
  ```

  `ApiController` returns `Controller(...)`. The class is a controller in every
  sense NestJS cares about, and no rule looked at it.

  Across 189 public projects there are **58 such classes holding 358 route
  handlers**. Examining them adds 86 findings, 72 of them in `mx-space/core`:
  `switch` statements in handlers, raw entities returned, repositories injected
  into controllers.

  A class now counts when it carries `@Controller()`, or when it carries some
  class decorator and declares route handlers. A class with **no** decorator at
  all is still skipped: NestJS needs a concrete subclass to register it, and a
  guard or an injection may live there rather than on the base.

- 1b2dc5e: Recognise `@Global()` visibility and `@Inject()` tokens in
  `performance/no-unused-module-exports`.

  The rule decided who could see an export by walking explicit `imports` arrays.
  A `@Global()` module is visible to every module without an import edge, so the
  walk never found the consumer:

  ```ts
  @Global()
  @Module({ providers: [{ provide: DRIZZLE, useFactory }], exports: [DRIZZLE] })
  export class DatabaseModule {}

  @Injectable()
  export class CustomersRepository {
    constructor(@Inject(DRIZZLE) private readonly db: DrizzleDB) {}
  }
  ```

  Two things were missing. A global module's consumers are every module, not its
  importers. And usage was read from constructor parameter _types_ only, so an
  `@Inject(TOKEN)` injection of a token-provided export counted for nothing.

  Across 76 public projects this takes the rule from 345 findings to 268. Closes #104.

- 325d999: Recognise every `@Inject*` token decorator in
  `correctness/require-inject-decorator`.

  The rule reports a constructor parameter with no type annotation and no
  injection token, at error severity, saying NestJS cannot resolve it. It looked
  for exactly one decorator name:

  ```ts
  const hasInject = param.getDecorators().some((d) => d.getName() === "Inject");
  ```

  Every other Nest DI decorator supplies a token the same way — `@InjectRepository`
  and `@InjectEntityManager` and `@InjectDataSource` from TypeORM, `@InjectModel`
  from Mongoose, `@InjectQueue` from Bull, and whatever a community package adds.
  So this working code was an error:

  ```ts
  constructor(@InjectRepository(Company) repo) {}
  ```

  Across 76 public projects and 16 Nest libraries the rule fires 7 times, and 6 of
  those carry `@InjectRepository`. The check now keys on the `Inject` prefix, which
  is the naming every one of these follows, rather than a list that needs a new
  entry per package. `@Optional()` on its own still reports, because it supplies no
  token.

- 3d3631d: Report manual instantiation only for classes NestJS can inject.

  `architecture/no-manual-instantiation` matched on a name suffix — `Service`,
  `Repository`, `Gateway`, `Resolver`, `Guard`, `Interceptor`, `Pipe`, `Filter` —
  and never checked whether the class was a provider. Its own description says
  otherwise:

  > Do not manually instantiate **@Injectable** classes — use NestJS dependency injection

  and its help asks for something impossible when the class is not yours:

  > Register the class as a provider in a module and inject it via the constructor

  So `new ValidationPipe({ whitelist: true })`, straight out of the NestJS docs,
  was an **error**. So was every plain domain class whose name happened to end in
  `Service`, and every builder called with a runtime argument.

  Across 189 public projects the rule fired 97 times: 30 on classes NestJS
  actually instantiates, 58 on plain classes declared in the project, 9 on classes
  from `node_modules`.

  The rule now consults the set of classes NestJS treats as DI participants —
  `@Injectable`, `@Controller`, `@Resolver`, `@WebSocketGateway` — gathered once
  per run and handed to file rules alongside the existing guard facts. 97 findings
  become 28, and what remains is hand-built `LoggerService`, `RedisService`,
  `ConfigService`, `ConfigRepository`.

  The `bad-architecture` fixture gains an `@Injectable()` on `OrderValidatorService`,
  which is what makes it the violation the fixture means it to be.

  Closes #188.

- 81d4e89: Find a workspace-root ORM schema from every sub-project.

  In monorepo mode each sub-project extracts its schema relative to its own
  directory:

  ```ts
  const schemaGraph = extractSchema(
    astProject,
    files,
    project.orm,
    projectPath
  );
  ```

  A monorepo usually keeps one schema for the whole workspace, at the root. It sits
  outside every sub-project, so no sub-project found it, and the three schema rules
  reported nothing — which reads exactly like a schema with no problems.

  `ghostfolio/ghostfolio` keeps `prisma/schema.prisma` at the repository root.
  Scanned as a single project it reports 11 schema findings; scanned as the
  monorepo it is, it reported 0, while still naming `prisma` as the detected ORM.

  A sub-project that finds no schema of its own now retries from the workspace
  root. A sub-project that owns one is unaffected.

  Separately, when an ORM is detected and the schema graph is still empty, a
  warning now goes to stderr in every format, so "found nothing" stops looking like
  "found nothing wrong".

  Closes #192.

- 96a5683: Detect Nx projects that have no `package.json` of their own.

  Nx keeps a single dependency list at the workspace root — that is its
  single-version policy — so most Nx projects have a `project.json` and no
  `package.json`. `detectNxMonorepo` required a sibling `package.json` carrying a
  direct `@nestjs/core` or `@nestjs/common` dependency, and skipped everything
  else without a word.

  On `amplication/amplication` that meant 9 of its 21 NestJS projects were
  invisible, `packages/amplication-server` among them — 794 files importing
  `@nestjs`, 59 module files. Pointing the CLI at the repository root scanned 252
  files and reported 66 findings.

  A project with no usable `package.json` now qualifies when it contains a
  `*.module.ts` that imports `@nestjs/common`. Nx workspaces routinely hold
  Angular projects, which use the same file name, so the import is what separates
  them.

  Across the 15 Nx repositories in a 189-project corpus: 3,354 files scanned
  becomes 3,963, and 1,997 findings become 2,679. Amplication alone goes from 252
  files to 1,655. The repositories that scan _fewer_ files now were previously
  running NestJS rules over Angular code — `ZenSoftware/zen` no longer reports on
  `libs/auth`, which has 40 files importing `@angular` and none importing
  `@nestjs`. Non-Nx projects are untouched.

- 26a9366: Treat a bootstrapped module as an entry point in `performance/no-orphan-modules`.

  The rule reports a module no other module imports. An application root is never
  imported, so the rule skipped one name:

  ```ts
  // Skip AppModule — it's the root and is never imported
  if (mod.name === "AppModule") {
    continue;
  }
  ```

  Anything else called dead code. `immich` bootstraps three roots and every one was
  reported:

  ```ts
  const app = await NestFactory.create<NestExpressApplication>(ApiModule, {
    bufferLogs: true,
  });
  await NestFactory.create(MicroservicesModule, { bufferLogs: true });
  await NestFactory.create<NestExpressApplication>(MaintenanceModule, {
    bufferLogs: true,
  });
  ```

  The root is whichever module is handed to `NestFactory.create`,
  `createMicroservice` or `createApplicationContext`, and a project may have
  several. Those are now entry points. `AppModule` stays as a fallback for a
  project whose bootstrap file sits outside the scanned root.

  Across 76 public projects this clears 11 findings — `ApiModule`,
  `MicroservicesModule` and `MaintenanceModule` in immich, `WorkerModule` in
  vendure, plus seed, migration and CLI roots elsewhere. No other rule moves.

- 90c028f: Check class properties in `security/no-hardcoded-secrets`.

  The name-based path walked `VariableDeclaration` and `PropertyAssignment` in two
  near-identical blocks. A class field is a `PropertyDeclaration` and matched
  neither, so the most natural place to park a credential in a NestJS service was
  invisible:

  ```ts
  export class SocketConstants {
    // authentication token
    public static readonly AUTH_TOKEN = "FutureIsComing";
  }
  ```

  That one is real, in `apitable/apitable`, in `src/shared/common/constants/`.
  Across 76 public projects it is the only miss the change recovers — a small
  number, but for a security rule a miss is the failure that matters.

  The three node kinds now run through one loop with the same name test, value
  test, and the scope-string, echoed-name and thrown-message skips. No existing
  finding changes.

- b901d38: Fail on a target path that does not exist, and say when nothing was scanned.

  The path was resolved but never checked. Pointing the CLI at a directory that
  does not exist globbed a missing cwd, collected zero files, and printed:

  ```
    100 / 100  ★★★★★  Excellent
    No issues found!  0 files scanned  in 0ms
  ```

  with exit code 0. A CI job with a typo in its path, a wrong `working-directory`,
  or a checkout that had not produced the sources yet went green on a perfect
  score for a project nobody read.

  A missing path, or a path that is a file, now exits 2 with a message. When the
  path is a directory but no TypeScript matched, the scan still runs and a warning
  goes to stderr in every output format, next to the existing scope warnings:

  ```
  No TypeScript files matched under /repo/apps/api. The score describes nothing.
  ```

  Left alone: `--min-score` still passes on a zero-file scan. Making a gate fail
  there is a change to exit-code policy, not a bug fix, so it is called out
  separately.
