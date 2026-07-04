---
title: skill-switch audit
date: 2026-07-04 21:52:23 +00:00
tags:
  - rtwsvj
  - GitHub Actions
draft: false
repo: https://github.com/rtwsvj/skill-switch
marketplace: https://github.com/marketplace/actions/skill-switch-audit
version: v0.9.0
dependentsNumber: "0"
actionType: Composite
---


Version updated for **https://github.com/rtwsvj/skill-switch** to version **v0.9.0**.

- This action is used across all versions by **0** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/skill-switch-audit) to find the latest changes.

## What's Changed

## 安装 / Install

**macOS(Apple Silicon)桌面 App**:下载下方 `skill-switch_0.9.0_aarch64.dmg`(29M,Developer ID 签名 + Apple 公证),拖进「应用程序」即可。

- SHA-256: `d415f3b1346de71c57b1e537e3da961c9cc9d19d375f743af7bc15e1adc7c0fd`

**CLI**:`npx @rtwsvj/skill-switch audit`

---

## [0.9.0] - 2026-07-01

> 自 v0.6.0(npm 上最后一个已发布版本)以来累积的所有内容一次发布:含原 0.7 / 0.8 批次 + 第三波(RE2/shadcn/bun)+ 第四波「集众家之所长」+ SkillsMP 源 + GUI 各屏 shadcn 迁移。
>
> 本轮:11 路并行的「开源对标」实现(见 [docs/oss-comparison.md](docs/oss-comparison.md))。第二波再上 5 项获批新依赖(下方「质量&GUI 增强」)。第三波全部落地:RE2 线性正则引擎、GUI shadcn 重设计基建、bun compile 并列打包路径。第四波「集众家之所长」(见 [docs/best-of-breed-plan.md](docs/best-of-breed-plan.md)):安全深度(二进制魔数伪装 / taint 数据流 / 跨-skill 协同 / OWASP Agentic+ATLAS 映射)+ apm.yml 互操作 + GUI Markdown 渲染 + registry 注册表只读接入(见 [docs/registry-integration-plan.md](docs/registry-integration-plan.md));全部自研重写、零复制竞品代码。

### 新增 Added
- **二进制魔数伪装检测(第四波·安全深度)**:`masquerade/binary-magic-bytes`(critical)+ `masquerade/binary-lossy-head`(high)——识别声明为文本却以 PE/ELF/Mach-O/PDF/ZIP/JAR/gzip/7z/RAR/Wasm 等可执行/归档魔数开头的伪装文件;只看文件起始,正文提及魔数名不误报。魔数表从公开格式规范自写。
- **taint 数据流多步攻击链(第四波·安全深度)**:`exfiltration/taint-source-to-sink`(high)——单文件内识别"读敏感源(环境变量/凭据文件/历史/浏览器·钱包数据)→ 近距离外发(curl 上传/nc//dev/tcp/外渗端点/base64 管道/scp 等)"的跨行数据外渗链;仅命令上下文计数,散文零误报。
- **跨-skill 协同攻击检测(第四波·安全深度)**:`analyzeCrossSkillCollusion`——识别多个 skill 经共享 dropzone 路径 / 共享外部端点(high)或全局配置蔓延(medium)联合构成的凭据外泄与提权链;需具体共享线索、能力横跨两个 skill 才报,重精确低误报;接入 audit home 全格式输出与退出码,补齐已有跨-MCP-server 检测。
- **OWASP Agentic Top10 + MITRE ATLAS 映射(第四波·安全深度)**:规则类目新增 MITRE ATLAS 技法(`atlas:AML.Txxxx`)与 OWASP Agentic Top10(`owasp-agentic:Txx`)标签,additive 并入 SARIF rule properties.tags,与既有 OWASP LLM 标签并存;不影响 severity 或阻断逻辑。
- **`apm-import <apm.yml>` — 与 microsoft/apm 互操作(第四波,只读)**:默认 dry-run 预览将纳管的 skill,`--apply` 才写入声明;只挑 skill 类原语映射到 skill-switch 治理模型,明确跳过 prompts/agents/hooks 等非 skill 原语。绝不执行 apm.yml 中的命令/脚本、绝不联网,纯本地文件解析。定位:互操作而非硬刚,做 APM 生态里"最强安全+治理"那一环。
- **GUI 技能描述 Markdown 安全渲染(第四波)**:技能详情的描述用 `react-markdown` + `rehype-sanitize`(默认 schema、禁 raw HTML、外链 `noopener`)渲染为富文本,杜绝描述内 XSS/钓鱼链接;样式走设计系统 token、明暗自适应。
- **`registry` 命令 — 注册表只读接入(第四波·C 线)**:从官方 **MCP Registry**(`registry.modelcontextprotocol.io`)、GitHub `marketplace.json` 市场、**SkillsMP**(可选)**只读搜索**(`registry search`)并**经安全审计后安装**(`registry install`)skill / MCP server。纯 opt-in(仅运行该命令才联网)、仅 HTTPS、零遥测(`credentials:'omit'`、不带指纹)、零新依赖(Node 内置 fetch)、限时限大小;安装复用既有「解析→克隆→审计→拦截」管线,DANGER 默认拦截需 `--force` 留痕放行,绝不执行远端内容。SkillsMP 是唯一需鉴权的源:严格 opt-in + 用户自带 `SKILLSMP_TOKEN` 环境变量,token 只发往 skillsmp.com、只进请求头(不进 URL/日志)、skill-switch 绝不存储;未设 token 则该源自动跳过。不抓无公开 API 的聚合站 HTML。

