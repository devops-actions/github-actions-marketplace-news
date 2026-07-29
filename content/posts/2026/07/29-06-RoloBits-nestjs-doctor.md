---
title: NestJS Doctor
date: 2026-07-29 06:41:45 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: nestjs-doctor0.7.5
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action **nestjs-doctor** automates NestJS code diagnostics by scanning a project and providing a 0-100 score with actionable diagnostics. It identifies issues in security, performance, correctness, architecture, and schema areas, including common anti-patterns introduced by AI-generated code. The action can be run as a CLI tool or via GitHub Actions, offering flexibility in scope options like `changed`, `files`, `lines`, or `full`.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **nestjs-doctor@0.7.5**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The GitHub Action **nestjs-doctor** automates NestJS code diagnostics by scanning a project and providing a 0-100 score with actionable diagnostics. It identifies issues in security, performance, correctness, architecture, and schema areas, including common anti-patterns introduced by AI-generated code. The action can be run as a CLI tool or via GitHub Actions, offering flexibility in scope options like `changed`, `files`, `lines`, or `full`.

## What's Changed

### Patch Changes

- 7befa7f: Two architecture rules stop treating any directory as a NestJS module.

  **`architecture/require-module-boundaries`** flags a relative import that reaches
  into `/entities/`, `/dto/`, `/guards/`, `/pipes/` and friends, skipping it only
  when source and target sit in the same module. It never asked whether the target
  was in a module at all, and a project's `src/` usually holds `app.module.ts`, so
  shared code counted as "another module's internals":

  ```ts
  // src/modules/sessions/sessions.controller.ts
  import { WherePipe } from "../../pipes/where.pipe"; // reported
  // src/auth/auth.service.ts
  import { ApiResponse } from "../common/dto/api-response.dto"; // reported
  ```

  Neither `pipes/` nor `common/` is a module. An import is now skipped when the
  target lies outside every module, and when the target's module _contains_ the
  source's module, which is what shared and root code looks like. A sibling module
  is still a boundary, so `db.module.ts` reaching into `auth/entities/` is
  reported as before.

  **`architecture/no-barrel-export-internals`** flags any `index.ts` re-exporting a
  `.entity`, `.guard`, `.repository` and so on. Its own help text says "only export
  the module's public API", but it ran on every folder barrel, and a
  `guards/index.ts` exporting guards is doing its job. Of 67 barrels flagged
  across the corpus, **50 sat in a directory with no module file at all** —
  `guards/`, `filters/`, `entities/`, `interceptors/`. The rule now runs only on a
  barrel beside a module file.

  Suppression needs a positive sighting, which is the invariant #150 recorded:
  "only two sides positively resolving to the same module skip the report;
  anything unknown reports as before". So an empty `moduleDirectories` means no
  module was found rather than nothing being one, and a target outside every
  module is skipped only when the scan actually holds that file. An import whose
  specifier resolves nowhere is unknown and still reported, which costs 6 findings
  against the looser version.

  Across 189 public projects: module boundaries 867 to 602, barrel exports 186 to
  26, nothing added by either.

  Of the 265 boundary findings removed, most target a shared folder holding no
  module and no provider, and about 67 are a nested module importing its parent's
  `dto/` or `entities/`. Around 16 target a folder that holds a service or
  controller but no module file. That shape is arguably a feature folder missing
  its module, which is how the `config-disable-rules` fixture below is read, and
  the rule now says nothing about it either way.

  One fixture changed. `config-disable-rules` had a `src/users/` holding a
  service, a repository and a barrel but no module, so it was a feature folder
  missing its module file; it now has one. A boundaries test used
  `/elsewhere/tool.ts` importing `../users/...`, which resolves outside the
  `/src/users` module it declared, so it was passing for the wrong reason.

