# 블로그 자동화 프로젝트

## 프로젝트 개요
- Hugo 기반 블로그 (PaperMod 테마)
- GitHub Pages로 배포
- 목표: 일 5,000원 수익 (AdSense)
- 블로그 URL: https://woohyun22.github.io/woohyun-blog/

## Hugo 경로
- Hugo 실행파일: `/c/Users/woohyun/AppData/Local/Microsoft/WinGet/Packages/Hugo.Hugo.Extended_Microsoft.Winget.Source_8wekyb3d8bbwe/hugo.exe`
- 블로그 루트: `/c/2026/블로그/blog`
- 콘텐츠: `/c/2026/블로그/blog/content/posts/`

## 현재 상태 (2026-08-04 기준)
- 총 글 수: 25개
- 카테고리: AI(5), IT 팁(6), 생활 꿀팁(6) + 기존 8개
- 필수 페이지: 소개, 연락처, 개인정보처리방침 완비
- SEO: 구조화 데이터(JSON-LD), OG 태그, robots.txt 완비
- ads.txt: 준비 완료 (pub ID만 교체 필요)
- 파비콘: 생성 완료
- 404 페이지: 생성 완료
- 관련 글 추천: 글 하단에 같은 카테고리 3개 자동 표시

## 애드센스 승인 체크리스트
- [x] 25개 이상 양질의 글
- [x] 개인정보처리방침 페이지
- [x] 소개 페이지
- [x] 연락처 페이지
- [x] sitemap.xml
- [x] robots.txt (Mediapartners-Google 허용)
- [x] ads.txt 준비
- [x] 구조화 데이터 (JSON-LD)
- [x] 모바일 반응형 디자인
- [ ] Google Search Console 등록 (사용자 직접)
- [ ] Google Analytics 설정 (사용자 직접)
- [ ] 커스텀 도메인 (선택)
- [ ] 사이트 나이 3개월 이상 (2026년 10월~)

## 승인 후 활성화할 코드
1. `layouts/partials/extend_head.html` — AdSense 스크립트, GA4, 서치콘솔 메타태그
2. `layouts/partials/extend_article.html` — 글 하단 광고
3. `static/ads.txt` — pub ID 교체

## 이미지 경로 규칙 (중요!)
- cover image (front matter): `image: "images/파일명.jpg"` (상대경로, Hugo가 absURL 처리)
- 본문 마크다운 이미지: `![alt](/woohyun-blog/images/파일명.jpg)` (baseURL 포함)
- 이미지 저장 위치: `static/images/`

## 블로그 글 작성 규칙
글을 생성할 때 반드시 아래 규칙을 따르세요:

### 파일 형식
- 경로: `content/posts/{영문-slug}.md`
- 날짜: 기존 글의 마지막 날짜 다음부터 하루씩
- draft: false
- cover image 반드시 포함

### SEO 최적화
- title: 검색 키워드를 포함한 30자 이내 제목
- description: 150자 이내 설명 (키워드 포함)
- categories: ["AI", "IT 팁", "생활 꿀팁"] 중 하나
- tags: 관련 키워드 3~5개
- 본문에 키워드 자연스럽게 3회 이상 포함

### 글 구조
1. 서론: 독자의 문제/궁금증 언급
2. 본론: H2/H3로 구분, 리스트/표 활용, 구체적 방법 제시
3. 결론: 핵심 요약 + 다른 글 유도 (관련 글 링크)

### 카테고리별 키워드 방향
- **AI**: ChatGPT 활용법, AI 도구 추천, AI 비교, 프롬프트 팁
- **IT 팁**: 윈도우 팁, 엑셀, 노션, 앱 사용법, PC 관리, 보안
- **생활 꿀팁**: 절약법, 돈 모으기, 건강, 스마트폰 팁, 자기계발

### 고수익 키워드 (CPC 높음)
금융(대출, 보험, 신용점수), 건강(다이어트, 영양제), 자기계발, 재테크

## 주간 실행 명령어
사용자가 "글 써줘" 또는 "블로그 업데이트"라고 하면:
1. 트렌디한 키워드 7개 선정 (CPC 높은 키워드 포함)
2. 각 키워드로 SEO 최적화 글 작성 (1500~2500자)
3. Unsplash에서 커버 이미지 다운로드
4. Hugo 빌드 테스트
5. git add, commit, push

## GitHub 정보
- 저장소: woohyun22/woohyun-blog
- 브랜치: main
- 배포: GitHub Pages (GitHub Actions)

---

## 인스타그램 연계 시스템

### 인스타 콘텐츠 경로
- 규칙: `/c/2026/블로그/instagram/CLAUDE.md`
- 콘텐츠: `/c/2026/블로그/instagram/content/`
- 템플릿: `/c/2026/블로그/instagram/templates/`

### 통합 워크플로우
사용자가 키워드를 주면 블로그 + 인스타 동시 생성:
1. 블로그 글 작성 → `blog/content/posts/`에 저장
2. 같은 내용으로 인스타 캐러셀 + 캡션 + 릴스 스크립트 생성 → `instagram/content/`에 저장
3. 한 번에 두 플랫폼 콘텐츠 완성

### 수익 목표
- 블로그: 애드센스 (일 1,000원 목표)
- 인스타: 블로그 유입 부스터 + 브랜드 성장
- 인스타 → 블로그 유입 → 애드센스 수익 구조
