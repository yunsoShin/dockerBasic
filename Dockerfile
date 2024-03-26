# Node.js 버전 20을 사용하는 기본 이미지를 정의합니다.
FROM node:20

# 애플리케이션 디렉토리를 만듭니다.
WORKDIR /usr/src/app

# 애플리케이션 의존성을 설치하기 위해 package.json과 package-lock.json을 복사합니다.
COPY package*.json ./

# 프로젝트 의존성을 설치합니다.
RUN npm install

# 애플리케이션의 나머지 소스를 복사합니다.
COPY . .

# 네트워크를 통해 애플리케이션에 접근할 수 있도록 포트를 엽니다.
EXPOSE 3333

# 애플리케이션을 실행합니다.
CMD [ "npm", "start" ]
