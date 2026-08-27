---
title: Vaara Policy Check
date: 2026-08-27 17:28:59 +00:00
tags:
  - vaaraio
  - GitHub Actions
draft: false
repo: https://github.com/vaaraio/vaara
marketplace: https://github.com/marketplace/actions/vaara-policy-check
version: v1.78.0
dependentsNumber: "1"
actionType: Composite
actionSummary: |
  This GitHub Action automates the process of verifying and auditing autonomous actions. It helps in checking the receipts to ensure they are verifiable, tamper-evident, and compliant with policies. The action provides a framework for risk-scoring governed functions before execution, ensuring that only authorized actions proceed. It also supports exporting trail records for third-party verification, making it easier to audit and track autonomous decisions.
---


Version updated for **https://github.com/vaaraio/vaara** to version **v1.78.0**.

- This action is used across all versions by **1** repositories.

## Action Type
This is a **Composite** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/vaara-policy-check) to find the latest changes.

## Action Summary

This GitHub Action automates the process of verifying and auditing autonomous actions. It helps in checking the receipts to ensure they are verifiable, tamper-evident, and compliant with policies. The action provides a framework for risk-scoring governed functions before execution, ensuring that only authorized actions proceed. It also supports exporting trail records for third-party verification, making it easier to audit and track autonomous decisions.

## What's Changed

## [1.78.0] - 2026-08-27

### Added

- `MODIFY`, `STEP_UP` and `DEFER` join `ALLOW`, `DENY` and `ESCALATE`, which covers the decision vocabulary the AARM Core registry asks for under R4. That registry names five and `Decision` now has six, because `ESCALATE` stays exactly as it was and `STEP_UP` and `DEFER` refine it rather than replace it.

  The three new names do not reach the signed decision record, and that is deliberate rather than a shortcut. The record's verdict enum is a closed set of three, and it is closed inside a checker this repository publishes for outside parties to run: `tests/vectors/record_set_v0/_check_independent.py` grades a record carrying any other verdict as non-conforming. Renaming `escalate` to `step_up` would have invalidated published vectors and made the scoping text of results rows that cannot be edited become false. So the refinements are policy-layer names that project onto the coarse three, in the same table shape that already maps `deny` to `block` and `review` and `refer` to `escalate`.

  `STEP_UP` and `DEFER` are holds and record `escalate`. `MODIFY` records `deny`, because the arguments it was asked about do not run. When a policy proposes different arguments they come back on `InterceptionResult.modified_parameters`, the caller resubmits them, and that resubmission is scored and recorded on its own. Two records, both true, each bound to the arguments it actually decided. No decision record ever says `allow` against arguments other than the ones that executed.

  `InterceptionResult.decision` keeps returning the coarse word and `decision_detail` carries the refinement. Eleven call sites across the framework integrations branch on `decision == "escalate"` or `== "deny"` to decide whether to raise, in `langchain.py`, `openai_agents.py`, `claude_code_hooks.py`, `mcp_server.py` and `_infer_proxy_gate.py`. A finer word arriving there would have missed every one of those branches and read as a fall-through, which is a fail-open in precisely the code that exists to stop an action.

  `allowed` is still true for `allow` and nothing else. All three new decisions are holds at the moment the gate returns, so no relying party has a new rule to learn.

- `decision_made` audit records carry `decision_detail` and, for a modify, `modified_parameters`. Both keys are omitted when absent, so a record written without a refinement is byte-identical to one written before the vocabulary existed and its hash does not move. `decision` itself stays inside the documented three-value enum.

  `record_decision` checks the refinement against the decision it claims to explain and drops it if the two disagree. The pipeline never passes an inconsistent pair, but the method is reachable from custom policy code, and a record saying `allow` with a `modify` refinement would be hash-chained evidence that contradicts itself.

- A grant can carry a qualified electronic attestation of attributes. `mandate` is a new optional block on the brokered credential, covered by the existing grant signature.

  Every actor claim on a record today is self-asserted. `asserted.iss` and `.sub` are strings the issuer writes about itself, and a verifier can check the signature and recompute the args commitment without ever being able to check that the issuer is the organisation it names. A qualified attestation is an eIDAS trust service that a supervised, audited provider issues, and an organisation cannot issue one about itself by construction, so that one claim comes to rest on a public register rather than on the producer's word.

  The block is optional and adds nothing to the signed preimage when absent, so a grant minted without one signs exactly the bytes it signed before the field existed. Every published grant vector still verifies. All four sub-objects are closed schemas, and `boundVia` values the specification reserves are rejected rather than tolerated.

  `verify_mandate_binding` recomputes SHA-256 over the decoded attestation and compares it to the commitment. Two decisions there are worth stating because a disagreement between two verifiers over a valid record is expensive to find later. The digest is over the bytes the provider issued, not over the base64 that carries them. And a withheld attestation verifies, because the digest-only path is a supported shape and nothing carried can disagree with the commitment; a caller that needs the bytes present checks for them itself, since "not carried" and "carried and wrong" are different conditions.

  Resolving the provider against the EU trusted lists is the next piece and is not in this change. See `docs/design/qeaa-attribute-binding-spec.md`, which now records what is built and what is not.

