#!/bin/bash
# 블로그 자동 글 생성 + 배포 스크립트
# 사용법: 이 폴더에서 claude를 실행하고 "글 써줘" 라고 말하세요.
# 또는 직접: bash generate-posts.sh (Hugo 빌드 + Git push만 수행)

BLOG_DIR="/c/2026/블로그/blog"
HUGO="/c/Users/woohyun/AppData/Local/Microsoft/WinGet/Packages/Hugo.Hugo.Extended_Microsoft.Winget.Source_8wekyb3d8bbwe/hugo.exe"

cd "$BLOG_DIR" || exit 1

echo "=== Hugo 빌드 테스트 ==="
"$HUGO" --gc --minify
if [ $? -ne 0 ]; then
    echo "빌드 실패! 오류를 확인하세요."
    exit 1
fi

echo ""
echo "=== Git 커밋 및 푸시 ==="
git add -A
git commit -m "Add new blog posts - $(date +%Y-%m-%d)"
git push origin main

echo ""
echo "=== 완료! ==="
echo "GitHub Actions가 자동으로 배포합니다."
echo "사이트: https://woohyun-blog.github.io/"
