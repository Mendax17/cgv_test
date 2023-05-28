# 베이스 이미지 선택
FROM nginx:alpine

# 워킹 디렉토리 설정
WORKDIR /usr/share/nginx/html

# 로컬의 HTML 파일을 컨테이너로 복사
COPY index.html .
COPY img.cgv.co.kr .

# 컨테이너가 80 포트를 사용하도록 설정
EXPOSE 80

# 컨테이너 실행 시 Nginx 시작
CMD ["nginx", "-g", "daemon off;"]