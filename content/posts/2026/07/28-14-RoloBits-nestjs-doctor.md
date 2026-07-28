---
title: NestJS Doctor
date: 2026-07-28 14:52:02 +00:00
tags:
  - RoloBits
  - GitHub Actions
draft: false
repo: https://github.com/RoloBits/nestjs-doctor
marketplace: https://github.com/marketplace/actions/nestjs-doctor
version: nestjs-doctor0.7.2
dependentsNumber: "0"
actionType: Composite
actionSummary: |
  The GitHub Action **nestjs-doctor** automates the process of diagnosing and fixing NestJS code. It provides a 0-100 score, offers actionable diagnostics, supports zero configuration, and can scan monorepos. The action also includes features like generating reports with interactive visualizations and an inline review extension for VS Code. Its primary goal is to catch anti-patterns introduced by AI-generated code in pull requests or pushes.
---


Version updated for **https://github.com/RoloBits/nestjs-doctor** to version **nestjs-doctor@0.7.2**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/nestjs-doctor) to find the latest changes.

## Action Summary

The GitHub Action **nestjs-doctor** automates the process of diagnosing and fixing NestJS code. It provides a 0-100 score, offers actionable diagnostics, supports zero configuration, and can scan monorepos. The action also includes features like generating reports with interactive visualizations and an inline review extension for VS Code. Its primary goal is to catch anti-patterns introduced by AI-generated code in pull requests or pushes.

## What's Changed

### Patch Changes

- 188b2ea: Report the parameter's column, not its line's file offset.

  Four rules built the column from `nameNode.getStartLinePos() + 1`. That method
  returns the character offset in the file where the node's line begins, not a
  column, so the number grew with the file:

  ```
  accountRole.service.ts:19  col=773   (the line is 34 characters wide)
  ```

  Across 76 public projects, 1,367 of the 1,784 findings from these rules pointed
  past the end of their own line, the worst at column 12,645. The value reaches
  SARIF `startColumn`, GitHub annotations, the HTML report, and the language
  server, which turns it into the squiggle position in the editor.

  Affects `correctness/prefer-readonly-injection`, `architecture/no-orm-in-services`,
  `architecture/no-orm-in-controllers` and `architecture/no-repository-in-controllers`.
  A shared `columnOf()` now subtracts the line start from the node start. Diagnostic
  counts and fingerprints are unchanged — `diagnosticIdentity` never used the column.

- 08140e2: Stop the endpoint dependency trace re-expanding shared subtrees.

  `buildMethodDependencyTree` traces one node per call site, which is the point —
  call order and conditionality stay visible. But it re-expanded a callee's whole
  subtree at every path that reached it, so a diamond in the call graph grew
  multiplicatively.

  On `bookorbit/bookorbit` a single endpoint's trace held 126,708 nodes covering
  44 distinct classes, `DatabaseService` among them 33,860 times. Whole-project
  `--format json` came to 249 MB and died with an unhandled
  `RangeError: Invalid string length` from `JSON.stringify` — exit 1, no output,
  indistinguishable from a failed scan. 2 of 76 public projects crashed this way.

  A class's subtree is now expanded at its first call site in an endpoint; later
  call sites keep their own node and carry `expandedElsewhere: true`. A per-endpoint
  ceiling of 5,000 serialised nodes backs it up, and an endpoint that hits it is
  marked `truncated` and reported on stderr rather than cut silently.

  Across the same 76 projects the trace drops from 725,159 nodes to 190,614 and
  the JSON from 555 MB to 158 MB, with every diagnostic unchanged.

- 37e12c0: Stop counting guard clauses as business logic in controllers.

  `architecture/no-business-logic-in-controllers` allows one `if` and reports the
  second, on the stated basis that one is a guard clause and more is logic. It
  counted every `if` the same way, so a handler that only rejects bad input was
  reported at error severity:

  ```ts
  @Get('asset-profile/:symbol')
  public async getAssetProfile(@Param('symbol') symbol: string) {
    if (this.request.user.dailyRequests > maxDailyRequests) {
      throw new HttpException(getReasonPhrase(TOO_MANY_REQUESTS), TOO_MANY_REQUESTS);
    }
    ...
  }
  ```

  An `if` with no `else` whose branch contains only `throw` statements is now
  excluded from the count. Rejecting a request is an HTTP concern, which is what
  the rule wants left in the controller. An `if/else` still counts as a branch
  even when one arm throws, and loops and `switch` are untouched.

  Across 76 public projects this takes the rule from 257 findings to 122.

  **Fingerprint note.** The message reports the number of branching `if`s, so 37
  of the 105 surviving findings now carry a different count. The fingerprint is
  derived from the message, and it is emitted as SARIF `partialFingerprints` and
  as the GitLab code-quality `fingerprint`, so GitHub code scanning and GitLab
  will close those 37 alerts and open them again once. `--scope changed` is
  unaffected: it re-scans the base checkout with the same binary, so both sides
  carry the new message.

- d5c6dbd: Stop `correctness/no-fire-and-forget-async` reporting handled promises and
  synchronous emits.

  Two causes, 254 of the rule's 730 findings across 76 public projects.

  **A chain with a rejection handler.** The rule's help text offers `void` plus
  explicit error handling as the alternative to `await`. A `.catch()` is that
  handling, and it was reported anyway:

  ```ts
  this.allPublicArticlesCache
    .update()
    .catch((error) => this.logger.error(error));
  ```

  A statement whose chain ends in `.catch(h)`, or in a `.then(ok, fail)` with a
  rejection handler, is now left alone. A `.then(ok)` with no rejection handler
  still reports, and so does a bare `.finally()`.

  **`emit`.** It was in the name heuristic used when the return type cannot be
  resolved, but every emitter in the Nest ecosystem returns synchronously —
  `EventEmitter2.emit` gives a boolean, socket.io's gives the socket, and
  `ClientProxy.emit` gives an Observable, none of which can reject. The message
  claimed "unhandled rejections will crash the process" for
  `this.eventEmitter.emit('article.created', payload)` in 15 of the 76 projects.
  Removing it from the heuristic takes `emit` from 184 findings to the 10 whose
  return type genuinely resolves to a Promise.

  No message changes, so no fingerprint churn.

