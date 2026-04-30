---
title: ZshellCheck v1
date: 2026-04-30 06:03:43 +00:00
tags:
  - afadesigns
  - GitHub Actions
draft: false
repo: https://github.com/afadesigns/zshellcheck
marketplace: https://github.com/marketplace/actions/zshellcheck-v1
version: v1.0.17
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/afadesigns/zshellcheck** to version **v1.0.17**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zshellcheck-v1) to find the latest changes.

## Action Summary

ZShellCheck is a GitHub Action and CLI tool designed for static analysis and automated fixes of Zsh scripts, focusing on areas like `setopts`, hooks, and glob patterns. It helps developers improve the quality and maintainability of their Zsh scripts by identifying potential issues, providing detailed linting feedback, and offering auto-fix capabilities. The action integrates seamlessly into CI/CD pipelines and supports various Zsh frameworks, plugin managers, and coding environments.

## What's Changed

## Changelog
* b6e858c17d2b0927719286917274774d4dc6d5bd Merge pull request #1273 from afadesigns/chore/coverage-push-to-gold
* ca587d83c17ce64ce343535d01d52a5b6c3cd48a Merge pull request #1274 from afadesigns/chore/consolidate-katatests
* 6100ec4e3d693dc66fd4ae04324e7a3fb82f3811 Merge pull request #1275 from afadesigns/chore/gocyclo-katas
* cc0d3551b5d26ed2cd47f6fcdf0346bde88cdd79 Merge pull request #1276 from afadesigns/chore/consolidate-katas-source
* d90205840f5b8bc9fabe7a5dda514c7d5ebb31fd Merge pull request #1277 from afadesigns/ci/parser-corpus-gate
* 0c8156642607b1d1fb0ddce953478ea79a393bf3 Merge pull request #1278 from afadesigns/fix/parser-arith-radix-numerics
* 2637d94410de0dd3649fd5c107fbe206bbab0fe5 Merge pull request #1279 from afadesigns/fix/parser-backtick-hash-arith
* 0466770ce57d705033b2da29f2ad615f931a6d8f Merge pull request #1280 from afadesigns/fix/parser-bitwise-arith
* 11e3e081a237eb2fe7087bfb276f41c4d21bb49e Merge pull request #1281 from afadesigns/fix/parser-fn-dash-name
* 79b295647c458e7cc2fbb6a0e54a29f93bfa035e Merge pull request #1282 from afadesigns/fix/parser-elif-brace
* dde8964e7988afc79b9297b9e3f07780bb2a2441 Merge pull request #1283 from afadesigns/fix/parser-program-semicolon
* a2b2551f0a63afcd9dc02599c6a379d2e43625ce Merge pull request #1284 from afadesigns/fix/lexer-slash-in-arith
* 93fcd29f176292d3a04e2ef9fcb09ccef2e7b956 Merge pull request #1285 from afadesigns/fix/parser-nested-case
* 30d88508affeabc6fc231b6360656aa72b2dd03c Merge pull request #1286 from afadesigns/fix/parser-nested-modifier-tail
* c9309d3ff359a8110f13bfa7781319751db9c8f5 Merge pull request #1287 from afadesigns/fix/parser-loop-brace-forms
* e01074cdf0f9794969905a14fa9ebaf4ebde13b3 Merge pull request #1288 from afadesigns/fix/parser-process-sub-multistmt
* 622b31d021f2321437bc1a8d044d58bd80641130 Merge pull request #1289 from afadesigns/fix/parser-comma-arith
* 4a0ce7e5e0c6366274f10c59e4a3bb21a7d5dff3 Merge pull request #1290 from afadesigns/fix/parser-case-doubleparen-pattern
* 416fe650755af130b5a06650377b5a360ccd7ab9 Merge pull request #1291 from afadesigns/fix/lexer-arith-cmd-pos
* 61f954f8f21d15c7e99ed1f3d1a1fb598ab9048c Merge pull request #1292 from afadesigns/fix/parser-double-lparen-glob
* fa759300bfb63399d484149cde2e5981b197de73 Merge pull request #1293 from afadesigns/fix/parser-cmdword-brace-init
* aeefe45aaa9e1eee30d9568a078bd63c63da3b40 Merge pull request #1294 from afadesigns/fix/parser-keyword-as-pattern
* 29507d610d01bc3c13087953f366cbcf8ba08d8a build: drop stale empty PGO profile and -pgo build flag
* 6fad68187e5059d2df70a40ebcc62cdd9db7fc4a chore(deps): bump golang.org/x/sys 0.26.0 -> 0.43.0 and Go to 1.25.0
* 2aefacb245973a755d32caf926796055eb3537b7 chore(deps): bump the github-actions group across 1 directory with 3 updates (#1318)
* cfa197404f69f16ee056e712e7a9b5652ad85c33 chore(katas): consolidate per-kata source files into hundred-bucket files
* 3a9ef95760cb549b1a28ece4f79fad47486be691 chore(katatests): consolidate per-kata test files into hundred-bucket files
* 8fff072274b9cf39fd99430997fb6c991384cb25 chore(lint): clear singleCaseSwitch + dead helper (#1297)
* 87dff02d094b6443b98e6d1ac01b4742da4c95ff chore(release): v1.0.17 (#1329)
* 22d7189c9e8fee9a28d35777330d22cb053fe571 chore: add SPDX and copyright headers to every Go source file; document code-review rubric and security-review log
* c7c5bce45eb0bbf32671f18e0bc4a1b2c175a41c chore: delete unused validate_local.sh helper
* c3c70f88511b212743ac0fea9326585ca7f927d5 chore: drop CODEOWNERS rule for nonexistent /wiki/ path
* 601aa097e5bb42cbfdf768113d1daca5c328688d chore: drop empty TestMain wrapper and assertion-less redirect-order test
* e3f35ef50b4fc4e4e445d1245e99c7596d634c6a ci: add gold-tier companion gates
* cb8c6ef2fa302186cf69c29fe7e94fe4d33c4888 ci: add parser-corpus gate locking baseline error count
* 16973bce11882fcda1e474528606d8900a402509 ci: add redteamx auto-approval workflow for afadesigns PRs
* 84e4e315d45f0214f204c6052d814ea402a013cd ci: clear testcache + force fresh run for cov gate
* 9dd7198528380ad43b11d88bd20f9dc2b04614f5 ci: correct stale SHA-pin version comments for checkout and setup-go
* 517c585fe1c83851ed8c514b80c1dba2e6eee07a ci: revert auto-approval workflow
* 35f5c46901778fbc0557157d43362991c075555f ci: skip Codecov upload on dependabot PRs (#1319)
* 7498e447f3029e9003d66debd4b7b1b3a5063eb7 docs(changelog): record gold-tier promotion and source consolidation
* 5d0965aaec0750a055e2de25b38c0d72c8dada2e docs(changelog): record parser drainage + lexer fix (#1317)
* acb48c67625b7db0516c4afc9d369e8b648c8365 docs(codecov): rewrite codecov.yml against the official reference
* f84b2cb7bd843a8ac61f7a60a1f126f8d10fc382 docs(readme): swap badge to HTML form + ignore build-time tools in codecov
* 424436e6aaca7fe0a14fc44e384cbef9ba7875fb fix(cmd-test): drop incorrect assertion on echo hello edits count
* 1a1eea988820e4a31d93551109ef474c0f9a948b fix(cmd-test): drop nonexistent KataID field from FixEdit assertion
* e3e84aa398fd4c57d962957da3c7db19dea16bc3 fix(cmd-test): use trailing-tail noka form in directive test
* 8f8f602243d50c920f38a0f37bebdb9f41a01af0 fix(codecov): badge gradient should peak at floor, not bottom (#1327)
* 39ff73184134038757e3ea4f5b8aca7eb95478af fix(deps): bump go directive 1.25.0 -> 1.25.9 to clear GO-2026-4602
* 2c8d0ac17c9e047d4678053d1d78ff5197d12728 fix(fix-test): rename TestDiff_NoChange to avoid duplicate symbol
* 07b02f96ce32f8c008073c1cd9775a5d894b3a27 fix(headers): add missing SPDX + copyright lines on two files
* ec3dc1d6a297ff95b213eac1bdb4b7192f3b36a2 fix(lexer): \`#\` is not a comment inside \${…} (#1304)
* b7080b99a47ab6b2509428a3a5f5688e3d5e1a1b fix(lexer): \`(((\` subshell+arith vs arith+group disambiguation (-6) (#1310)
* 332129a545ed96108d24bf74277f367fd2e878b9 fix(lexer): \`((\` after newline fuses to DoubleLparen (-2) (#1309)
* 42c9114938c0e9b1f7f8ae7c115f78ef3abc2449 fix(lexer): \`<(\` / \`>(\` not process sub inside \`[[ ]]\` (-1) (#1311)
* a39419f00d6cbdbf3698ddae51d4f62158d6bed5 fix(lexer): comment-skip ran NextToken defer twice (#1316)
* 12652a272e4d48f37a0a7a22a30f8ae2feeda107 fix(lexer): division / + grouping ((( in arithmetic
* a33d26dbe15a247a718814f2e451c2a2b0c635bf fix(lexer): only fuse (( into DoubleLparen at command position
* 79d786316a87b7c0191230759eaa0a5283057e19 fix(lexer): split readNumber to clear gocyclo + add tests
* 33c64c8458213e3a222425488fd851db881fc596 fix(lexer): zsh case fall-through `;|` and `;&` (-1) (#1299)
* da4af1abf72994825f67c4c8ef659add2f0021fb fix(parser): $^name flag + (( in [[ as glob (-8)
* 75f34c684b8edeb572c2f543335544b9b45298a8 fix(parser): ${${INNER}MOD} modifier tail (-9)
* 287dab54d93ea8c88e4ce9b5f471dc87f7b13c22 fix(parser): ParseProgram consumes ; without over-advancing
* 3657a63f9a38ee7007759882b19fc90c15cb72a0 fix(parser): \${#} special parameter (-1) (#1301)
* 555536409af7e004299684074714aacba2f47542 fix(parser): \`?\` in arith / brace block in pipeline / glob group + bracket (-1) (#1307)
* b7201d32568e940fd7a13efdf4a1833a71e94a0f fix(parser): \`\$(( … ))\` flags consumedParenTerminator (#1308)
* 1590ec83bb5d6864b051bbf513aabc588455e03f fix(parser): arithmetic radix + number-base lex + line/col errors
* 4032097e52869dab31bb2e422f85831a0d01ab50 fix(parser): array literal `)` not subshell terminator (-3) (#1300)
* a29e239d7ad630d383e3ef0dbf8c5c948f10bfa2 fix(parser): bitwise & ^ in ((..)) + $+INT existence
* 1717eef5ee93db4390bed1ba454614ddb026c7d7 fix(parser): brace-form for/while loops
* ca451007ac37e939d0197542244ef041eacedba2 fix(parser): case-clause pattern starting with ((alt|alt))
* add51900fa2ed00c1028eeeb20595a6572b97a4e fix(parser): comma operator in arithmetic (-1)
* e470a8cd9fe4b51da39c8ecf77e5109b9c38c0cc fix(parser): distinguish \${…} close from brace-block close (-1) (#1306)
* 8921321d1c3bc294f38adb349d6e4bd5e5709b1d fix(parser): escaped backtick + bare # in arithmetic
* 010ea5f0267293129a00db5e17df316219affa8d fix(parser): function keyword as assignment rhs (-1) (#1296)
* 470ca4aec1b22c91e39e0af89d29e1def34f330b fix(parser): function name starting with - (e.g. -helper)
* c9789be10333cd398b50ff028f0a08b12bdcdec9 fix(parser): glob bracket-class in [[..]] and case labels (-1) (#1298)
* 943a9e316a76a3f34566c108d707ad8015fd9401 fix(parser): guard typed-nil statement in pipeline head wrap (#1314)
* d681f395a7245b29010aa6b716fdf3621af8f83d fix(parser): if-elif brace form + ParseProgram brace-terminator
* a85f772f80298e9811e420890baadcb261b0cad4 fix(parser): keywords as literal patterns in [[..]] / subscripts (-2)
* 679dae1bce451445ed48247cf8e5fc396e3b9fe2 fix(parser): nested case inside case clause body (-5)
* 013ac775be75f75de6d2993ef1ceace598a29c36 fix(parser): process substitution body honours brace-terminator flag
* f6b0c79d503e863c70e86e8226192b0b8defeb90 fix(parser): seed brace depth from first command-word token (-4)
* 23c084bb9b3aff088a43ae27acbdb6fa1b59370f fix(parser): typeset array literal flags consumedParenTerminator (-1) (#1313)
* 66fdaed00b478917a5fa957f596c936c74bafb02 fix(parser): zsh \`if cond cmd\` shortcut without then/fi (-13) (#1303)
* 6d46c30630767d377e7f3ade70367b2654cf756a fix(parser): zsh glob \`#\` / \`##\` qualifier in command words (-1) (#1305)
* 412c7764d107107b23c6e929c18c0a1ed24f9de4 fix(parser): zsh keyword as \${…} subject (-1) (#1302)
* 2fa83a02382e9c4bfbcd6856df555457668ee0d9 fix(parser-corpus): record true ls-colors error count (#1315)
* 779566b86d2e868645dfe8cd2c5d68cfa37d4dcc fix(parser/lexer): zinit-install drainage cluster (-4) (#1312)
* 057608963fe4beebb752a372216b07ea405e6a26 fix: stop CPU profile + close file on run() return
* a86b92b3dada6879782d8cc47fcf629de8ca4499 refactor(ast): split Walk into per-node-type helpers
* 7beaeb61a1af12869b59b4a17796682bf0356d34 refactor(cmd): split run + processFile — gocyclo 35 -> 33
* 3704cd6aa3dc81eaafa7ba415cd33bc2daf12261 refactor(config,fix): trim ParseDirectives + unifiedDiff
* b19bb6e7871ae6353458684109266c3e09c5a9ef refactor(katas): drop checkZC1043, checkZC1110, checkZC1285 below gocyclo 15
* 79678419edfcbd4beda44dd2c43b746cd5b9c3b0 refactor(katas): drop more kata complexity below the gocyclo floor
* bf73d1cef89c7fdf8ff2b014f7db4d0f9c0d691e refactor(katas): five more Check/Fix rewrites — gocyclo down to 57
* 53d136883e6b4bc13c8e60d74fde3155458c3bde refactor(katas): keep dropping kata complexity below the gocyclo floor
* 48310dc85dc3f05bddc90f0ac47c9ac39e613874 refactor(katas): more kata Check rewrites — drop gocyclo to 67
* f46fed8dbd3c24d9837990e52943c80bd34a9e5c refactor(katas): reduce cyclomatic complexity below the gocyclo floor
* 41d96e0d292349e1899e50605998472cf31dd281 refactor(katas): split checkZC1069 walker — gocyclo 29 -> 28
* 7e835defe1c334bf6c3a68c020a408736ad33190 refactor(katas): split zc1088Visitor.traverse, walkZC1044, fixZC1086
* f27a3c4c6453cbe2818be6b01b1e59f61b523a13 refactor(katas): three more rewrites — gocyclo down to 54
* fd7561f1b9526f548293adbe24d8f5f0481f3772 refactor(katas): trim 3 more — gocyclo 15 -> 12
* a5a1bea4abc3afc986300916e4cd3c40c18beef7 refactor(katas): trim 3 more — gocyclo 18 -> 15
* eda08856f34790fe25c1bd77047e75d1f831778e refactor(katas): trim 3 more — gocyclo 43 -> 40
* 877f9f0490d2331864c77a01880d4a26415f551e refactor(katas): trim 3 more — gocyclo 46 -> 43
* a8580c81f4e506d9806b44a704c8524a89be6ffb refactor(katas): trim 4 more — gocyclo 40 -> 36
* 8a6dbc7ceed7b585f7cc7ee955b64c594817b790 refactor(katas): trim 4 more — gocyclo 50 -> 46
* c4c8e55b4631eb7f1f5c61dff4dba96aa734cf1a refactor(katas): trim 4 more — gocyclo 54 -> 50
* 878641c85410f5982e334b9cf9e450a5e3bace1f refactor(katas): trim five more kata Check funcs below the gocyclo floor
* 919e635a5880c1841fca5743756e89c15363626c refactor(katas,lexer): final gocyclo sweep — 100%
* 3ca8f4b500cd17e5a5b297d2a4f3742a45dae734 refactor(lexer): extract simpleBracketTokens map to clear gocyclo
* 702ea16ad3ea162c12c2123074f4375ad020990b refactor(lexer): split NextToken into per-byte helpers — gocyclo 26 -> 25
* 934545eca157b1dbf2250293f8c4513e618d065a refactor(parser): split isCommandDelimiter + parseExpression
* 441bbf0674309b803bdfcd5115fcc5506ed4c6eb refactor(parser): split parseArrayAccess — gocyclo 31 -> 30
* 2d54711b9a72d30aaf53e909f8686c9b0611ce9a refactor(parser): split parseCommandWord; add coverage tests
* 4adb95b4a3343bf961149431bda5e321b5b81cbd refactor(parser): split parseForLoopStatement — gocyclo 27 -> 26
* 3fe090905b2da166d6efdf6e67baad317f1c1f32 refactor(parser): split parseIndexExpression + parseFunctionLiteral
* 391d50c70f2f2a1727f2234761c896f76aa29eaf refactor(parser): split parseInvalidArrayAccessPrefix — gocyclo 30 -> 29
* 248ad080da4dcb4e083834261cd4653cbfb100a7 refactor(parser): split parseStatement — gocyclo 28 -> 27
* c74c921a1502fee72ca226435c10723f9fb78bc9 refactor(parser,lexer): split parseCaseStatement + readStringFlavour
* 30c4be6f44a2811201e309fc6dc697ae079256b6 refactor(parser,lexer): split parseDeclarationStatement + readBackslashEscape
* a323cb10903bea79bf4186592413cf7c775b82d9 style: gofumpt format consolidated kata + test files
* e2f9e6bbc007763e42e084f25a1b348ad41d00da test(ast): cover statementNode/expressionNode marker methods
* a83bcd63627c6dc36b5cd6d2cf7fdf372bbf4442 test(cmd): cover applyFixesUntilStable + collectEdits paths
* 8d956529aad72ddf4af6e2168e0df2f06342b0db test(cmd): cover collectEdits filter and directive paths
* f8eda82b04f09f5854b0c172adf24509e9044893 test(cmd): cover collectEdits parse-error and file-wide directive paths
* 7ae3db16e75fa8a78cd081eea1c57e47c2b12582 test(cmd): cover flagValueType + renderFlag printing
* fb1f9b0d783e857186e91fc9a3f402688d36da90 test(cmd): cover loadConfig multi-path and YAML error branches
* 2e81211ae01c7fad63ba019badea879ffc30c82a test(cmd): cover newPalette environment and writer branches
* 030fcc7e9c6d0ce7ce100fde4931b3d7b6c31ee2 test(cmd): cover palette dim/section/flagName/link wrappers
* d17e9f0fbf9e8fb15a091e49b1661288ca12242a test(cmd): cover palette enabled/disabled branches
* 04823ab71315a109d9bcfdd1e876b13a37482d3c test(cmd): cover printUsage banner-on path
* 0088345df05574090b170d6d177905405a364e32 test(cmd): cover printUsage section rendering
* 03209ce851200d25099e9a2667917f738439044a test(cmd): cover processFile format, fix, and severity branches
* 6884f084e9b7154643a02ad33d72400c1957b83f test(cmd): cover processPath directory walk and skip filters
* 6de106982d753851bd31ef7c4de01de80319d5d2 test(cmd): cover refactored run-flow helpers
* 9a80c731729849c5b55278553a5af08f370f7880 test(cmd): cover run cpuprofile, severity, diff, and fix branches
* 0ee24f37b14c5fc8c45fe4a4046d34a9f30d58fb test(cmd): cover wrap word-break and short-circuit paths
* c27751ed91ce3329c9c4b212cb4cc8c9acf9df22 test(cmd): exercise processFile fix sweep across many kata patterns
* 67287c07a1f6131dacf3d4ad2a9335bc66cdf221 test(fix): cover Apply input validation error branches
* 74feed7eff2391f6db66352183ac4634360b0b45 test(fix): cover Diff no-op, single-edit, and error propagation
* 2b832fe38d1affaf3e381dfe68ea108a3c125486 test(fix): cover Overlap predicate same-line and cross-line
* e7a4a8d7922eee75f4cf2705153f25c3da8a343c test(fix): cover unifiedDiff edits and helper bounds
* eddb3fcb35866daa724f3a713094ceab9cb11322 test(gen-katas-md): cover escapeTitle markdown escaping
* 3175d51d50397b31c5755f3c65a812c9cea12921 test(gen-katas-md): cover idNum edge cases
* 329298700b83631cab85b6ea694d8224fce96a17 test(gen-katas-md): cover idNum happy path
* e2ec0aa184c5f570d9d9798cbd918ea028709b5c test(katas): broaden CheckAndFix corpus sweep
* f1f998f46fe4b10f4a1cc20d59b6eae010d07b6f test(katas): broaden CheckAndFix sweep with realistic AST shapes
* 71d16918038f52cdd075ac81d1ceed92fff00121 test(katas): cover Check guard branches via mismatched node sweep
* d7ec9b7706fc2b3b06be68501b48b1e231851e0a test(katas): cover Fix guard branches via mismatched node sweep
* ae44f1a52295e5f62c1f2d92abbd5bc8e29cc067 test(katas): cover FixesFor unknown, fix-less, and active branches
* 3a7bd30dc05008371fcfc7b96cb82fe4b01e5145 test(katas): cover FlagArgPosition fallback and isIdentByte ranges
* 6d77bd319861803902695a2b8c3baa456e86f2c3 test(katas): cover findSubscriptClose + isUnquotedGlob branches (#1326)
* 3a1476bdb3a91fd70653d0da2365e483130bad8c test(katas): extend Fix guard sweep with rich source fixture
* a5bdc884b02c8692abe66b4d5a8cf5080d4b2439 test(katas): sweep type-guard branches across every Check + Fix (#1323)
* 897888ee0e7d52886a681b48cf10dc2b38bc7e72 test(katas): walk realistic AST corpus through CheckAndFix
* b95c2cebf1ce4d1f020a9b603e53247f52c1ccc8 test(lexer): broaden NextToken coverage with 35 new inputs
* 8c5d8a793935108bf1f66ea7073c7ec2c5e6d3a4 test(lexer): cover backslash, peekAt, and angle bracket variants
* ae50e2e83cb840555f12b4655e45b191fd6c1f46 test(lexer): cover heredoc body and delimiter extraction
* 5e7dffdc578628ee09fa50e6b2e0de36d0f7531e test(parser): broaden branch coverage for refactored helpers
* 34c03a61819b8f379de6bec5bba5b47b13f9a17b test(parser): cover arithmetic ternary and float literals
* 131c3579e79add60a2587aa0c2a559f754ca53c5 test(parser): cover case, anonymous function, and double-bracket forms
* b51b3b08d00f1b1d226abeefb1e7c743010ddd27 test(parser): cover command head expression and pipeline forms
* 6bb1f98f931cd843bb06fede901eec420648658e test(parser): cover consumePipelineTail block-headed pipelines
* 5c05976903d6c0c364b795f1771c784e0f5da2dc test(parser): cover declaration statements typeset/local/declare
* 940846c32a0504823864b63243bde86f8a4be223 test(parser): cover for-loop variants and subshell pipelines
* e4eeffc7419d481e674e2097eb72e5d519fd027a test(parser): cover function literal name forms and loop variants
* 95c922a626d289f096687d885da3ebedca873385 test(parser): cover parseEqualsForm =cmd path
* 406e4cd650cafa98bc3c9f0b3ad1315b54891853 test(parser): cover parseFunctionLiteral keyword and bare forms
* d65f764892125a381920d39fbce5b068cf6c98f9 test(parser): cover parseIndexExpression subscript flags
* 47130bb58fed26c92f83ba3bc888eba4a9aeb07d test(parser): cover parseInvalidArrayAccessPrefix dollar variants
* 94fdb9279d2c62a6c92d283061c73b6cbd397352 test(parser): cover parseKeywordAsCommand return chains
* 84779bcbfa33fc959ed635803315d2e4c7d35e76 test(parser): cover parseRedirection operator variants
* e46e0d4d1c694849fa3ebfbad12a022d2c341516 test(parser): cover redirection-loop and chain-paths (#1325)
* 1bc64c8e3bb40c3acbb63c7f8a1da6be9a3e370c test(parser): drive new arith branches + custom-base int parser
* 4263b2b6f43296de545ffdc1b67bf3aac42c39a6 test(parser, ci): drive coverage toward 95% gold-tier floor (#1320)
* caacb3eb92f2aa9c7c39590acc3dc75f493956d7 test(reporter): cover writer error and severity branches


