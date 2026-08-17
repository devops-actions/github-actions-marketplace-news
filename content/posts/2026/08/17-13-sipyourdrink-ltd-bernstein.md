---
title: Bernstein — Multi-Agent Orchestration
date: 2026-08-17 13:45:11 +00:00
tags:
  - sipyourdrink-ltd
  - GitHub Actions
draft: false
repo: https://github.com/sipyourdrink-ltd/bernstein
marketplace: https://github.com/marketplace/actions/bernstein-multi-agent-orchestration
version: v3.16.0
dependentsNumber: "5"
actionType: Composite
actionSummary: |
  Bernstein is an open-source tool designed to orchestrate deterministic multi-agent CLI operations. It automates the execution of various AI language models like Claude Code, Codex, and Gemini CLI in parallel, ensuring consistent and predictable results by gating output and recording detailed logs. The action supports a wide range of models and provides clear documentation and support for integration into development workflows.
---


Version updated for **https://github.com/sipyourdrink-ltd/bernstein** to version **v3.16.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/bernstein-multi-agent-orchestration) to find the latest changes.

## Action Summary

Bernstein is an open-source tool designed to orchestrate deterministic multi-agent CLI operations. It automates the execution of various AI language models like Claude Code, Codex, and Gemini CLI in parallel, ensuring consistent and predictable results by gating output and recording detailed logs. The action supports a wide range of models and provides clear documentation and support for integration into development workflows.

## What's Changed

Someone pulled the plug mid-write. The journal ended on half a line, and the task
that owned it was gone. That used to be the end of the story. Here it is a repair.

## Replay stopped losing the ending