- 58f643a: Recognise HTTP handlers declared on a base class in `correctness/no-async-without-await`.

  The rule exempts HTTP handlers, because Nest resolves a returned promise itself
  so `async` without `await` is fine there. The exemption required the handler's
  own class to carry `@Controller()`:

  ```ts
  if (isController(cls) && isHttpHandler(method)) continue;
  ```

  Nest reads route metadata off the prototype chain, so the common base-controller
  pattern puts `@Get()` on a class that is never decorated and lets the concrete
  subclass carry `@Controller()`. Those handlers failed the class half of the test
  and were reported.

  Across 76 public projects there are 71 such classes declaring 404 handlers,
  producing 76 findings the rule's own comment calls valid code. The exemption now
  keys on the method, matching the `isFrameworkHandler` check directly below it,
  which never had a class gate.

- f0b5ad8: Recognise a provider whose only decorator sits on a constructor parameter.

  `correctness/no-missing-injectable` asks whether TypeScript emits
  `design:paramtypes` for the class, which is what Nest's injector reads. It
  checked for a class-level decorator, but a decorator on any constructor
  parameter triggers the same emit:

  ```ts
  export class NotificationRepository {
    constructor(@InjectKysely() private db: Kysely<DB>) {}
  }
  ```

  Compiling that with `emitDecoratorMetadata` produces the metadata, so the class
  resolves its dependencies without `@Injectable()`. It was reported anyway — 12
  times on `immich-app/immich`, which injects its Kysely connection this way
  throughout.

  A provider with constructor parameters and no decorator anywhere, the shape that
  actually fails at boot, still reports.

- 849039c: Stop `correctness/param-decorator-matches-route` reporting routes it cannot read.

  The rule stripped quotes off the decorator's first argument and treated whatever
  was left as the path. When the path is a constant rather than a literal, that
  produced an empty path, no known route parameters, and a mismatch for every
  `@Param()` on the method:

  ```ts
  @Delete(AdApiDefinition.deleteById.server)
  async deleteAd(@Request() req, @Param('id') id) {}
  ```

  > `@Param('id') does not match any route parameter. Available: (none).`

  The rule now only compares when the path is a string literal, on the method and
  on the controller alike. Across 22 public projects this removes 44 of 45
  findings — every one whose message said the available parameters were `(none)`.
  The one that remains has a literal path and is a genuine mismatch to look at.

- 3cf26f4: Detect two primary key forms the extractors were missing.

  `schema/require-primary-key` fired on entities that have one, because neither
  extractor recognised how it was declared.

  **Drizzle composite keys.** A junction table declares its key in the extras
  callback, not on a column:

  ```ts
  export const userPermissions = pgTable(
    "user_permissions",
    {
      userId: integer("user_id").notNull(),
      permissionName: varchar("permission_name").notNull(),
    },
    (t) => [primaryKey({ columns: [t.userId, t.permissionName] })]
  );
  ```

  The extractor read that third argument only for `.on(...)` index calls. Both the
  object form and the legacy positional `primaryKey(t.a, t.b)` are now read.

  **TypeORM on Mongo.** The Mongo driver declares the key as `@ObjectIdColumn()`
  on `_id`. It was not in `COLUMN_DECORATORS`, so the column was not extracted at
  all and the entity looked keyless. Closes #108.

  Across 76 public projects this takes `require-primary-key` from 117 findings to
  70 — 30 gone in a Drizzle project, 17 in a TypeORM/Mongo one, with no other rule
  moving.

- dcbea91: Stop `security/no-exposed-stack-trace` flagging the remedy it recommends.

  The rule looks for `error.stack` reaching a response, and treated any call
  expression as a possible response — including the logging call its own help text
  tells you to write:

  > Log the stack trace internally and return a generic error message to the client.

  ```ts
  this.logger.error(`Failed to run migration ${path}`, err.stack);
  ```

  Across 76 public projects, 142 of the rule's 150 findings were stacks handed to
  a logger, whether as a direct argument or inside an object passed to one.

  A stack reaching any standard log level is now left alone. The eight that remain
  are stacks placed into an object that is built and returned, which is the case
  the rule exists for — among them an exception filter putting `stack` in its
  response body and a health controller returning `trace: error.stack`.

- ae1a5ab: Count a `useClass` target and a base class as used providers.

  `performance/no-unused-providers` decided a provider was dead if nothing injected
  it by type. Two ways of using one were invisible:

  ```ts
  const repositories: Provider[] = [
    { provide: USER_REPOSITORY, useClass: UserRepository },
  ];

  @Module({ providers: [...repositories] })
  export class UserModule {}
  ```

  Nest instantiates `UserRepository`, and a base class runs through every subclass,
  without either being a constructor dependency anywhere.

  `correctness/injectable-must-be-provided` already collected `useClass` targets,
  but only from an array literal written inline in the `@Module` decorator, so the
  common pattern of grouping providers into a const and spreading them was missed.
  That collector moves to a shared `collectProviderImplementations`, keyed on an
  object literal carrying `provide` wherever it appears, and both rules use it.

  Across 76 public projects: `no-unused-providers` 236 findings to 212, and
  `injectable-must-be-provided` 171 to 168.
