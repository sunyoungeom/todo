# todo

# 엔드포인트 설명

| 엔트포인트의 목적     | HTTP 메서드 | 요청 URL       | 요청 본문                                           | 응답 본문                                       |
|------------------|-----------|----------------|---------------------------------------------------|----------------------------------------------|
| 메인 페이지 표시     | `GET`     | `/`            | N/A                                               | `index.jsp` 또는 `dashboard.jsp` (세션에 따라 다름)|
| 로그인 페이지 표시    | `GET`    | `/user/login`  | N/A                                               | 로그인 페이지 (`login.jsp`)                       |
| 로그인 처리         | `POST`   | `/user/login`  | {<br>"username": "user", "password": "pass"<br>}  | 로그인 후 리디렉션: `/`                            |
| 회원 가입 페이지 표시 | `GET`    | `/user/join`   | N/A                                               | 회원 가입 페이지 (`join.jsp`)                      |
| 회원 가입 처리      | `POST`   | `/user/join`   | {<br> "username": "user", "password": "pass"<br>} | 회원 가입 후 리디렉션: `/user/login`                |
| 로그아웃 처리       | `POST`   | `/user/logout` | N/A                                               | 로그아웃 후 리디렉션: `/`                           |
| 목록 조회          | `GET`    | `/todo`        | N/A                                               | 목록 페이지 (`todo.jsp`)                          |

# API 엔드포인트

| CRUD  | HTTP Method | URI                        |
|-------|-------------|----------------------------|
| 전체 조회 | GET         | `/api/users/{userId}/todos`      |
| 특정 조회 | GET         | `/api/users/{userId}/todo/{todoId}`  |
| 목록 생성 | POST        | `/api/users/{userId}/todos`      |
| 목록 수정 | PUT         | `/api/users/{userId}/todos/{todoId}` |
| 목록 삭제 | DELETE      | `/api/users/{userIdid}/todos/{todoId}` |

# API 오류 코드

| HTTP 상태 코드 | 의미                 | 예시              | 응답 본문                                                        |
|------------|-----------------------|------------------|--------------------------------------------------------------|
| 400        | Bad Request           | 잘못된 요청         | {<br>  "error": "Bad Request”,<br>  "status": “400”<br>}     |
| 403        | Forbidden             | 권한 없는 사용자     | {<br>  "error": “Forbidden”,<br>  "status": 403<br>}         |
| 404        | Not Found             | 잘못된 API 엔드포인트 | {<br>  "error": “Not Found”,<br>  "status": 404<br>}         |
| 500        | Internal Server Error | 서버 오류           | {<br>  "error": “Internal Server Error”,<br>  "status": 500<br>} 
