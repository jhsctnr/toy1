<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
  <link rel="stylesheet" href="/resources/css/styles.css" />
	<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Board</title>
</head>
<body>
  <div id="wrap">
    <header class="navbar">
      <div class="navbar_header">
        <div class="navbar_logo">
        </div>
        <div class="navbar_menu">
          <div class="navbar_menu_element">
            <ul>
              <li>
                <a href="/board/list">게시판</a>
                <ul>
                  <li>공지글</li>
                  <li>자유게시판</li>
                  <li>회원게시판</li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="navbar_userInfo">
        <a href="#"><img/></a>
        <a href="#"><img/></a>
        <a href="#"><img/></a>
      </div>
    </header>
    <div class="front-img">
      <a href="#">
        <img src="http://placehold.it/861x150" />
      </a>
    </div>
    <main class="article">
      <div class="board">
        <div class="board_title">
          <span>00게시판</span>
        </div>
        <table class="board_table">
          <thead>
            <tr>
              <th>
                 
              </th>
	            <th>
	              제목
	            </th>
	            <th>
	              작성자
              </th>
              <th>
                작성일
              </th>
              <th>
                조회
              </th>
              <th>
                좋아요<img src="/node_modules/bootstrap-icons/icons/chevron-compact-down.svg"/>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                1
              </td>
              <td>
                안녕하세요 가입했습니다.
              </td>
              <td>
                개발자준비중
              </td>
              <td>
                2021.08.12
              </td>
              <td>
                2
              </td>
              <td>
                1
              </td>
            </tr>
            <tr>
              <td>
                1
              </td>
              <td>
                안녕하세요 가입했습니다.
              </td>
              <td>
                개발자준비중
              </td>
              <td>
                2021.08.12
              </td>
              <td>
                2
              </td>
              <td>
                1
              </td>
            </tr>
            <tr>
              <td>
                1
              </td>
              <td>
                안녕하세요 가입했습니다.
              </td>
              <td>
                개발자준비중
              </td>
              <td>
                2021.08.12
              </td>
              <td>
                2
              </td>
              <td>
                1
              </td>
            </tr>
            <tr>
              <td>
                1
              </td>
              <td>
                안녕하세요 가입했습니다.
              </td>
              <td>
                개발자준비중
              </td>
              <td>
                2021.08.12
              </td>
              <td>
                2
              </td>
              <td>
                1
              </td>
            </tr>
          </tbody>
          
        </table>
        <div class="board_new">
          <span><img src="/node_modules/bootstrap-icons/icons/pencil-square.svg"/>글쓰기</span>
        </div>
        <div class="board_footer">
          <div class="board_footer_paging">
          </div>
          <div class="board_footer_searching">
          </div>
        </div>
      </div>
    </main>
    
  </div>
</body>
</html>