- 366e182: `correctness/no-async-without-await` no longer flags a GraphQL resolver, a
  WebSocket handler or a microservice handler.

  The rule already exempts HTTP handlers, on the reasoning its own comment gives:
  NestJS resolves the returned promise, so `async` without `await` is fine on a
  route. The exemption list for other entry points held only `TsRestHandler`,
  `GrpcMethod` and `GrpcStreamMethod`, so the same code under a different
  transport was reported:

  ```ts
  @Query()
  async messages(@Args('roomId') roomId: string): Promise<Message[]> {
    return getMongoRepository(Message).find({ where: { roomId } });
  }
  ```

  `@Query`, `@Mutation`, `@Subscription`, `@ResolveField`, `@ResolveProperty`,
  `@ResolveReference`, `@SubscribeMessage`, `@MessagePattern` and `@EventPattern`
  now count the same way `@Get` does. A plain method with no await is still
  reported.

  The rule's own comment and help text said only ts-rest and gRPC, and only HTTP
  handlers; both now name what is actually exempt.

  Across 189 public projects this removes 141 findings and adds none.

- 479180a: `architecture/no-business-logic-in-controllers` no longer reports a controller
  for mapping errors to HTTP exceptions.

  #182 taught the rule that a guard clause is not business logic, but it only
  recognised an `if` with no `else`. The commonest way to reject a request in a
  `catch` is a chain, and every branch of it throws:

  ```ts
  } catch (e) {
    if (e instanceof GroupIdNotFoundError) {
      throw new NotFoundException('Group not found');
    } else if (e instanceof Error) {
      throw new BadRequestException(`Unexpected error: ${e.message}`);
    } else {
      throw new BadRequestException('Server error');
    }
  }
  ```

  That counted as three branches and was reported as business logic, which is the
  opposite of true: translating a domain error into a status code is the HTTP
  concern a controller exists for. A chain now counts as a guard when every one of
  its branches only throws, written either `else if` or `else { if }`. A branch
  that does anything else still counts, so an `else` that assigns or calls is a
  branch as before.

  A chain also counts as **one** branch rather than one per link. It used to be
  counted per link, so adding a rejection made the rule likelier to fire:
  `if (a) throw; else { r = 5 }` was clean while
  `if (a) throw; else if (b) throw; else { r = 5 }` reported "2 if". More ways to
  reject a request should never read as more business logic.

  Across 189 public projects this takes the rule from 223 findings to 196 and adds
  none. 21 of the 27 are error mapping in one project, across 7 of its
  controllers, so the count is a weak signal of how often this happens; the
  argument is the shape rather than the frequency.

  The threshold is unchanged. One non-guard `if` per handler is still allowed,
  which was measured against two stricter alternatives: counting every remaining
  `if` takes the rule to 424, and counting only branches that assign takes it to
  241 while silencing cases that should fire, among them header parsing that
  belongs in a controller.

- e2762ae: `security/require-guards-on-endpoints` no longer calls a guarded endpoint
  unguarded when the guard is chosen by a ternary.

  A composed auth decorator is recognised by looking for `UseGuards(...)` among
  the arguments of `applyDecorators(...)`, and the check required an argument to
  _be_ that call. It commonly is not:

  ```ts
  export function Auth(allowApiKeyAuth = false, isOptionalAuth = false) {
    return applyDecorators(
      SetMetadata(IS_OPTIONAL_AUTH_KEY, isOptionalAuth),
      allowApiKeyAuth
        ? UseGuards(MultiAuthGuard, ApiKeyRateLimitGuard, AuthenticationGuard)
        : UseGuards(JwtAccessTokenGuard, AuthenticationGuard)
    );
  }
  ```

  Both branches apply a guard, but the argument is a conditional expression rather
  than a call, so `Auth` was not recorded and every `@Auth()` endpoint was
  reported as having no guard.

  An argument now counts when it is a `UseGuards` call, when it is a ternary whose
  **both** branches apply one, or when it spreads an inline array holding one. A
  ternary that guards only one way round does not count, and neither does an
  argument that merely mentions `UseGuards` somewhere inside it, such as
  `SetMetadata('factory', () => UseGuards(G))`. Spreading a variable rather than
  an array literal is still not followed.

  This is the worst direction for a security rule to be wrong in: it says an
  endpoint is unprotected when it is protected. Across 189 public projects it
  removes 138 findings, all in one project that uses the ternary form, and adds
  none. That project still reports its 14 genuinely unguarded endpoints.

