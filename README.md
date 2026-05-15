# onpod CLI

[onpod](https://onpod.ai) — 한 줄로 끝나는 자율주행 GPU·CPU 인프라. AI 에이전트 (Claude Code · Cursor · Codex 등) 가 한 마디로 GPU 빌리고, 컨테이너 띄우고, 도메인까지 자율주행.

## 설치

**가장 짧음 (macOS / Linux 공통)**:

```sh
curl -fsSL https://onpod.ai/install.sh | sh
```

**Homebrew (macOS / Linux)**:

```sh
brew tap latemonk/onpod   # 평생 한 번만
brew install onpod        # 그 후 매번 한 줄
brew upgrade onpod        # 업데이트
```

## 다음 단계

```sh
# 1. console.onpod.ai 에서 API 키 발급
# 2. 로그인
onpod login --url https://api.onpod.ai --token op_u_...

# 3. AI 에이전트 운영 매뉴얼 (그대로 Claude Code · Cursor 에 붙여넣기)
onpod manual

# 4. GPU + CPU 인벤토리 한 화면
onpod ls compute
```

## AI 에이전트 한 줄 자율주행 예시

```sh
# AI 모델 학습 — 추천 GPU 자동, disk · image base 자동
onpod pod create --name train-1 --use-case ai_train --gpu auto

# 일반 웹·API 서버 — CPU 자동
onpod pod create --name web-1 --use-case web_app --gpu auto

# vLLM 추론 서버 — 30일 reserved
onpod pod create --name vllm-1 --use-case ai_infer --gpu auto \
  --sku reserved --term-secs 2592000
```

## 콘솔에서 가능한 모든 기능 = CLI 한 줄

```sh
onpod balance                 # 잔액 · 시간당 사용 · 남은 시간
onpod tx                      # 거래 내역
onpod topup --krw 50000       # 크레딧 충전 (브라우저 결제)
onpod auto-recharge get|set   # 자동 충전 설정
onpod card add|rm             # 카드 관리
onpod key ls|add|rm           # API 키 관리
onpod activity                # 내 활동 기록
onpod bill summary            # 월별 사용 합계
```

## 라이선스

Proprietary. © AI3 / onpod.
"onpod" 은 등록상표.