### 变更 Changed
- **GUI 各屏迁移到 shadcn 设计系统**:继 W4 基建后,「安全」(审计 + 配置安全)、「历史/撤销」、「使用」统计、「安装维护 + 一键装」各屏全部从手写 CSS 迁到 shadcn(Card/Table/Badge/Button/Input + 设计 token),卡片化、语义色 Badge(good/warn/danger)、明暗主题自适应,与总览统一;数据流 / props / 安全文案 / 无障碍语义(toast a11y)一律不变,四语言 i18n 齐全。
- **测试稳定性**:全局 `testTimeout` 提到 30s——大量 CLI 集成测试每例 spawn tsx 冷启动子进程,满负载并发下曾偶发 5s 超时误红(隔离重跑皆过);w3-re2 病态输入墙钟预算 50ms→500ms(吸收 GC/JIT 抖动,真 ReDoS 秒级仍判失败)。
- **审计引擎 → RE2 线性正则(第三波)**:`compileMatcher` 用 RE2(线性时间、无回溯)匹配审计规则,从根上消除 ReDoS;`prompt-injection/zero-width-chars` 去 lookbehind/lookahead、`base64-payload` rm-rf 去 lookahead(均附 `test()` 语义等价证明,findings 不变);4 条 `{0,2048}` 超量词规则回退原生 RegExp + 行截断保护;编译结果 WeakMap 缓存。corpus/评分/verdict 行为零改变。
- **GUI 重设计基建(第三波)**:引入 `shadcn/ui + Tailwind` 设计系统(Button/Card/Badge/Tabs/Dialog/Input/Select/Tooltip/Skeleton/Table)+ 明暗主题(跟随系统、localStorage 持久化、Header 一键切换)+ Overview 卡片化(指标卡 + lucide 图标 + 骨架占位);CSS 变量走 shadcn 标准 token + 语义色 `--good/--warn/--danger`;为后续各屏迁移提供设计系统契约。四语言 i18n 100%(新增主题切换/对话框关闭文案)。
- **bun compile 并列打包路径(第三波,实验性)**:新增 `gui/scripts/bundle-cli-bun.mjs`(`pnpm bundle:cli:bun`),用 `bun build --compile` 产出单文件 CLI(产物命名/路径与现有 SEA 路径一致),wrapper 入口绕过 `node:sea` 禁区;实测冷启动 ~71ms vs tsx ~765ms(约 10x)。bun 为 devDependency(不随应用发),测试用 `it.skipIf(!bunAvailable)` 守卫(无 bun 环境不红);现有 `bundle:cli`(SEA)/`src/**`/Tauri sidecar 完全保留。
- **质量门禁(第二波)**:`recheck` ReDoS 静态守卫——遍历全部审计规则正则,写规则时即拦下会回溯灾难的 evil 正则(测试门禁,无需 eslint);`stryker` 变异测试配置(`pnpm mutate`,收敛到 audit engine/score,衡量测试有效性);`i18next-cli` GUI 漏译检测进 CI(`pnpm --dir gui i18n:check`,漏译即失败,当前四语言 100%)。
- **GUI 数据层 → TanStack Query(第二波)**:App 手写的 sections 加载状态机替换为 `@tanstack/react-query`(`staleTime` 5min / `retry` 1 / 不随窗口聚焦重取,贴合 Tauri 本地 IPC);写操作后精细 `invalidateQueries`(toggle/remove/install/sync 后不重跑 stats),取代全量刷新;DashboardShell 对外接口不变。
- **GUI 自动更新(第二波)**:接入 `tauri-plugin-updater` + `tauri-plugin-process`,`UpdateChecker` 横幅组件(有更新提示版本+一键更新+重启,非 Tauri 运行时优雅 no-op),四语言 `update.*` 文案;更新源指向 GitHub Releases 的 `latest.json`,发布前需 `tauri signer generate` 填真实 pubkey(已占位+注释)。
- **审计引擎/SARIF 增强**:SARIF result 加 `partialFingerprints`(GitHub code-scanning 跨 run 去重)+ `suppression.status="accepted"` + rule `helpUri`;Unicode 同形字表 18 → **140+**(Cyrillic 全集 / 希腊 / 全角 / Latin lookalike);Markdown 围栏代码块内的 finding 加 `inCodeBlock` 标注(additive,不改 severity);SARIF rule 加 OWASP LLM Top10 标签。
- **审计输出 & CI 适配**:`audit --format codeclimate`(GitLab Code Quality)、`--format rdjson`(reviewdog PR 内联)、`--diff-from <commit>`(只报 PR 改动文件的 finding)、`.skill-switch-ignore`(.gitignore 风格忽略);`ci --format codeclimate|rdjson` 生成对应工作流。
- **MCP/配置安全**:`mcp/tool-name-collision` 跨文件同名 server 影子化检测(2025 高危向量);密钥检测加 Shannon 熵 + 示例白名单降误报;Claude Desktop(`~/Library/Application Support/Claude/…` 等)路径纳入深扫。
- **供应链 & 漂移**:`drift --osv`(opt-in,POST OSV.dev querybatch 查 skill 依赖的已知 CVE,默认关、仅 flag 时联网)、审批 `--criteria safe-to-run|safe-to-deploy` 分级、`drift --upstream-summary`(本地 git log 拼上游新增 commit 摘要)。
- **套餐 & 用法挖掘**:共现分析加 `lift`/`confidence` 关联规则指标(过滤"高频 skill 与谁都共现"的假关联);transcript adapter 架构 + 内置 **Codex CLI** 解析器(`~/.codex/sessions/`);内置套餐改 readdir 自动发现。
- **MCP server 深化**:协议升级 `2025-06-18`;5 个只读工具加 `readOnlyHint` 注解(客户端可免确认弹窗);实现 `resources`(规则知识库 / 最近审计报告)、`prompts`(3 条审计模板)、audit 工具 `outputSchema`;新增 `server.json` + `package.json` `mcpName`(MCP Registry 上架)。
- **`completion` 命令 + CLI 分发**:`skill-switch completion [bash|zsh|fish]` 输出 shell 自动补全;`--help` 用 Commander 原生 helpGroup 分组;新增 `release.yml`(tauri-action 跨平台构建 DMG/AppImage/deb/MSI)+ Homebrew Formula + Scoop manifest + [docs/distribution.md](docs/distribution.md)。
- **GUI 无障碍加固**:撤销 toast 升为有名 landmark + 关闭后焦点恢复;技能列表行 `aria-current` + 键盘 Enter/Space 选中;写操作按钮带技能名 `aria-label`。
- **质量门禁**:CI 加 coverage 阈值门禁(保守下限,防倒退);audit/doctor/add 的 golden snapshot 扩面;零依赖安全自检(查自身 shell 注入/path traversal 等)。
- **文档**:[docs/oss-comparison.md](docs/oss-comparison.md)(11 领域 × 开源对标的产品路线图,带来源 URL);[docs/auditing-ai-agent-skills.md](docs/auditing-ai-agent-skills.md) 加「静态装前审计 ≠ 运行时防护」诚实定位节(指向 garak/mcp-scan 等互补工具)。
- **GUI i18n 修复**:数据层超时/取消/JSON 错误改结构化 `LocalizedCommandError`(英文兜底 + UI 按语言渲染),窗口标题 `skill-switch Governance` → `skill-switch`,英文/日/西模式不再泄漏中文。
- **`sync --out <file>` / `sync --plan <file>` — plan artifact 持久化(对标 Terraform plan -out)**:`sync --out <file>` 把 planSync 结果 + 声明文件 sha256 摘要 + 时间戳序列化写盘;`sync --plan <file>` 读回后先校验声明 sha256 未变(变了则拒绝并提示重 plan),校验通过再执行——保证"看到的 plan"和"实际执行的 plan"完全一致。现有 `sync` / `sync --dry-run` 行为零改变。
- **`doctor --fix` — 漂移自修复(对标 chezmoi apply)**:doctor 已产结构化 finding,`--fix` 按 kind 映射:`content-drift` → 从声明 source 重铺(copy/symlink);`extra-locked` → removeLockEntries 清孤儿锁条目;`missing`/`stale-lock` → 提示手动跑 sync/install。写操作前自动先快照受影响的 agent 目录。无 `--fix` 时只报告,行为不变。
- **`restore prune` — 快照生命周期清理(对标 Nix expire-generations)**:`restore prune --keep-last <N>` 保留最近 N 个快照删除其余;`--older-than <Nd>` 删除 N 天前的快照;两者可组合;`--dry-run` 只列将删不执行。基于 listSnapshots 的 epochMs 排序,.tar.gz 与 .json sidecar 一并删除。
- **`import --apply` — 一条命令 bootstrap(对标 chezmoi init --apply)**:import 后追加 `--apply` 即直接执行 applySync,快照 + 同步一气呵成;无 `--apply` 时行为不变,仍只写声明/锁文件并提示手动 sync。