- `decision_vocabulary_v0`, a conformance suite that lets an outside party check the projection instead of taking it on trust. The corpus grows to 47 suites and 88 cases.

  Thirteen cases. Eight are what Vaara produces, generated by driving the real pipeline rather than written to match the checker, with record ids and timestamps from fixed sequences so the bytes are reproducible and every hash computed by the production path. Five are what a gate without the projection would write. Four are committed as non-conforming: the refinement used as the verdict itself, `allow` standing beside a `modify`, a retry claiming a modify as its parent while carrying the arguments that modify refused, and a decision reason edited after the fact. The fifth is a modify nobody retried, which is advisory and still conforms, because a caller is allowed to give up and a record that says so is not wrong.

  The point of committing failures is that a corpus where nothing ever fails says nothing about whether the checker can tell. The checker imports no Vaara and needs no optional dependency beyond the standard library, and it recomputes every record hash and every chain link from the bytes rather than trusting the committed ones.

  `scripts/build_decision_vocabulary_vectors.py --check` regenerates and fails on any diff, so the vectors cannot drift away from the code that produced them.

- `vaara.audit.hcs27` publishes a Vaara trail head as an HCS-27 Transparency Log Checkpoint. Standard library only. `hcs27_checkpoint_v0` joins the corpus, which grows to 48 suites.

  HCS-27 anchors an append-only log to a Hedera Consensus Service topic by publishing periodic Merkle checkpoints, and it says in its own words that it does not define log entry schemas. That sentence is the seam. HCS-27 supplies the commitment that a log only ever grew; Vaara supplies the record saying a specific act was permitted, by whom, under what scope. A stranger checks inclusion with a stock HCS-27 client that imports no Vaara, then re-derives `record_hash` to check the chain.

  There is no Merkle implementation in the new module, because `vaara.attestation.transparency_log` already was one. It turns out to be byte-identical to the HCS-27 Merkle v1 profile, established by running the upstream `standards-sdk/src/hcs-27/merkle.ts` against it rather than by reading it. Roots agree for every tree size 0 to 64 and at every power-of-two boundary to 1025, and 110 Vaara proofs verify unmodified in the upstream `verifyInclusionProof` and `verifyConsistencyProof`. The two build the tree differently and arrive at the same root: Vaara folds bottom up and promotes an unpaired node, HCS-27 splits at the largest power of two below n and recurses.

  `ensure_ascii=False` is load-bearing and is the rule that silently breaks interoperability. The leaf preimage is JCS, and Python's default escapes every umlaut to `\uXXXX`, yielding a leaf hash no other implementation reproduces. Finnish text makes that a certainty rather than an edge case, so the vector carries an umlaut in `agentId` and a regression breaks that test first. Floats are rejected outright rather than emitted, since Python writes `1.0` where JavaScript writes `1`.

  This canonicalisation is not the one `AuditRecord.compute_hash` uses, which keeps the `ensure_ascii=True` default. The chain digest and the checkpoint leaf are separate functions over separate inputs on purpose, so that every trail already on disk stays verifiable.

  The entry carries identity and `recordHash`, not `data` and not `regulatory_articles`. Both stay committed through `recordHash`, so anyone holding the record can still prove what was in it, while a public topic carries neither the payload nor Vaara's compliance attribution, and caller-shaped values stay out of the canonicalisation path.

  Two limits are recorded rather than worked around. `metadata.type` is typed as the literal `ans-checkpoint-v1` upstream, so a standard that delegates entry schemas to consuming profiles gives a second profile no way to name itself; Vaara emits the accepted literal and carries its own identity in `stream.registry`, in the declared `log.leaf` formula and in a passthrough key. HCS-1 overflow inscription is not implemented, because a checkpoint measures 461 bytes against Hedera's 1024-byte cap, and the builder raises rather than emit an oversized message.


