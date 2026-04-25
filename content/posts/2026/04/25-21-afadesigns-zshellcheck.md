---
title: ZshellCheck v1
date: 2026-04-25 21:29:21 +00:00
tags:
  - afadesigns
  - GitHub Actions
draft: false
repo: https://github.com/afadesigns/zshellcheck
marketplace: https://github.com/marketplace/actions/zshellcheck-v1
version: v1.0.15
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/afadesigns/zshellcheck** to version **v1.0.15**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/zshellcheck-v1) to find the latest changes.

## Action Summary

ZshellCheck is a static analysis and auto-fix tool designed for Zsh scripts, offering linting and remediation for issues related to `setopts`, hooks, globs, and other Zsh-specific features. It automates error detection, provides SARIF reports for GitHub Code Scanning, and supports inline issue silencing, making it a valuable tool for maintaining clean and reliable Zsh scripts. Additionally, it integrates seamlessly with CI/CD pipelines and popular Zsh frameworks and plugin managers.

## What's Changed

## Changelog
* d8738fb4cb0337206cfe13a50d82d23bae7c9276 ci+docs: ship install.ps1, Linux native packages, Docker image
* 3ac613f1395bb63ccd6cf60d9173a847886c39d9 docs(readme): add Tested integrations matrix
* 623a391a0814628569b85f72713804a447145a83 docs(readme): add auto-fix badge linking to KATAS.md (67/1000)
* 69cd8c4ad36bffe3a2f25d9d4769948c5b3f1a63 docs(readme): defer ShellCheck-vs-ZShellCheck section
* 8a1ee8b2c5535340da8217f0d0753e20f8a3bccd docs(readme): lock Install + Run + integrations layout (preview install-v3)
* 59e8f89f078f3a98ba7482add1661b570e55ae21 docs(readme): lock Install section — quiet, three-channel hero
* 10c04cfd252af589c8955024d04e05c57bb66eb2 docs(readme): paragraph break before pointer line, drop narrator framing
* 38ca43be57d046753853ce809e8182e39a1f9da2 docs(readme): re-render demo with nerd font + tighter dims
* 921b2ad3ed56a403433db90a6ce31e74a38dcd13 docs(readme): rename Tested integrations → Integrations, trim duplicate table
* 28999662f6fe7bafda237f63fa1dab3bc0e3baa8 docs(roadmap): drop Scoop from the distribution-channel list
* 2d6c7ae0cfa3974f1222ffdcda11000637b6c369 docs+ci: semantic line breaks across all docs, defer Homebrew to ROADMAP
* f15cfb42d657173fc494c22bc5eecb3ae5aba136 feat(ci): nightly compat sweep workflow (#1161)
* 1ea9cbaf7fce4dd48f181d9ce7c1fddba397cb46 feat(cli): multi-pass `-fix` runs Apply until source is stable (#1159)
* 2d4731885493fd48cf274997c4a3b6b1d824501f feat(cli): print summary footer for `-fix` over directory trees (#1160)
* df110be684cc34903e9992f3efd800affb58ee1f feat(cli): redesign --help — grouped flags, examples, ANSI colour
* 304a833de242a5d11e268c39cf2bd7ee56d50913 feat(readme): live demo GIF + chafa-rendered CLI banner
* dc87a64beae461ceafea8d156601008e325c9cef feat(reporter): swap caret to upward arrow + trim demo to lint cycle
* ab3f3182ba3c74f9e5f3b9b5e50f3df3d35e25a9 feat(zc1001): add Fix that wraps `$arr[i]` in `${arr[i]}` braces (#1162)
* 1ff8d3f434b0ab5b5b752d09fa85caf98fcc94aa feat(zc1003): add Fix that rewrites `[ x -eq y ]` to `(( x == y ))` (#1158)
* 7155c3ea11cc9aff61ed867b0ef697ec2364bb4e feat(zc1012): add Fix that inserts \`-r\` after \`read\` (#1168)
* 60f913043171f87eadbf0f04adba76e465df5103 feat(zc1017): add Fix that inserts raw flag after print (#1171)
* 3591f4954c510e9d3873a3c1eac537f95265bd61 feat(zc1031): add Fix that rewrites \`#!/bin/zsh\` shebang (#1169)
* cdbe9fa351acb475d184441fa99732fa87f9c84a feat(zc1040): append nullglob qualifier to for-loop globs (#1183)
* 041e1626fbb910d0608f6e73ee0b865fd8e0251a feat(zc1051): add Fix that wraps unquoted rm args in double-quotes (#1172)
* 78ee5b4f903f42b642075be4c94578d9b5e9def9 feat(zc1055): add Fix for empty-string comparisons in brackets (#1170)
* 6b3eac915abed4e7faff70a18c4b2bbf88703e00 feat(zc1061): rewrite seq to brace range expansion (#1177)
* 06ec02d57d27908b5b81c916eddcdb0e38821125 feat(zc1062,zc1063): rewrite egrep/fgrep to grep -E/-F (#1173)
* 9ac1010a2c5cafd585b8583f8d4a58813920174d feat(zc1064): rewrite type to command -v (#1176)
* 56b62092ddde907f2262238b2b6c947d033bb481 feat(zc1073): drop unnecessary dollar prefix inside (( )) (#1175)
* 7cf08f41436005b6a8baee850101104d7b47de6a feat(zc1076): insert -Uz after autoload (#1182)
* bd40a6b8b8ccdf39b1390bd655c70386e83038d6 feat(zc1078): quote $@ / $* when passed as arguments (#1181)
* bffb5ca08deea14d5cb7838fd9e81a23939c3490 feat(zc1079): quote unquoted RHS in bracket equality tests (#1178)
* 7009de67e1f986e7f499beb94f600bd2b5ce8d76 feat(zc1084): single-quote unquoted find globs (#1180)
* 97b37102db2eb418187739782ec7cb88feb920d0 feat(zc1085): quote unquoted expansions in for loop items (#1179)
* 46a2c62c4294f65c990e3ddbfe199d6ba696a369 feat(zc1086): rewrite function keyword form to paren-syntax (#1174)
* 1bcf0c29ea5272f4ce4081d543470c5df3cc57a6 feat(zc1091): rewrite bracket numeric compare to arithmetic (#1184)
* 7f85112172fb176ac281a27dd7ea5147d748ebef feat(zc1118): rewrite echo no-newline form to print -rn (#1186)
* 110e67b9dd4a55094872369de942d35e719d4684 feat(zc1124): replace cat /dev/null with colon builtin for truncation (#1187)
* e0b91dbe6237bd4009cd3881607fd73fbbafe639 feat(zc1126): collapse sort pipe uniq into sort -u (#1185)
* 9f6dca0f07553157102f8b6ee9c09567ef9b597d feat(zc1128): rewrite touch file to empty redirect (#1188)
* faffd74c3ad34a4f775b80ae2ab086214a77511c feat(zc1135): strip env prefix from inline var assignments (#1194)
* 19f2b4cbd6414f91241f494ccda490e4237489ff feat(zc1140): rewrite hash cmd to command -v cmd (#1190)
* cfa35c5d1c5407ba0326a4e511f533e57ed3d121 feat(zc1144): rewrite trap numeric signals to canonical names (#1191)
* df02cc26f61b3edcf8ed3ce8b36ddba677818bcd feat(zc1147): insert -p flag after mkdir for nested paths (#1189)
* 41a5c8c3db290d87ebd7b465ffe1e9e972223460 feat(zc1162): rewrite cp recursive flag to archive mode (#1192)
* 168e790f0a8e152ab3d99a08079521f3dc8d56d2 feat(zc1170): insert -q after pushd / popd (#1195)
* 84349628fbf5055d8fdad48b93cf2ca6079db55b feat(zc1171): rewrite echo escape form to print (#1193)
* ba2532af47cec9bae065d4491906f49957aa3861 feat(zc1192): replace sleep 0 with colon builtin (#1208)
* 12f1b752211415db4260a74e469ceeef05b1bef6 feat(zc1209): insert --no-pager after systemctl (#1196)
* 6b3c38e1b7c6cc3e6cd5c0e378799acb0a8caea8 feat(zc1210): insert --no-pager after journalctl (#1197)
* ba373feb813703cded003a9a6517fd1597992805 feat(zc1213): insert -y after apt-get for unattended installs (#1198)
* 326cf14cbaf0dc9283533b24955cc6133f8c0560 feat(zc1226): insert -T after dmesg for readable timestamps (#1199)
* fd80b112b2fb73bee9dadc16ec50bbf2d131be0c feat(zc1227): insert -f after curl to fail on HTTP errors (#1200)
* 92d1219cda94570eb5c46983ac37a48633185fa2 feat(zc1231): insert --depth 1 after git clone subcommand (#1202)
* d2a3e8309fecae920998a5f2c4aafaf183737182 feat(zc1234): insert --rm after docker run subcommand (#1201)
* 52cdf41ff4082469d27a7347be0186efd5b84454 feat(zc1241): insert null-separator flag after xargs (#1203)
* 453c3f60716a3b5313444de50dd180e82871dd18 feat(zc1253): insert --no-cache after docker build subcommand (#1206)
* 5e348e4e8283629c2a04e5dd8a9c9b2dcbd4bee3 feat(zc1263): rewrite bare apt to apt-get (#1204)
* f96b2d8ab3db05ba3cf5d687f0c18c0e5ad39dec feat(zc1264): rewrite yum to dnf (#1205)
* a4737a3febe25f276330bce5cd877a6cae01aaa7 feat(zc1265): insert --now after systemctl enable (#1211)
* 3c13022b5b0f3ce36fb0073f3482e89ef3125ca2 feat(zc1267): insert -P flag after df for portable output (#1207)
* e494f2741ce41293075ac98ee2bd115631b11b75 feat(zc1283): rewrite set -o OPT to setopt OPT (#1210)
* 4aa76c25cb25b0ece9f21181b03122c4d3e8d4c4 feat(zc1288): rewrite declare to typeset (#1209)
* 7bbdba309f7c07948865c4bd6773402a4069016a feat(zc1298): rename FUNCNAME to funcstack (#1215)
* 7fa0c92a2f54f30fc185d3ed1282b454338f7bf1 feat(zc1300): rename BASH_VERSION / BASH_VERSINFO to ZSH_VERSION (#1219)
* a63d91dfef3167c368c499f35dd191e04ca60502 feat(zc1301): rename Bash PIPESTATUS var to Zsh pipestatus (#1212)
* bfa88f2cad527c0f147c3baf6771c9ed03720efb feat(zc1304): rename BASH_SUBSHELL to ZSH_SUBSHELL (#1214)
* 9918ff36a6c6535bc15d814292faefe0411d8383 feat(zc1305,zc1306,zc1308): rename Bash COMP_* to Zsh completion vars (#1216)
* 4cb3111cf3a03ffe5ee60b20baa800d4c1c866a2 feat(zc1307): rename Bash DIRSTACK var to Zsh dirstack (#1213)
* a5a5069336cf2bb880747e3b51c834d83d7e9a1f feat(zc1313): rename BASH_ALIASES to aliases hash (#1218)
* 9f793072683c974468ab04c46bc3f470239bd2d8 feat(zc1318): rename BASH_CMDS to commands hash (#1217)
* 7ef9ff92019c5e73a7a3658226d2ae96f1d3a777 feat(zc1331): rename BASH_REMATCH to match array (#1220)
* 0fe5167cbfd636b7bd13dae0e552e05d36899558 feat(zc1333): rename TIMEFORMAT to TIMEFMT (#1221)
* 84c610311ca1ea51379d4dcc9311749dd1728363 feat(zc1355): collapse echo -E to print -r (#1223)
* bbd655944881d187d4589eb29d1b3f44727e244e feat(zc1356): uppercase read array flag for Zsh semantics (#1222)
* 96763d42653e0f8e3a74a5d6716b87c119629250 feat: DOT as expression prefix for literal words (#1081)
* 7aed8e996671e6a165895e7e6c37182b886d0e36 feat: PERCENT as expression prefix for prompt-escape words (#1083)
* 364295687cdee3479da36e4fcca5f0f355b492db feat: SLASH as expression prefix for path literals (#1094)
* 9cbdc9c65a9ed4582f215300c9e88ae04e3ab448 feat: ZC1004 Fix — exit to return (with arg-less detection) (#1067)
* 794e4e5874b42aee0049028f13e7c3bfc2565cbf feat: ZC1010 Fix — [ ... ] to [[ ... ]] (#1069)
* 8ed8b4be44b9272ab97e6f00b97bcb508e6ca794 feat: ZC1013 Fix — let NAME=EXPR to (( NAME = EXPR )) (#1068)
* 94bf3371db9b2e740592b6d14f3ef654067f7e6c feat: accept parameter-expansion modifiers as opaque (#1060)
* 98c2ead0b2d3abdd4d33a09eca94c68fa127c285 feat: add project logo banner to README (#1230)
* ad818b9edb86575a9cb0716d16a56fd8a1b81330 feat: array slice index arr[a,b] (#1093)
* 8b73c9cc998c8fc3ef6ea92862dc008837f42d64 feat: array subscript flags (R) (r) (I) (ri) (#1061)
* 213c0bddb712b1da902e4a00be1b1eaf698daa79 feat: brace expansion inside declaration names (#1079)
* f6d5a86fdb681e9c07373a5cf0e5a2f5fcc6cc06 feat: composite declaration name shapes (#1084)
* 3eebf13ceef0aae0a113fa3c988e5df6f9290529 feat: composite function names (#1086)
* e50b598d83fbc5ac3b76e06d7b00fac92f70a914 feat: for NAME ( items ) body short form (#1073)
* 85cbcd002f54c9495511e00b3cd7dcad313350df feat: let with local / modifier identifier (#1091)
* e838a8e83400ad5796ca07808f14f007385ed1d2 feat: lex ANSI-C and gettext dollar-quoted strings as STRING (#1065)
* c4c19496336e4d1628140149bea6354ef6b2a0a3 feat: lex backslash-escaped metacharacters as IDENT (#1077)
* f7f0c33cef950d3bed300317730d691f34c7ce45 feat: lex backslash-newline as line continuation (#1066)
* a76737c40cff3858ae1add0d29e076bd4681ebd3 feat: lex force-clobber redirections (>| and >!) (#1092)
* e0b2061d7dab5be56339fa1bd1dbf05fe9761541 feat: multi-name function definition (#1090)
* 1849ad4026f14087a4b03d3622a48231a14553e6 feat: register PLUSEQ as infix for bare var+=value (#1064)
* f009c1d1403418c0eb9d47593c0b2eb1a5135b00 feat: special params (dollar ? @ $ _) and length-of operator (#1062)
* 7c34144e221ab98fa75531bfd40b64e35e912e52 feat: widen backslash-escape metacharacter set (#1078)
* 317a283f6e81909b735325aaf25c4316e36f52ff fix(ast): nil-guard every Node.String() that embeds a child (#1236)
* 0e7e7580bed47c184449abcb9af6396f3ab0577b fix(ast): reject typed-nil Node in Walk to stop downstream panics (#1238)
* 2c1d7ad47ade45a26ac3a46a6fa0fefbace65bb4 fix(demo): pixel-perfect render via -no-banner flag + solid-block art
* f44b506c29fd66696f187a841161a45062929e33 fix(demo): sharper banner, hidden clears, 4-warning sample
* 7abefcf76cf5ce681e3c44a94903aa4fa6dd9168 fix(lexer): accept `\"` and `\'` in the backslash-word escape list (#1115)
* 5fd431ec9550dd4be4edc8cc5c174fd21d2207f3 fix(lexer): accept `\<letter>` escapes for regex / glob patterns (#1148)
* 7a0708fe7435ba9448c88a6bdfbbc93d2d5be3fb fix(lexer): accept `\=` in the backslash-word escape list (#1131)
* 67346787a4db6ab817bc350584244faa270842bb fix(lexer): broaden backslash-word escape list (% , : @ + -) (#1132)
* 715c0d5a9a8a6d26d6ae53ab4a5fd60d8db12fc1 fix(lexer): consume heredoc body opaquely after `<<` (#1113)
* 14cb5c59e5c066ac281a00e9750f54212678a7ce fix(lexer): don't fuse `((` right after `$(` so `$(((expr)))` parses (#1123)
* f318378ed8369c9863f1b3eec4e080c40e3fb1b1 fix(lexer): fuse `&|`/`&!` disown shortcuts and `>=`/`<=` arithmetic comparisons (#1098)
* 5f2e22b84023342ef8dd66846a60bc65290c1667 fix(lexer): fuse compound-assign ops (`%=`, `*=`, `-=`) with PLUSEQ (#1105)
* dba85f8b8d9daab36fc95da7aac39be6948058c2 fix(lexer): stamp VARIABLE token line at start, not after readIdentifier (#1146)
* 352583c97ea1e33a0334742298a3432bc444ade8 fix(lexer): track paren stack to disambiguate `))` fusion (#1095)
* 6210e61a60b25f8dbc1eb3a102009bc5826584d8 fix(lexer): treat non-ASCII bytes as identifier characters (#1154)
* 0d75a78cc5efa7e91b9d1c48c06a05e1e99f841f fix(lexer/parser): glob alternation + POSIX classes inside `[[ … ]]` (#1099)
* e02e7a0577971cfdb963578326c0a68fe314e803 fix(lexer/parser): track EndLine for multi-line strings + use in same-line check (#1138)
* 6fbfcbe564f62824ca8acc15c8cd9d18a827fee7 fix(lexer/parser): treat `\<NL>` as logical-line continuation (#1096)
* 3b6e67dd07997d39b72f1fcf1e42ee20e43b8e2d fix(parser): VARIABLE / ${…} expressions can head a pipeline (#1112)
* 9d1184b81fb6f9292f5527775d9a453b87ff22bd fix(parser): `${#arr[*]}` subscript close + bare `return;` in blocks (#1120)
* 27d98921306c32472084eebba44cba43f6b17f4b fix(parser): `for x in items <NL> body` shortest body form (#1149)
* 47b2527984d0f3cbf5fe074a4aef82278ec1cc92 fix(parser): absorb `.<digits>` after INT inside arithmetic for float literals (#1141)
* 97afbf3a0fa969884b078e373b8d557f7d20f2a4 fix(parser): accept INT as for-loop variable name in implicit-list form (#1167)
* 0ce8247908f74eab9eedfd1b5bf98f80a1026a49 fix(parser): accept Zsh multi-variable `for` loop (`for k v in …`) (#1102)
* bf3f7c9ad23512f698e6c18331350b68c430dd02 fix(parser): accept `(…)`, `[[ … ]]`, `((…))` as pipeline RHS (#1114)
* 20a28cc063869fd5f7d5c868c85ca1e5d9ac6962 fix(parser): accept `for x in items; { body }` brace-body form (#1117)
* 3973bf85ae4e27dcaf292c3158d5c3140666d394 fix(parser): accept `function ${=X} { … }` parameter-expansion as func name (#1144)
* 9b9b304f5e673ab159aefffe1042ef15e561fdbb fix(parser): accept numeric positional names in `for` loop bindings (#1127)
* 8b15c44a8f7c77cf6f1e59e0a0627e219e15c013 fix(parser): add DSEMI to parseExpression early-return (#1128)
* d7a72911b92e221b8138768c2bfcb74ede8c3b5d fix(parser): advance past inner \`)\` on glob-alt case labels (#1166)
* 746f26362cc9b46a86749f780ff38606d0a37119 fix(parser): advance past inner `esac` so nested case statements don't collapse (#1107)
* b8f75b2fccb7d2a583497676e4d9394d1db34504 fix(parser): allow `==` pre-flag inside `${==name}` parameter expansion (#1152)
* 6583e4569fae039b366ca1e0487adcc7f88f79f6 fix(parser): arithmetic concatenated identifier with glued VARIABLE (#1150)
* 0ac5bba05165bfe68d33d8df8d2893c60f93d0fd fix(parser): backtick command substitution drains extra statements (#1145)
* 40f31e3ac9428ab95ad16e6701ed57f8388e37c5 fix(parser): bracket-cond glob alts + inner `$()` RPAREN containment (#1164)
* 9958801dd8ad9944d273fdcfa2a74fcb9aecc4ad fix(parser): case patterns starting with `(` glob alternation parse correctly (#1140)
* a08e3582a3cb607f6f6adafec6526d0c026d2c19 fix(parser): command substitution `$(a;b)` drains extra statements to its close (#1125)
* badfd7328f96c89d0e6a819e9f79a8b530e37f02 fix(parser): consume `$[expr]` deprecated arithmetic form (#1143)
* c8c2c94260849ff4c722f0e25dd7058c2c6a9906 fix(parser): consume pipeline tail after a `{ … }` brace group (#1106)
* 17d51cfde7d6c67cd35f00007c539c92b5c577b9 fix(parser): consume pipeline tail after block statements (if/for/while/case) (#1119)
* eb13534f1998f30fd675cc4c07bef3adf5a46ea1 fix(parser): consume subscript tails opaquely for multi-token keys (#1103)
* 50420fb6eac68fbb50d7dfcf2c1aeaaa4046e713 fix(parser): don't treat `[` after a pattern-substitution head as subscript (#1110)
* dd77c12e3281021184113071eb094516eef5f6f5 fix(parser): drain newline-separated statements inside \$(…) (#1165)
* d95b2e67d5eb735e70960b96950ffee31f8e5860 fix(parser): drain pipeline tail after expression-statement (`IDENT= cmd | other`) (#1133)
* 67ba6ae761a6e36d238f4ea18b29745c9dcc2541 fix(parser): drain subscript opaquely in `$+name[expr]` arithmetic checks (#1126)
* 286a67e9b69f2e48ba119372c89eb4dbf86db0dd fix(parser): empty RHS in `${X=}` no longer overshoots the closing brace (#1130)
* 4f3e1341dfb8b9b85bf3c312296218f43ffeb9ce fix(parser): empty-RHS assignment doesn't consume next-statement keyword (#1147)
* 168127139429360cd69ef4bc08ae98a459cd793f fix(parser): glued `/` outside arithmetic is a path separator, not division (#1118)
* 220b17e0a3821158ab09f39af305b5862351ce44 fix(parser): keep mid-word `{…}` refspecs inside a single command argument (#1111)
* 7c5099861e9be42b74925cc25a1850bbcfc75bc3 fix(parser): keyword-headed compound commands inside `$(…)` and pipelines (#1139)
* 693825e5cf0116ba7c05688768c4ab16702de766 fix(parser): parse `${name}` subject narrowly so modifier tail handles patterns (#1135)
* e55d0a106bad03b224d13fdf8b21291fdad720ad fix(parser): parseDeclarationValue stops on the array `)`, not past it (#1134)
* 71ccd28b54c6e65c9367c69d78e25bef843bdad4 fix(parser): pipeline heads starting with backtick/$() + glob subscripts (#1100)
* 07d48306ee0c16a2d2bd2bdcc9e35f73e78195c1 fix(parser): process substitution accepts multi-statement body (#1124)
* b348683536c6e06a2e294f987f92792ca864309a fix(parser): register COLON as prefix for literal `:` values (#1153)
* 512d151f9d9afe5252a8e05b944034b426e9c9c7 fix(parser): register COMMA as prefix for brace-expansion bodies (#1155)
* ead15f9f79987ace04380e24925621271f2c9f67 fix(parser): register RBRACKET as prefix for literal `]` arguments (#1151)
* 3aa9db03c1e6ed3be9b4f7d46cd22502c7d15078 fix(parser): register `++` (INC) as prefix for pre-increment in arithmetic (#1122)
* fb1a06436a69a631ff8ecb14bbb481d6f500e47c fix(parser): route shell `!` negation through the pipeline parser (#1116)
* d952c5607409a6259c76bb4a9e0280b6cb9ddb7b fix(parser): stop infix loop when curToken lands on `]]` (#1104)
* 147de943c32064e74fff66dd4b00089a0303809d fix(parser): stop parseBlockStatement from stepping past the terminator (#1097)
* 2b08274636ee9ec0ce8a55738e8f4a2d7274a67b fix(parser): subshell `(for …)`, `(if …)` bodies in command arguments (#1121)
* 0e703baa4268efe30bd7bc3356af627e0943346b fix(parser): support Zsh anonymous-function form `() { body }` (#1157)
* d8ae789cafd6a2c06a309f94b65a598e931adf38 fix(parser): support `if cond { body } [else { body }]` brace short form (#1156)
* 422d5ad042df61138d601f014a3c5524d77e25c4 fix(parser): support arithmetic ternary `cond ? a : b` operator (#1142)
* 217bea32e7316eacacac0618f78873c0e7643030 fix(parser): treat `$(cmd)` / `` `cmd` `` / `$VAR` heads as expression in parseSingleCommand (#1129)
* 849a7ed9ab2426773417bae49296412654d2cd98 fix(parser): treat `*`/`?`/`-`/`!` as literal subject in `${…}` (#1136)
* f4118995333264bf0da54bb236f7dee493781b7c fix(parser): treat bare `$` before `]` / `]]` as literal dollar (#1109)
* a67e67e4f39ada662f83e96d4fcc5608dd385014 fix(parser): treat reserved-word tokens as literals in command-arg context (#1137)
* 1d6601f38fed713adc8fb796a8f136947bb41020 fix(parser): treat tokens without a prefix inside `[[ … ]]` as literals (#1108)
* 3c76e2a59a388cc2a03b62cb82a33fc9731170df fix(parser/lexer): `%` modulo infix + backslash-whitespace/# escapes (#1101)
* f0bfecbbd5b75f3e70f00b0d6a158a4aa2b1c3ce fix(release): goreleaser builds the cmd/zshellcheck package, not just main.go
* 79660a4bed224a32c5c3eded64371c7bbecb5907 fix(zc1043): guard nil assign.Right in local-hint message (#1231)
* b314d303df8cbb923ca594083304e9830e3d797c fix(zc1068): guard nil Name on anonymous function definitions (#1227)
* cc1d5aed7bb96a6d1df12f668dcb2e6bb138d3d3 fix(zc1070): guard nil Name / Body / cmd.Name during body walk (#1228)
* 67859d5649afd0e5a534cd40d96c5c8219effd64 fix: RDBRACKET terminates expression cleanly (#1082)
* ad9d6e041d5bba392dd1315a428d0bb583cf9045 fix: bare dollar at statement boundary parses as identifier (#1074)
* 5d4134f597418bd1dae26c2a194ac8b76c3a5825 fix: block-structure keywords terminate an expression cleanly (#1089)
* b9537f55d461f0b853b28ac3dbb788b969a22a1f fix: brace param expansion pre-flags = ~ ^ (#1059)
* bab29fc2b81650974819afc8ab2da5bdea9ced2a fix: brace param expansion with empty subject + modifier (#1072)
* 49ae4800f8caf9610fbeb96dab3314b7a5c3f902 fix: declarations no longer swallow next-line statement (#1058)
* 9a2ccec86437468b3ec0066c4dff4463fbd087f0 fix: declarations with empty RHS at end of line (#1063)
* 18029cda86218bcdae30929ff8180f4acc56f55c fix: double-bracket logical chain short-circuits (#1070)
* ad9ddefa404c0bd4d964513e057f73d0b579bc7d fix: for (items); do ... done short-form with explicit body (#1087)
* 6573cdb064a0b291adf6c548d57196556b56a7bc fix: guard typed-nil *ast.Identifier in 32 katas (#1234)
* 4dde3e875344f4a810e89134fcb41966445c5d4b fix: logical connectors terminate expression inside [[ ]] (#1085)
* 077c7a543bd83cfdd55b4faeb70810e5fdc41c5a fix: only fuse ]] when a [[ is open (#1075)
* ff53a00729dc1c988d16f01cd060da83f4508839 fix: plain single quotes do not honour backslash escapes (#1080)
* b81cf38b64a4714eaf6b4017c1cc7b5589e7d34b fix: register return as prefix for logical-chain RHS (#1071)
* d575156f52dcda8801b342cd1e30d39dec3846c0 fix: route zero-arg commands with pipe chain to simple-command path (#1076)
* 3a98da93d9ac7a339c35b0209388ea09edea4a1f fix: treat = as literal word in command arguments (#1088)
* d7a70596c4e21eaa084f7e60315b91e97bc8855f refactor: route `cmd --flag arg` through simple-command path (#1163)
* be4f91ed5b56553e4365971bff3041764d33f737 release: prepare v1.0.15 — # noka directive, version bump, doc audit


