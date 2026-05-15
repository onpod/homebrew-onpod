# onpod Homebrew tap

[onpod CLI](https://onpod.ai) — GPU·CPU 시간 단위 마켓플레이스. AI 에이전트 (Claude Code, Cursor 등) 한 줄로 GPU 빌리고, 컨테이너 띄우고, 도메인까지 자율주행.

## 설치

```sh
brew tap latemonk/onpod
brew install onpod
```

또는 한 줄:

```sh
brew install latemonk/onpod/onpod
```

## 다음 단계

```sh
# 1. console.onpod.ai 에서 API 키 발급
# 2. 로그인
onpod login --url https://api.onpod.ai --token op_u_...

# 3. AI 에이전트가 통째로 붙여넣는 운영 매뉴얼
onpod manual

# 4. GPU/CPU 인벤토리
onpod ls compute
```

## 한 줄 자율주행 예시

```sh
# AI 모델 학습 — image / GPU / disk 자동 선택
onpod pod create --name train-1 --use-case ai_train --gpu auto

# 일반 웹·API 서버 — CPU 자동
onpod pod create --name web-1 --use-case web_app --gpu auto

# vLLM 추론 서버 — 30일 reserved
onpod pod create --name vllm-1 --use-case ai_infer --gpu auto \
  --sku reserved --term-secs 2592000
```

## install 대안 (Homebrew 없이)

```sh
curl -fsSL https://onpod.ai/install.sh | sh
```
