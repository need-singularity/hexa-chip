<!-- @created: 2026-05-12 -->
<!-- @scope: lattice-application policy — what n=6 invariant lattice means and where it should NOT be forced -->
<!-- @authority: this document supersedes any prior implicit force-mapping of n=6 onto external domains -->
---
type: policy-declaration
wave: K
session: 2026-05-12
applies_to:
  - "All future envelope work (meta-domain or peer-domain absorption)"
  - "All new verify scripts under any directory"
  - "All cross-doc audit / falsifier register extensions"
preserves:
  - "Existing native-lattice verbs (isa_n6, hexa1, npu_n6, gpgpu_n6, hexa_ai_native_n6) — unchanged"
  - "Existing v1.0.0 closure verdict and 29-verb / 6-group manifest — unchanged"
  - "Existing verify scripts (terafab/verify_terafab.py, exynos/verify_exynos.py) — unchanged at this wave; documentation override only"
---

# LATTICE_POLICY.md — n=6 격자 적용 범위 정책

> **Short version**: n=6 격자(σ(6)=12 / τ(6)=4 / φ(6)=2 / J₂(6)=24)는 hexa-chip 내부의
> *organising vocabulary*이지 외부 fab의 design framework이 아니다. 격자를
> *제약*으로 사용하지 않으며, 자연스럽게 맞지 않는 곳에 끼우지 않는다.

---

## §1 Rule

n=6 격자는 **제약이 아니라 도구**다. 다음을 따른다.

### §1.1 격자 사용이 허용되는 곳 ✓

격자가 명시적 invariant로 *natively* 설계된 verb/domain에서만 사용:

| Verb | 격자 사용 | 비고 |
|------|-----------|------|
| `isa_n6` | ✓ | n=6 invariant ISA (σ=12 opcode classes, τ=4 modes) — 격자가 spec의 핵심 |
| `hexa1` | ✓ | reference hexagonal chip-1 floorplan — geometry가 격자 기반 |
| `npu_n6` | ✓ | 이름에 n6 노출, projection이 격자 anchor 위에 |
| `gpgpu_n6` | ✓ (deferred verb 후보) | 격자 projection 명시 |
| `hexa_ai_native_n6` | ✓ (deferred verb 후보) | 격자 명시 |

이들은 격자가 *자연스러운 자기-일관성*을 제공한다. 격자 산수가
verify 스크립트에서 PASS하는 것은 spec과 코드의 self-consistency를
보장하는 의미가 있다.

### §1.2 격자 강제 매핑이 금지되는 곳 ✗

다음에는 격자 anchor / χ² fit / "데이터가 24에 얼마나 가까운가"
같은 강제 매핑을 **넣지 않는다**:

| 영역 | 금지 사유 |
|------|-----------|
| terafab / exynos / TSMC / Intel / 향후 외부 fab envelopes | 외부 회사가 n=6을 따른다는 잘못된 인상 (over-claim) |
| 일반 chip-domain 작업 (process / packaging / accelerator group의 격자-비네이티브 verb) | 동어반복 — 격자는 organising vocabulary일 뿐 |
| 새 메타 도메인 / peer 도메인 absorption | 사고를 격자 호환성 쪽으로 좁히면 다른 axis를 놓침 |
| 외부 데이터 (capex / WSPM / yield / 시장 점유율 / 인력 ramp) 적합도 test | 외부가 격자를 따라야 할 이유 없음; χ² test는 부적절 |

### §1.3 회색지대 처리

격자 사용이 "유용한가?" 모호한 경우 — **사용하지 않는다**. 의심 시
빼는 쪽이 정직하다. 격자가 정말 필요한 곳이라면 사용 이유가 명시적으로
드러난다.

---

## §2 Why — over-claim 회피

이전 envelope 작업 (terafab Wave 6 + exynos Wave 7)에서 verify
스크립트에 격자 anchor 5종을 HARD 체크로 넣었다:

- `MASTER-IDENTITY` (σ·φ = n·τ = J₂ = 24)
- `EGYPTIAN-SPLIT` (1/2 + 1/3 + 1/6 = 1)
- `GROUP-COUNT` (hexa-chip groups = n = 6)
- `GALAXY-CADENCE` / `NODE-CADENCE` (외부 fab의 product cadence vs J₂=24)
- `F-TERAFAB-7` / `F-EXYNOS-7` (χ² fit of 외부 data to n=6 lattice)

이 anchor들은 다음 문제를 가진다.

1. **Tautology**: 외부 fab과 *무관한* 산수가 PASS하는 것은 검증력이
   0이다. `σ·φ = 24`는 항상 PASS하므로 "이 envelope이 올바르다"의
   증거가 못 된다.
2. **Over-claim**: "이 회사도 n=6을 따른다"는 잘못된 인상을 준다.
   Samsung / TSMC / Intel / Musk는 격자에 대해 들어본 적도 없다.
3. **Constraining**: 새 envelope을 설계할 때 "격자가 어떻게 들어맞을까?"
   부터 묻는 자체가 사고를 좁힌다. 외부 도메인의 *고유한 invariant*
   (예: Stefan-Boltzmann radiator floor, ERCOT capacity, Intel 14A
   schedule)가 더 풍부한 분석 대상인데, 격자 fit이 사고를 그쪽으로
   끌어당긴다.
