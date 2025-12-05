# GitHub Pages 설정 가이드

## 완료된 작업

✅ 정적 HTML 파일 생성 완료
✅ `.nojekyll` 파일 생성 (Jekyll 처리 비활성화)
✅ 모든 파일 GitHub에 푸시 완료

## GitHub Pages 활성화 방법

### 1. GitHub 저장소로 이동
https://github.com/ijtonkatsu/webver1

### 2. Settings 메뉴 열기
- 저장소 페이지에서 **Settings** 탭 클릭
- 왼쪽 사이드바에서 **Pages** 클릭

### 3. Publishing source 설정
- **Source** 섹션에서:
  - **Branch**: `main` 선택
  - **Folder**: `/ (root)` 선택
- **Save** 클릭

### 4. 사이트 확인
- 몇 분 후 (최대 10분) 사이트가 배포됩니다
- 사이트 URL: `https://ijtonkatsu.github.io/webver1/`

## 생성된 파일

- `index.html` - 메인 홈페이지
- `restaurant-about.html` - About 페이지
- `restaurant-menu.html` - 메뉴 페이지
- `restaurant-story.html` - 스토리 페이지
- `restaurant-gallery.html` - 갤러리 페이지
- `restaurant-blog.html` - 블로그 페이지
- `restaurant-blog-single-creative.html` - 블로그 상세 페이지
- `restaurant-contact.html` - 연락처 페이지

## 중요 사항

⚠️ **경로 주의사항**
- GitHub Pages는 서브디렉토리(`/webver1/`)에서 호스팅됩니다
- 모든 링크는 상대 경로로 설정되어 있어 자동으로 작동합니다

⚠️ **PHP 기능 제한**
- GitHub Pages는 정적 사이트만 지원합니다
- PHP 동적 기능은 작동하지 않습니다
- 현재 사이트는 정적 HTML로 변환되어 모든 기능이 작동합니다

## 정적 HTML 업데이트

PHP 파일을 수정한 후 정적 HTML을 다시 생성하려면:

```bash
php generate-static-html.php
git add *.html
git commit -m "Update static HTML files"
git push origin main
```

## 문제 해결

### 사이트가 표시되지 않는 경우
1. Settings > Pages에서 배포 상태 확인
2. Actions 탭에서 배포 로그 확인
3. 최대 1시간 대기 (처음 배포는 시간이 걸릴 수 있음)

### 링크가 작동하지 않는 경우
- 모든 링크는 `.html` 확장자를 사용합니다
- 상대 경로로 설정되어 있어 자동으로 작동합니다