- 6d658ef: `correctness/injectable-must-be-provided` no longer asks you to register a base
  class.

  The rule reports an `@Injectable()` class that appears in no module's
  `providers`, and suggests adding it or dropping the decorator. A base class is
  neither: it is registered through every subclass that extends it, and dropping
  its `@Injectable()` breaks the constructor injection those subclasses inherit.
  `immich`'s `BaseService` is extended by 50 classes and was reported.

  A class named in an `extends` clause is now skipped. The engine already
  collected that set for `no-unused-providers`; this rule just was not using it.
  Test files are left out of the collection, so a stub such as
  `class Stub extends OrphanThing {}` in a spec cannot exempt a production class.

  Two limitations, both inherent to matching on a bare class name, which is the
  contract `collectExtendedClasses` already had: an unrelated class sharing a base
  class's name is exempted too, and a base extended only by subclasses that are
  themselves unregistered goes quiet while those subclasses are still reported.

  Across 189 public projects this removes 5 findings and adds none.

- 28c8828: `architecture/no-orm-in-services` no longer repeats itself once per injected
  repository.

  The rule walks a service's constructor parameters and reports on each
  `@InjectRepository()`, `@InjectModel()` or `@InjectEntityManager()` it finds.
  The message it produces does not name the parameter:

  > Service uses @InjectRepository() directly. Consider wrapping in a repository class.

  so a service holding nine repositories produced nine identical lines on nine
  consecutive lines of the same constructor. `Swetrix/swetrix`'s `UserService` is
  exactly that. The advice is about the service, and reading it nine times does
  not make it nine times more actionable.

  Each distinct reason is now reported once per service. A service that injects
  repositories, a Mongoose model and `PrismaService` still gets three findings,
  because those are three different things to say.

  Across 189 public projects this removes 196 findings and adds none. The set of
  services flagged is unchanged, not merely its size.

  One consequence worth knowing: the surviving diagnostic sits on the first
  matching parameter, so an inline `nestjs-doctor-ignore-next-line` on that line
  now silences the service rather than one of its repositories.

- 03f820c: `performance/no-unused-providers` no longer suggests deleting a provider the
  framework activates for you.

  The rule already knows about self-activating providers and skips a class
  carrying `@Cron`, `@OnEvent`, `@Process` or `@WebSocketGateway`. It looked only
  at decorators, so a provider that earns its registration by implementing a Nest
  contract was reported as never injected:

  ```ts
  @Injectable()
  export class AiImageService implements OnModuleInit {
    async onModuleInit() {
      /* startup work */
    }
  }
  ```

  Nothing injects it, and nothing should: Nest instantiates it and calls the hook.
  Acting on the advice would delete the startup work.

  A class implementing `OnModuleInit`, `OnApplicationBootstrap`, `OnModuleDestroy`,
  `OnApplicationShutdown`, `BeforeApplicationShutdown`, `CanActivate`,
  `NestInterceptor`, `ExceptionFilter`, `PipeTransform` or `NestMiddleware` now
  counts as self-activating. A provider implementing an unrelated interface is
  still reported.

  A namespace-qualified clause such as `implements common.PipeTransform<A, B>`
  counts too. A class that only inherits the hook from a base it extends, without
  an `implements` clause of its own, is still reported; that shape does not occur
  in the corpus.

  Across 189 public projects this removes 65 findings and adds none.