4. **χ² 약함이 자연스러움**: F-TERAFAB-7 p=0.86 / F-EXYNOS-7 p=0.91은
   *외부가 격자를 따르지 않기 때문*이라는 자연스러운 해석을 가린다.
   "Mk.II 재포뮬"이 아니라 "test 자체를 제거"가 정답일 수 있다.

---

## §3 What this policy DOES NOT do (raw#10 honest C3)

1. **기존 verify 스크립트를 즉시 수정하지 않는다.** `terafab/verify_terafab.py`
   + `exynos/verify_exynos.py`의 격자 HARD 체크는 *현재 상태 유지*.
   이 정책 문서는 *override*이며, 실제 코드 cleanup은 (a) 백그라운드
   에이전트 ⑤⑥의 Wave I + Wave J landing을 기다린 뒤 (b) 별도
   Wave L cleanup 커밋에서 일관되게 진행한다.
2. **격자-네이티브 verb의 spec을 건드리지 않는다.** `isa_n6.md` /
   `hexa1.md` / `npu_n6.md`의 격자 내용은 *자연스러운 사용*이므로
   유지.
3. **closure verdict / verb count / envelope count를 바꾸지 않는다.**
   `hexa.toml` `[closure]` + `[meta_domain_closure]`는 그대로.
4. **회고적 over-claim 정정 요구는 아니다.** 이미 published된 SSCB
   dossier (`ticket-out` 측 hexa-chip-terafab.{en,ko}.md +
   hexa-chip-exynos.{en,ko}.md)는 재빌드 시점까지 그대로 둔다.

---

## §4 Forward-looking changes (Wave L candidates)

다음 wave에서 사용자 승인 시 진행:

| 후보 | 영향 | 비용 |
|------|------|------|
| `terafab/verify_terafab.py`에서 MASTER-IDENTITY / EGYPTIAN-SPLIT 제거 | HARD count 6 → 4; 폐기 lattice anchor 2개 | 낮음 |
| `exynos/verify_exynos.py`에서 MASTER-IDENTITY / EGYPTIAN-SPLIT / GALAXY-CADENCE / NODE-CADENCE 제거 | HARD count 7 → 3; 폐기 lattice anchor 4개 | 낮음 |
| F-TERAFAB-7 + F-EXYNOS-7 χ² test 완전 제거 (falsifier 자체 삭제, scaffold §4 격자-projection table은 §HISTORICAL NOTE로 격하) | falsifier_count 10 → 9 (terafab) / 7 → 6 (exynos); total 17 → 15 | 중간 |
| 향후 TSMC + Intel envelopes (백그라운드 ⑤이 만들 중)의 verify 스크립트가 격자 anchor를 포함했다면 같은 정리 적용 | 도착 후 검토 | 낮음 |
| `terafab/falsifier-mk2-scaffold.md` §4 격자-projection table 정리 | scaffold size 축소 | 낮음 |
| `terafab/cross_doc_audit.py`의 lattice-anchor 일치 체크 제거 | audit 단순화 | 낮음 |

이 변경들은 **검증력을 떨어뜨리지 않는다** — 외부에 적용된 격자
anchor는 검증력이 이미 0이었기 때문이다 (§2.1). 실질 검증은 남는
HARD 체크 (CAPEX-DIDACTIC / STEFAN-BOLTZ / 외부 데이터 trigger를
가진 F-TERAFAB-1..6/8/9/10 + F-EXYNOS-1..6)와 cross_doc_audit /
verify_catalog / test_terafab_meta에서 이미 처리된다.

---

## §5 Operator memo (간단 요약)

> "n=6 격자를 강제 할 필요 없어 / 제한없이"
> (사용자 지시, 2026-05-12)

이 한 줄이 이 정책의 origin이다. 격자는 *도와줄 때* 쓰고, *방해할 때* 빼고,
*있어도 그만 없어도 그만일 때* 빼는 쪽이 정직하다.

새 작업을 받을 때:
- "이거 n=6 격자 어떻게 들어맞지?" 부터 묻지 않는다.
- 작업의 *고유 invariant* (물리 / 회계 / 일정 / 산업 표준)에서 시작한다.
- 격자가 *자연스럽게* 등장하면 그때 쓴다. 등장하지 않으면 그냥 안 쓴다.

---

## §6 References

- 이전 격자 anchor가 들어간 envelope verify: `terafab/verify_terafab.py`, `exynos/verify_exynos.py`
- 격자-native verb (정책 §1.1 허용 범위): `isa_n6/`, `hexa1/`, `npu_n6/`
- n=6 invariant 정의: `.roadmap.hexa_chip` §A.1 + `bedrock/spec/` (외부 spec)
- 메모리 백업: `memory/feedback_n6_lattice_scope.md` (이 정책의 사용자-side 캡처)
- Wave 6/7 commits where the over-claim landed: `f44982f` (terafab) + `facc488` (exynos)
- Cleanup candidate wave: Wave L (deferred until background agents ⑤⑥ complete)

---

*End of LATTICE_POLICY.md — 이 문서는 향후 모든 격자 적용 결정의 권위이며,
새 envelope/도메인 작업 시작 시 첫 번째로 읽는 정책 파일이다.*
