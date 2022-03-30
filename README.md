# Seoul_MATJIP
서울 맛집 프로젝트

### 프로젝트 설명
> - 서울 맛집 정보를 모아 둘 수 있는 프로젝트
>
> - 인스타그램 프로젝트를 활용하고 네이버 블로그 포멧을 참고
>
> - 평소 가고 싶거나 자주 갔던 맛집들을 블로그 형식으로 저장해 모아 두고 싶었고  
>여러 사람과 맛집 정보를 공유하기 위해 개발

### 포트폴리오
>[포트폴리오](https://github.com/ghks027/Seoul_MATJIP/blob/master/%ED%8F%AC%EB%A5%B4%ED%8F%B4%EB%A6%AC%EC%98%A4.pdf)

### 설계
- UI 계획 : [Kakao OvenApp](https://ovenapp.io/view/SrDhsw6Bnhqw6YXrhoZLAMxlQcJMsxBt/)

- 데이터 베이스, URL 설계 : [Google SpreadSheets](https://docs.google.com/spreadsheets/d/1UaPcXruXQlxM6RArJytPx7p6ZT8o-9LqwU7SQ8-Hp6I/edit#gid=0)

### 주요기능
- 회원가입
  - package : [com.ganghwan.seoulMatjip.user.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/user)
  - view : [/webapp/WEB-INF/jsp/user/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/user/signUp.jsp)

- 로그인
  - package : [com.ganghwan.seoulMatjip.user.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/user)
  - view : [/webapp/WEB-INF/jsp/user/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/user/signIn.jsp)

- 게시글 작성하기(게시글 지역 선택, 이미지 파일 첨부)
  - package : [com.ganghwan.seoulMatjip.post.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/post)
  - view : [/webapp/WEB-INF/jsp/post/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/post/postCreate.jsp)

- 게시글 댓글 달기
  - package : [com.ganghwan.seoulMatjip.comment.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/post/comment)
  - view : [/webapp/WEB-INF/jsp/post/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/post/postDetail.jsp)

- 게시글 찜 하기
  - package : [com.ganghwan.seoulMatjip.like.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/post/like)
  - view : [/webapp/WEB-INF/jsp/post/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/post/postList.jsp)

- 게시글 목록보기, 내용 보기
  - package : [com.ganghwan.seoulMatjip.post.*](https://github.com/ghks027/Seoul_MATJIP/tree/master/src/main/java/com/ganghwan/seoulMatjip/post)
  - view : [/webapp/WEB-INF/jsp/post/*](https://github.com/ghks027/Seoul_MATJIP/blob/master/src/main/webapp/WEB-INF/jsp/post/postList.jsp)

### 데모

### 외부 라이브러리 라이센스
- Tomcat [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
- Mysql [GPLv2 or proprietary](https://www.gnu.org/licenses/gpl-3.0.html)
- Spring framework [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
- Mybatis [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
- Bootstrap [MIT License](https://opensource.org/licenses/MIT)
- jQuery [MIT License](https://opensource.org/licenses/MIT)

### 구현 못한 기능
- 게시글 목록에서 지역별 게시글을 볼 수 있는 기능
- 제목 검핵을 통한 게시글 찾는 기능
- 찜 개수가 많은 순서로 게시글 정렬 기능
- 기존의 게시글을 수정하는 기능

### 향후 계획 중인 기능
- 유저 개인 프로필 기능
- 프로필 내에서 본인이 쓴 게시글 목록 보는 기능
- 프로필 내에서 본인이 찜 한 게시글 목록 보는 기능
- 유저 관심 지역에 관한 게시글 목록 보기 기능
- 유저 프로필 사진을 추가하고 수정하는 기능