- A crash-torn journal tail is repaired and the suspended task resumes. (#3955, @Louis20060723)
- Journal consistency and sealed identity are separate verdicts, so a clean prefix stops passing for a whole journal. (#3908, @Silentpartnercoding)
- `event_count` counts usable events through the sealed prefix instead of trusting the file. (#4025, @sujeito-operator)
- A journal line that is not valid UTF-8 is discarded, not raised. (#4008, @sujeito-operator)
- `replay --as-json` emits JSON on every exit path, including the ones that fail. (#4017, @Chirag6722; #3991)

## Proof instead of assurance

- A result bundle verifies offline against DSSE. No network, no registry, nobody to ask. (#3903, @Nickgonzales76017)
- `allowed_files` is enforced at the merge acceptance gate, not merely declared. (#4002, @Aeirx)
- A merge whose incoming change cannot be verified is refused rather than waved through. (#4022)
- The credential `token_type` allowlist derives from its own Literal and cannot drift from it. (#4030, @Aeirx)

## Volunteer workers

Bernstein opted into its own volunteer program, which is either good engineering or
a conflict of interest. The project manifest is content-addressed, the sandbox
profile is derived rather than declared, and `bernstein volunteer verify` says
which. (#3907, #3909, #3912, #3916, #3920)

## Boundaries

- Sixteen hand-rolled path checks became one containment helper. (#3855, #3857, #3858, @vaibhav8a)
- Card matches are Luhn-validated before redaction: real numbers go, coincidences stay readable. (#3818, @vaibhav8a)
- Budget forecasts are scoped to the caller's tenant. (#3850, @vaibhav8a)
- Upgrade proposals are gated on the proposer's measured history. Confidence is not history. (#3840, #3843, @Nickgonzales76017)

## The CI said it was fine

It was not. A gate that always succeeded, a mutation lane that could not fail, a
workflow whose header described another workflow. Now they say what they do.

- Silently-inert gates and misleading green, across the workflow surface. (#3945, #3960)
- Workflow headers and names match behaviour. (#3956, @ThinkerDesigns)
- Merges land through a queue, and release bumps go through it too. (#3964)

## Also

- READMEs in Hindi and Bengali. (#3992)
- First-run paths for `evolve` and `listen` are fenced. (#3848, @jvsilva12600009)
- A dashboard vocabulary reference. (#3790, @atirna)
- The TUI renders a toast again, and its task list stops lying about stale rows. (#3938; #3932, @ShlokShar)

## Upgrading

Upgrade in place. `JournalVerifyResult` reports chain consistency, reader coverage
and sealed identity as three verdicts instead of one `ok` bit; anything reading the
old bit needs updating.

## Contributors

@Chirag6722 · @sujeito-operator · @vaibhav8a · @Louis20060723 ·
@Nickgonzales76017 · @Aeirx · @ThinkerDesigns · @Silentpartnercoding ·
@ShlokShar · @atirna · @jvsilva12600009 — and Renovate and Dependabot,
who never sleep.

## Soundtrack

Two footwork takes on the same lyric sheet.

- [v3.16.0 — take one](https://suno.com/s/07IQxBXsmYBRosMC)
- [v3.16.0 — take two](https://suno.com/s/g3xWwVpKDF3J5gRZ)

<details>
<summary>Lyrics</summary>

```
[Intro — dry vocal, chopped]
Version three... one... six
Tag it — tag it — tag it
(queue empty, main green)

[Drop — chop loop]
Drain the queue, drain the queue
Merge — merge — merge —
Green on main, green on main
Fake green? Found it. Gated.

[Break — replay]
Torn tail? Stitched.
Crash mid-write? Resume.
Replay it byte for byte
Same hash — same hash — every time

[Drop — receipts]
Show me the receipt (-ceipt -ceipt -ceipt)
Verify it offline
No trust, just proof
No trust — just proof

[Break — volunteer]
Lend your worker to the cause
Sandbox locked, scope declared
Zero creds, clean room
We run our own program

[Bridge — tenant]
Your data — your lane
Tenant-scoped, stay in your lane
Card match? Redacted.
No leak — no leak

[Outro]
Readme speaks four new tongues
Mutation gate bites now
The ratchet only turns one way
Three... one... six. (tag it)
```

</details>


---

## What's Changed
* feat(web): add dashboard vocabulary reference by @atirna in https://github.com/sipyourdrink-ltd/bernstein/pull/3790
* fix(openapi): refresh the snapshot and guard schema property names by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3811
* chore(ci): ratchet coverage baseline up to 83.63% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3805
* docs(release-notes): match the v3.15.1 page to the published release by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3816
* chore(deps): update dependency astral-sh/uv to v0.12.3 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3812
* fix(observability): Luhn-validate card matches before redacting by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3818
* fix(observability): stop a late prometheus_client import from replacing the stub registry by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3819
* fix(knowledge): resolve the default branch through a merge-queue ref by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3845
* docs(operations): record the merge-queue flip and the fresh wall-time measurement by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3842
* fix(ci): pin the aider canary install to an interpreter the CLI runs under by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3841
* fix(multimodal): run the attachment pipeline from the spawn path by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3814
* chore(ci): ratchet coverage baseline up to 83.63% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3832
* chore(deps): update dependency platformdirs to v4.11.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3851
* fix(routes): scope budget forecast to the caller's tenant by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3850
* fix: fence evolve and listen first-run paths by @jvsilva12600009 in https://github.com/sipyourdrink-ltd/bernstein/pull/3848
* feat(evolution): gate upgrade proposals on the proposer's measured history by @Nickgonzales76017 in https://github.com/sipyourdrink-ltd/bernstein/pull/3840
* feat(mcp): register plugin mcp.json servers through config gates (#3773) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/3849
* style(tests): restore the trailing newline on test_feature_matrix_drift by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3854
* perf(tests): collect only as RSS approaches the cap, not after every test by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3847
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3853
* chore(auto): nightly mirror + format drift sweep by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3859
* feat(config): gate the reviewer auto-execute path through the same admission policy by @Nickgonzales76017 in https://github.com/sipyourdrink-ltd/bernstein/pull/3843
* fix(ci): retry pip-audit on transient pypi.org failures by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3860
* fix(skills): route the three core/skills path checks through the containment helper by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3855
* fix(adapters): contain the receipt temp path, not just the sealed name by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3857
* fix(routes,replay): contain the run id in the diff path, not just the task id by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3858
* refactor(security): one Luhn implementation, length policy left with callers by @vaibhav8a in https://github.com/sipyourdrink-ltd/bernstein/pull/3862
* fix(adapters): relay explicit_max_turns through CachingAdapter (#3738) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/3882
* docs: Japanese and Korean READMEs, plus a copy pass on the front-page docs by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3861
* docs(contributing): point newcomers at the volunteer workers program by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3893
* docs(assets): add the volunteer program banner used by the RFC by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3895
* docs(roadmap): replace the file with pointers to the live views; retire the generator script by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3894
* docs(readme): replace the front-page banner with the engraved score artwork by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3896
* chore(deps): update dependency esbuild to v0.28.2 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3904
* test: prove the first run of `bernstein live` and `bernstein worker` (#3826) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3899
* test: prove the three Ecosystem first-run rows (#3828) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3900
* fix(ci): gate the RPM smokes on the simple index, not the JSON API (#3815) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3898
* docs: prove `bernstein init`, fence the two demo rows (#3825) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3897
* feat(security): result receipt bundle with offline DSSE verify (#3870) by @Nickgonzales76017 in https://github.com/sipyourdrink-ltd/bernstein/pull/3903
* fix(ci): surface contract drift on fork PRs instead of a token-scope error by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3906
* feat(volunteer): content-addressed project manifest and loader by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3907
* fix(replay): separate journal consistency from sealed identity by @Silentpartnercoding in https://github.com/sipyourdrink-ltd/bernstein/pull/3908
* feat(volunteer): derived, content-addressed hardened sandbox profile by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3909
* feat(volunteer): bernstein opts into its own volunteer program by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3912
* fix(cli): demo --flask-todo reports what the run actually did by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3913
* feat(volunteer): one answer to whether a path is inside a declared scope by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3916
* fix(fleet): bulk-cost-report dispatches `cost`, a command that resolves (#3755) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/3915
* chore(ci): ratchet coverage baseline up to 83.68% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3918
* feat(volunteer): register the CLI group and ship `volunteer verify` by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3920
* fix(docs): rotate unreleased.md and guard it against re-accumulating by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3924
* fix(cost): a missing default metrics dir reports empty, not error (#3917) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/3921
* chore(ci): ratchet coverage baseline up to 83.7% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3925
* fix(cost): read the archive before reporting no data (#3923) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/3926
* fix(cli): the readiness error reports the budget the wait actually uses (#3905) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/3929
* test(bootstrap): assert the readiness message with the real timeout constant by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/3930
* fix(ci): the coverage ratchet declines a locked branch instead of failing on it by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3931
* Fix stale-row key annotation in TUI task list by @ShlokShar in https://github.com/sipyourdrink-ltd/bernstein/pull/3932
* fix(tui): app.notify renders a toast again (#3933) by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3938
* feat(contributing): route area PRs to the area steward without a write grant by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3939
* docs: regenerate adapter last-green table from canary receipts by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3934
* fix(cli): let the console survive a legacy Windows code page (#3901) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3936
* test(tenant-scope): release the app each case builds, so the heap stops growing (#3927) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/3937
* docs(canary): describe why a last-green row can be missing, without naming adapters by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3942
* ci(decompose): gate pipeline start on the maintainer who applies the label by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3941
* fix(security): confine the ratchet's privileged checkout and stretch the A2A signing key by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3943
* chore(ci): ratchet coverage baseline up to 83.77% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3944
* chore(ci): raise diff-coverage floor to 86% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3946
* ci: fix silently-inert gates and misleading green across the workflow surface by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3945
* ci(weekly-digest): remove the dead threshold-alert computation by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3958
* ci: land major/minor release bumps through the merge queue by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3964
* fix(ci): let the mutation gate actually fail instead of always succeeding by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3960
* ops: three dormant CI lanes - decisions implemented by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3967
* ci(branch-protection-audit): read the live ruleset instead of the legacy protection API by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3962
* chore(ci): ratchet coverage baseline up to 83.77% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3961
* ci: shard the per-push macOS test lane 4-way by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3957
* chore(deps): update mkdocs-material[imaging] requirement from <10,>=9.7.6 to >=9.7.7,<10 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3983
* chore(deps): bump actions/setup-python from 6.3.0 to 7.0.0 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3977
* chore(deps): bump docker/setup-qemu-action from 3.7.0 to 4.2.0 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3978
* chore(deps): bump rich from 14.3.3 to 15.0.0 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3981
* chore(deps): bump websockets from 16.0 to 17.0.1 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3980
* chore(deps): bump datasets from 4.8.5 to 5.0.1 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3985
* chore(deps): bump kubernetes from 35.0.0 to 36.0.3 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3986
* chore(deps): bump cbor2 from 5.9.0 to 6.1.4 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3984
* chore(deps): bump signxml from 4.4.0 to 5.1.0 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3987
* fix(cli): declare the replay publish confirmation flag and make --as-json truthful by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3991
* docs(readme): add Hindi and Bengali translations by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3992
* chore(deps-dev): bump types-reportlab from 4.5.1.20260724 to 4.5.1.20260807 by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3988
* ci: path-gate install-smoke-rpm and add its nightly safety net by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3965
* test(audit): raise audit_log's mutation-gate kill rate to 98.8% by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4007
* fix(replay): a journal line that is not valid UTF-8 is discarded, not raised (#3971) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4008
* fix: unblock the grouped dependency bump on lint and license review by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3994
* docs(replay): fix the export invocation and split `--as-json` by what it emits (#3968) by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3989
* fix(security): refuse a persisted credential token_type outside the literal by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4006
* feat(security): enforce allowed_files at the merge acceptance gate by @Aeirx in https://github.com/sipyourdrink-ltd/bernstein/pull/4002
* fix(scripts): render workflow locators as posix paths, not OS-native by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4014
* chore(deps): update dependency ovsx to v1.1.1 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4011
* chore(deps): update dependency lucide-react to v1.31.0 by @renovate[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/4010
* ci: fix workflow headers and names to match actual behavior by @ThinkerDesigns in https://github.com/sipyourdrink-ltd/bernstein/pull/3956
* fix(replay): emit JSON on every exit path, not only the successful one by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4017
* fix(replay): repair a crash-torn journal tail so a suspended task can resume (#3910) by @Louis20060723 in https://github.com/sipyourdrink-ltd/bernstein/pull/3955
* chore(renovate): cap mkdocs-redirects at the bound docs/requirements.in declares by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4012
* fix(api): refuse a non-finite budget_cap on /metrics/predictions by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4013
* feat(agents): read plugin-layout catalogs and wire configured catalogs into the match path by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3993
* chore(deps): bump the python-minor-and-patch group across 1 directory with 44 updates by @dependabot[bot] in https://github.com/sipyourdrink-ltd/bernstein/pull/3979
* ci(docs): gate docs/requirements.txt against its own .in constraints by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/3999
* fix(security): refuse a merge whose incoming change cannot be read by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4022
* fix(replay): event_count counts usable events, through the same scan (#4016) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4025
* chore(web): rebuild SPA bundle for lucide-react 1.31.0 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4027
* refactor(security): derive the token_type allowlist from its Literal by @Aeirx in https://github.com/sipyourdrink-ltd/bernstein/pull/4030
* ci: finish the weekly rename for the fuzzing and eval lanes by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/3959
* docs(replay): describe the --as-json contracts that #3991 shipped by @Chirag6722 in https://github.com/sipyourdrink-ltd/bernstein/pull/4018
* ci: take the non-required lanes out of the merge queue by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4020
* ci: decide release readiness from check runs, not the combined status API by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4046
* ci: drop the release job's re-run of the suite it has already verified by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4049
* release: v3.16.0 by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4052
* fix(ci): register the protocol marker so the release gate can run at all by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4056
* perf(replay): cache event_count against a stat token, keeping the exact count (#4026) by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4029
* feat(security): derive manifest_sha256 and make its check visible in the verdict by @sujeito-operator in https://github.com/sipyourdrink-ltd/bernstein/pull/4048
* test(ci): pin the trigger and cadence headers for two workflows by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4021
* fix(security): let the devops role edit docker-compose.yaml by @chernistry in https://github.com/sipyourdrink-ltd/bernstein/pull/4045

## New Contributors
* @vaibhav8a made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3818
* @jvsilva12600009 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3848
* @Chirag6722 made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3899
* @sujeito-operator made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3915
* @ShlokShar made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3932
* @Aeirx made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/4002
* @ThinkerDesigns made their first contribution in https://github.com/sipyourdrink-ltd/bernstein/pull/3956

**Full Changelog**: https://github.com/sipyourdrink-ltd/bernstein/compare/v3.15.1...v3.16.0

