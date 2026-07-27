# 블로그 자동화 프로젝트

## 프로젝트 개요
- Hugo 기반 블로그 (PaperMod 테마)
- GitHub Pages로 배포
- 목표: 일 5,000원 수익 (AdSense)

## Hugo 경로
- Hugo 실행파일: `/c/Users/woohyun/AppData/Local/Microsoft/WinGet/Packages/Hugo.Hugo.Extended_Microsoft.Winget.Source_8wekyb3d8bbwe/hugo.exe`
- 블로그 루트: `/c/2026/블로그/blog`
- 콘텐츠: `/c/2026/블로그/blog/content/posts/`

## 블로그 글 작성 규칙
글을 생성할 때 반드시 아래 규칙을 따르세요:

### 파일 형식
- 경로: `content/posts/{영문-slug}.md`
- 날짜: 글마다 하루씩 다르게 (과거~현재)
- draft: false

### SEO 최적화
- title: 검색 키워드를 포함한 30자 이내 제목
- description: 150자 이내 설명 (키워드 포함)
- categories: ["AI", "IT 팁", "생활 꿀팁"] 중 하나
- tags: 관련 키워드 3~5개
- 본문에 키워드 자연스럽게 3회 이상 포함

### 글 구조
1. 서론: 독자의 문제/궁금증 언급
2. 본론: H2/H3로 구분, 리스트/표 활용, 구체적 방법 제시
3. 결론: 핵심 요약 + 다른 글 유도

### 카테고리별 키워드 방향
- **AI**: ChatGPT 활용법, AI 도구 추천, AI 비교, 프롬프트 팁
- **IT 팁**: 윈도우 팁, 엑셀, 노션, 앱 사용법, PC 관리
- **생활 꿀팁**: 절약법, 돈 모으기, 건강, 스마트폰 팁

## 주간 실행 명령어
사용자가 "글 써줘" 또는 "블로그 업데이트"라고 하면:
1. 트렌디한 키워드 7개 선정
2. 각 키워드로 SEO 최적화 글 작성 (1500~2500자)
3. Hugo 빌드 테스트
4. git add, commit, push

## GitHub 정보
- 저장소: woohyun-blog (설정 필요시 gh로 생성)
- 브랜치: main
- 배포: GitHub Pages (GitHub Actions)
