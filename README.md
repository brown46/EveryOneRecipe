# 모두의 레시피🍽

팀원: 고정찬(조장), 김진태, 박새롬, 오경훈
<br>
원본 git 주소: https://github.com/wjdcks1238/EveryOneRecipe
## Contents
1. 소개
2. 설계 주안점
3. 사용기술 및 개발환경
4. 프로젝트 기능 구현
5. Schedule
6. Document

---
## 소개
* 최근 고물가 추세로 인하여 외식 수요가 줄어들고, 각자 요리를 하려는 수요가 늘어남에 따라, 요리 레시피를 공유하는 웹 사이트를 구현하는데 목표를 두었습니다.
---
## 설계 주안점
* 유저들 끼리의 정보를 공유 하는 커뮤니티 기능을 중점으로 구현을 하였으며, 이외에 커뮤니티 기능에 따른 관리 페이지를 통해, 커뮤니티에서 신고 들어온 유저들에 대한 제제 기능 및 통계 추이 표출 등, 커뮤니티 기능 전반적으로 제공을 하기 위해 노력 했습니다.

1. 웹페이지를 이용한 간편한 회원가입 / 로그인(네이버API 포함) 시스템
2. JSP, CSS, jQuery 을 이용한 사용자가 이해가기 쉬운 UI의 구성
3. JSP를 이용한 각각의 페이지 프레임 구성
4. SPRING MVC를 통한 게시판 및 홈페이지, 각종 커뮤니티 구성
5. AJAX를 이용한 화면전환 처리
6. 다양한 API(네이버 로그인, 차트, Mail APU, Cloudinary(파일 클라우드 서버)를 활용

---
## 사용기술 및 개발환경
* OS : Microsoft Windows 10, Microsoft Windows 11, Apple macOS Ventura 13.2.1
* Language : Java11, Servlet/JSP, HTML5, CSS3, JavaScript, XML
* Web Application Server :  Apache Tomcat 9.0
* File Cloud Server : Cloudinary 1.31.0
* DataBase : Oracle 11g Express Edition
* Framework : Spring 5.3.19, MyBatis 3.5.6, Ajax, jQuery 3.6.3, Bootstrap v4.0.0-alpha.6
* Maven Library
  * aspectj weaver- 1.6.10
  * logback - 1.2.3
  * log4jdbc - 1.16
  * lombok - 1.18.24
  * spring-jdbc - 5.3.19
  * ojdbc8 - 21.1.0.0
  * commons-dbcp - 1.4
  * mybatis-spring - 1.3.2
  * Spring security - 4.2.1.RELEASE
  * ScribeJava- 2.8.1, JSON In Java – 20180813
  * json-simple - 1.1.1
  * gson - 2.8.9, spring-websocket - 5.3.19
  * Jackson Databind- 2.14.1
  * commons-io - 2.6
  * commons-fileupload - 1.4
  * javax.mail
  * com.sun.mail - 1.6.2
* OpenAPI
  * https://data.mafra.go.kr/opendata/data/indexOpenDataDetail.do?data_id=20150827000000000465&filter_ty=O&getBack=G&sort_id=&s_data_nm=&instt_id=&cl_code=&shareYn=?data_id=20150827000000000465
  * https://data.mafra.go.kr/opendata/data/indexOpenDataDetail.do?data_id=20150827000000000464&filter_ty=O&getBack=&sort_id=&s_data_nm=&instt_id=&cl_code=&shareYn=?data_id=20150827000000000464
  * https://data.mafra.go.kr/opendata/data/indexOpenDataDetail.do?data_id=20150827000000000466&filter_ty=O&getBack=G&sort_id=&s_data_nm=&instt_id=&cl_code=&shareYn=?data_id=20150827000000000466
* Development Tool : SqlDeveloper 17.2.0.188.1159
* IDE : STS 3.9.12.RELEASE
* Version Manage System : Github Desktop 3.2.0


---
## Schedule
<img width="938" alt="일정관리 개인용" src="https://github.com/brown46/EveryOneRecipe/assets/111834753/0e0e8afc-8673-48ee-9601-3bb1fa17861c">



---
## Document

1. 기능정의서
![요구사항정의서](https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/5cd74823-a095-4926-9784-57f9a3db233e)


2. 유스케이스 다이어그램
![유스케이스](https://github.com/wjdcks1238/EveryOneRecipe/assets/12677904/d6d29134-7fd6-42e6-9123-aba3536e726b)

3. UI설계서

4. ERD
![ERD](https://github.com/wjdcks1238/EveryOneRecipe/assets/12677904/07b4c336-3da4-4b8b-930c-5e9002abc4f1)

5. 클래스 다이어그램
![Model!weekboard_0](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/c9736e81-d9e4-4561-927b-b76f64e22303)
![Model1!board_1](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/82bf223c-500f-41c2-9d0f-777138436117)
![Model2!comment_2](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/0a376368-974a-4577-8a71-6eb4ef644cab)
![Model3!replycomment_3](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/451b18c5-725d-4559-b040-4e565365b11f)
![Model4!followmapping_4](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/d0c8f857-ebf5-4063-a6c4-7c0638030bb9)
![Model5!member_5](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/2b0e8675-6c5f-46c7-8d1e-05fd19fbb9c3)
![Model6!postBookmark_6](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/833e3fe6-b72d-495f-afe5-e7bf700fd88e)
![Model7!postlike_7](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/a807ca3a-d087-46d5-bf9b-aa12dfb89e1a)
![Model8!shopping_10](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/c0b5cd87-47e0-4be1-9424-a25c9a5a1586)
![Model9!boardsearch_8](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/289df47f-caa4-47fd-b2fc-b47f9684f111)
![Model10!chat_9](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/f4fbd355-82ef-4928-bb5c-539576a0862c)
![Model11!home_11](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/bdb52009-7f08-4191-a2bc-43b3136e6831)
![Model12!admin_12](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/08229325-dd13-4cd7-8335-a455335c0e9a)
![Model13!login_13](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/23320846-593e-4119-b885-d1a4d864de56)
![Model14!report_14](https://github.com/wjdcks1238/EveryOneRecipe/assets/113161447/f3e4cf9d-9550-427c-8d6e-ac697560a93b)

6. 시퀀스 다이어그램
![회원가입 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/0f8bad1a-c23d-49c1-a182-080d999d7d94)
![로그인 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/befbd439-aa43-4e8b-834c-697e019ab135)
![CK에디터 파일 업로드 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/70d4f5c0-4940-4e6d-8804-386a4775094b)
![채팅 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/eb0b712d-bb80-448f-ae86-5563775c8746)
![북마크 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/e804fadd-288c-450b-aeb3-0272f0b0910c)
![좋아요 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/29d19e18-fe73-4515-9634-4cee3a4f1d14)
![검색 시퀀스다이어그램](https://github.com/wjdcks1238/EveryOneRecipe/assets/114970464/de8e3210-a8ed-4cb2-830e-3aa5b38c6603)

---
## 프로젝트 기능 구현


<h2>게시물(작성/수정, 상세/전체보기)</h2>
</br>
</br>
</br>
<img width="1920" alt="게시글 작성,수정 " src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/113f5689-3868-4337-a94a-3c9439f50bc6">
</br>
</br>
</br>
<img width="1920" alt="게시글 작성, 수정2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/83a42807-a8d5-4eea-b76c-e5728194047f">
</br>
</br>
</br>
<img width="1920" alt="게시글 작성, 수정3" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/91b1fd86-b887-40af-865c-970f5bec77db">
</br>
</br>
</br>
<hr>
</br>
</br>
</br>
<img width="1920" alt="게시글 상세보기" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/91afd5dd-628f-41ad-b6c7-cc60920d0ed2">
</br>
</br>
</br>
<img width="1920" alt="게시글 상세보기2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/fd8622d9-fe64-4668-82ec-e6091d77e4ed">
</br>
</br>
</br>
<hr>
</br>
</br>
</br>
<img width="1920" alt="전체 게시글" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/859d3a42-7d10-465f-a898-268c18532b01">
</br>
</br>
</br>
<img width="1920" alt="전체 게시글2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/6696bd60-ae8c-4d78-87e3-f92d864080a8">

<h2>회원 프로필</h2>
</br>
</br>
</br>
<img width="1920" alt="내 정보 보기" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/28208096-ea5d-4cf7-bcfb-2eee6cad66db">
</br>
</br>
</br>
<img width="1920" alt="내 정보 보기2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/ae766ac2-94b6-4004-9c84-8464c92cab07">



<h2>소셜 네트워크 기능(회원 팔로우, 좋아요, 북마크, 레시피 추천)</h2>
</br>
</br>
</br>
<img width="1920" alt="좋아요, 북마크, 팔로우" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/1f94fcf2-972f-43d1-81a5-ac2933fceb48">
</br>
</br>
</br>
<hr>
</br>
</br>
<img width="1920" alt="레시피 추천" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/a67d0a90-2ecc-4ef5-9ccf-01bbb1f411d1">
</br>
</br>
</br>
<img width="1920" alt="레시피 추천2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/ecfb5181-b5ac-408a-8b35-15334fbf35fa">
</br>
</br>
</br>
<img width="1920" alt="레시피 추천3" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/2b699b85-b073-4e9b-866b-1593b5c64b78">



<h2>관리페이지(신고 관리, 게시글/댓글 블라인드, 회원 제재)</h2>
</br>
</br>
<img width="1920" alt="게시글, 댓글 신고 관리" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/a61ff844-2af3-4583-aca4-e1e8cfeaff46">
</br>
</br>
</br>
<img width="1920" alt="게시글, 댓글 신고 관리2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/f51a8aad-69bd-443a-af1b-22c97b958ec0">
</br>
</br>
</br>
<img width="1920" alt="게시글, 댓글 신고 관리3" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/a625e78c-f17d-40c6-8601-286f0a0ed7d4">
</br>
</br>
</br>
<hr>
</br>
</br>
</br>
<img width="1920" alt="비속어, 금지어 관리" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/21c8c2bb-2dd0-4f75-b185-c97fad157fb7">
</br>
</br>
</br>
<img width="1920" alt="비속어, 금지어 관리2" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/eaa4dd42-1bf0-4373-8cb6-662a9d5ab41e">
</br>
</br>
</br>
<hr>
</br>
</br>
</br>
<img width="1920" alt="회원 차단 관리" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/00210c5d-8767-4402-834d-719402ea59fb">
</br>
</br>
</br>
<img width="1920" alt="회원 차단 관리3" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/f7317434-1a8b-43e5-abe3-532f97c4338c">
</br>
</br>
</br>
<img width="1920" alt="회원 차단 관리4" src="https://github.com/wjdcks1238/EveryOneRecipe/assets/111834753/2240c4e1-5a58-4754-be34-f61c63f7c6b7">