- 1ef06b6: `expandedElsewhere` now means what it says, and the report shows it.

  The endpoint trace collapses a class it has already expanded and marks the node
  so a reader can be told the calls are drawn somewhere else. Two things were
  wrong with that.

  **The flag was set on classes that were never expanded.** It is written in the
  branch that runs when a repeat finds no cached subtree, and the cache is only
  written for a class that has a provider. So `CommandBus`, `ConfigService`, a
  TypeORM `Repository`, anything the scan has no source for, got flagged on every
  occurrence after the first, pointing at a subtree that does not exist. In one
  report of a mid-sized public project, all six flagged nodes were `CommandBus`,
  which has no children anywhere in it. Across two larger projects the flag fell
  from 946 to 520 and from 6 to 0. The remaining ones are real: a class expanded
  once, reached again by another path.

  **Nothing read the flag.** A collapsed node was drawn with no children and no
  explanation, which is how a genuine leaf is drawn too. A marked node now carries
  a `↱` on the info row and says "Calls drawn at another call site" on hover. The
  marker is a glyph rather than a label because a label wide enough to read did
  not fit beside a `REPOSITORY` or `CONTROLLER` type badge, and it says "another"
  rather than "above" because the layout puts roughly a fifth of them level with
  or below the node.

  Also adds the first test over the report's client script. It is a template
  string, so `tsc` never sees it and a syntax error would only surface in a
  browser; the test parses it.

- 5e14ce0: `performance/no-orphan-modules` no longer reports a root module whose class is
  not called `AppModule`.

  The rule skips a module that `NestFactory.create()` bootstraps, and falls back
  to the name `AppModule` for projects whose bootstrap sits outside the scan. The
  fallback keys on the class name, so a root module named anything else was
  reported as never imported:

  - `ImmichAdminModule` in `immich`'s `src/app.module.ts`
  - `ApplicationModule` in `Saluki/nestjs-template`'s `src/modules/app.module.ts`

  A module declared in `app.module.ts` or `root.module.ts` is now treated as the
  root whatever the class is called. A module nobody imports under any other
  filename is still reported, `main.module.ts` included: that name reads as a
  feature's main module far more often than as an application root, and leaving it
  out costs nothing on the corpus since all four findings removed are
  `app.module.ts` paths.

  The trade this does make: a dead `src/legacy/app.module.ts` that nothing imports
  or bootstraps is now silent, and a monorepo with one `app.module.ts` per sub-app
  exempts them all, which is right while each is live.

  Across 189 public projects this removes 4 findings and adds none.

- 15cd7de: The ts-morph checker now honours a tsconfig `baseUrl`, so an entity that extends
  a base class imported as `src/common/entity/custom-base.entity` inherits its
  columns.

  `loadPathAliases` returns early when a tsconfig declares no `paths`, and
  `createAstParser` never passed `baseUrl` to the compiler options at all. A
  project that resolves bare specifiers through `baseUrl` alone therefore got no
  resolution: `gobeam/truthy` sets `"baseUrl": "./"` with no `paths`, and every
  entity extending its `CustomBaseEntity` was reported as having no primary key
  and no timestamps, though the base declares `@PrimaryGeneratedColumn`,
  `@CreateDateColumn` and `@UpdateDateColumn`.

  This is the same defect issue #154 fixed for path aliases, in the other
  resolution mode.

  Across 189 public projects the schema rules lose 19 findings: `require-primary-key`
  19 to 15, `require-timestamps` 183 to 168.

  Resolution also improves for every rule that consults the checker: **34 findings
  appear** that it could not reach before, and **12 more are retired** as false
  positives, on top of the 19 schema ones. Corpus net is +3. Spot-checked in both
  directions and correct: an unawaited `this.trackingService.trackRaceStarted()`
  was unreadable while the service's type could not be resolved, and 12
  `no-fire-and-forget-async` findings in one project turn out to name methods
  declared `void`. The same thing happened when `paths` was added in #158.

  This reaches the checker only. `buildModuleGraph` still resolves module imports
  through `resolvePathAlias`, which has no `baseUrl` fallback, so cycles, unused
  providers and unused exports stay blind on these projects: no architecture rule
  moved anywhere in the corpus. That is a separate change.

  `paths` and `baseUrl` are read in one parse rather than two, so a monorepo does
  not pay for the same tsconfig twice per sub-project.

  Peak RSS and elapsed are unchanged. Measured on the 9,836-file Nx workspace that
  motivated #198's memory work: **2,684 MB and 54.8 s before, 2,591 MB and 50.3 s
  after**, with identical findings. `baseUrl` only widens a probe within the
  scanned tree, so `skipFileDependencyResolution` still holds.
