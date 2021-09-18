<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<html lang="ko">
<head>
  <link rel="stylesheet" href="/resources/css/styles.css" />
  <link rel="stylesheet" href="/node_modules/@toast-ui/editor/dist/toastui-editor-viewer.css" />
  <script src="/node_modules/jquery/dist/jquery.min.js"></script>
	<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Get</title>
</head>
<body>
  <div id="wrap">
    <div id="container">
	    <header class="navbar">
      <div class="navbar_header">
        <div class="navbar_logo">
          <a href="/" class="logoImgLink"><img class="logoImg" src="/resources/img/logo-black.png"></a>
        </div>
        <div class="navbar_menu">
          
        </div>
      </div>
      <div class="navbar_userInfo">
      <sec:authorize access="isAnonymous()">
        <a href="/common/login" class="loginButton"><span>로그인</span></a>
<!--         <div class="divider"></div> -->
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
        <a href="" class="userInfoButton"><sec:authentication property="principal.username"/></a>
        <img src="/resources/img/down-fill.png" class="userInfoButtonImg"/>
        <div class="userInfo_popup">
          <div class="userInfo_container">
            <div class="userInfo_profileImg">
              <div class="circle-color" style="--b:10px;">
                <img src="/resources/img/logoMain1.jpg" class="profileImg"/>
              </div>
            </div>
            <div class="userInfo_id_container">
              <div class="userInfo_id">
                <span class="userInfo_name"><b><sec:authentication property="principal.username"/></b>님</span>
                <form role="form" method="post" action="/logout">
                  <a href="#" class="loginButton logout"><span>로그아웃</span></a>
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
              </div>
              <div class="userInfo_auth">${authName}</div>
              <div class="userInfo_Activities">
                <a href="">내가 쓴 글</a>
                <div class="divider"></div>
                <a href="">내가 올린 파일</a>
              </div>
            </div>
          </div>
        </div>
      </sec:authorize>
      </div>
    </header>
      <div class="front-img">
        <a href="/">
          <img src="/resources/img/building1.jpg" class="mainImg" />
        </a>
      </div>
      <div class="tab">
        <div class="tab_zone">
          <a href="https://github.com/hsC0de/toy1.git" target="_black">github: https://github.com/hsC0de/toy1.git</a>
        </div>
      </div>
	    <main class="article">
	      <div class="get">
	        <div class="get_tools">
            <div class="modify_tools">
              <sec:authentication property="principal" var="pinfo"/>
              <sec:authorize access="isAuthenticated()">
              <c:if test="${pinfo.username eq boardHtml.id}">
              <div class="get_btn btn_board_modify">
                <span>수정</span>
              </div>
              <div class="get_btn btn_board_delete">
                <span>삭제</span>
              </div>
              </c:if>
              </sec:authorize>
            </div>
            <div class="list_tools">
              <div class="get_btn btn_get_pre">
                <img src="/node_modules/bootstrap-icons/icons/chevron-compact-up.svg"/>
                <span>이전글</span>
              </div>
  	          <div class="get_btn btn_get_next">
  	            <img src="/node_modules/bootstrap-icons/icons/chevron-compact-down.svg"/>
                <span>다음글</span>
  	          </div>
  	          <div class="get_btn btn_board_list">
  	            <span>목록</span>
  	          </div>
            </div>
	        </div>
	        <div class="get_contents_container_box">
		        <div class="get_contents_container">
		          <div class="get_contents_header">
		            <div class="contents_kind">
		              <a href="#" class="contents_kind_button"> <span class="kind_button_val">〉</span></a>
		            </div>
		            <div class="contents_title">
		              <span></span>
		            </div>
		            <div class="contents_info">
		              <div class="profile_area">
		                <div class="profile_info">
		                  <div class="nick_box">
		                    <span></span>
		                  </div>
		                </div>
		                <div class="article_info">
		                  <span class="date"></span>
		                  <span class="cnt">조회 </span>
		                </div>
		              </div>
		              <div class="contents_tools">
		                <a href="#" role="button" class="contents_comments_button">
		                  <img src="/node_modules/bootstrap-icons/icons/chat-dots.svg"/><span id="refreshReplyCnt">댓글 </span>
		                </a>
				            <a href="#" class="contents_url_info">
				              URL 복사
				            </a>
				            <input type="text" id="copyUrl" style="position: absolute; left: -9999px;"/>
				            <div class="toast_url_copy_successful" style="display: none;">
				              URL이 복사되었습니다. 원하는 곳에 붙여 넣으세요.
				            </div>
				            <div class="contents_print">
				              <a id="articleTool" href="#" role="button" title="더보기" class="button_more">
				              </a>
				              <div id="articleTool" role="menu" class="layerMore">
				                <ul class="layer_list">
				                  <li class="layer_item">
				                    <a href="#" role="button" class="layer_button">인쇄하기</a>
				                  </li>
				                </ul>
				              </div>
				            </div>
		              </div>
		            </div>
		          </div>
	            <hr />
		          <div class="get_contents_article">
		            <div class="contents_mainText">
                   <div id="viewer" style="word-break:break-all;">
                   </div>
<!-- 		              <p class="text_view"> -->
<!-- 		                <span class="text_content" style="word-break:break-all;"></span> -->
<!-- 		              </p> -->
		            </div>
		            <div class="get_user_contents">
		              <a href="#" class="user_contents_list"><span></span>님의 게시글 더보기 〉</a>
		            </div>
		            <div class="contents_main_tools">
			            <div class="contents_like">
			            </div>
			            <div class="contents_comments_info">
			            </div>
		            </div>
		          </div>
		          <div class="get_contents_comments">
  		          <hr />
		            <div class="contents_comments_header">
			            <div class="contents_comments_title">
			              <span>댓글</span>
			            </div>
			            <ul class="contents_comments_tab_list">
			              <li class="comments_tab_item">
			                <a href="#" class="tab_item_button">등록순</a>
			              </li>
			              <li class="comments_tab_item">
	                    <a href="#" class="tab_item_button">최신순</a>
			              </li>
			            </ul>
			            <button type="button" class="comments_refresh_button"><img src="/node_modules/bootstrap-icons/icons/arrow-clockwise.svg"/></button>
		            </div>
		            <ul class="contents_comments_list">
		              <li id="#" class="commentsItem">
		                <div class="comments_area">
		                  <div class="commentsItem_id_box">
		                    <a id="#" href="#" role="button" aria-haspopup="true" aria-expanded="false" class="comment_nickname"></a>
		                  </div>
		                  <div class="commentsItem_text_box">
		                    <p class="comments_text_view">
		                      <span class="text_comment"></span>
		                    </p>
		                  </div>
		                  <div class="commentsItem_info_box">
		                    <span class="commentsItem_info_date">
		                    </span>
		                    <a href="#" role="button" class="comment_info_button">답글쓰기</a>
		                  </div>
	                  </div>
		              </li>
		              <li id="#" class="commentsItem commentItem-repl"></li>
		            </ul>
		          </div>
              <sec:authorize access="isAuthenticated()">
		          <div class="contents_comments_writer">
		            <div class="contents_comments_inbox">
		              <span class="contents_comments_name"><sec:authentication property='principal.username'/></span>
		              <textarea placeholder="댓글을 남겨보세요" rows="1" class="contents_comments_inbox_text" 
		              cols="80" style="overflow: hidden; overflow-wrap: break-word; height:1rem;"></textarea>
		            </div>
		            <div class="contents_comments_tools">
		              <div class="register_box">
		                <a href="#" role="button" class="btn_register">등록</a>
		              </div>
		            </div>
		          </div>
              </sec:authorize>
		        </div>
	        </div>
	        <div class="get_tools_bottom">
	          <div class="get_tool_write">
			        <div class="board_new">
			          <span><img src="/node_modules/bootstrap-icons/icons/pencil-square.svg"/>글쓰기</span>
			        </div>
              <div class="modify_tools">
                <sec:authorize access="isAuthenticated()">
                <c:if test="${pinfo.username eq boardHtml.id}">
                <div class="get_btn btn_board_modify">
                  <span>수정</span>
                </div>
                <div class="get_btn btn_board_delete">
                  <span>삭제</span>
                </div>
                </c:if>
                </sec:authorize>
              </div>
	          </div>
            <div class="get_tool_list">
              <div class="get_btn btn_board_list">
                <span>목록</span>
              </div>
              <div class="get_btn btn_top">
                <img src="/node_modules/bootstrap-icons/icons/caret-up-fill.svg"/><span>TOP</span>
              </div>
            </div>		        
	        </div>
	        <div class="relatedArticles">
	          <div class="article_board_title">
	            <strong class="title">
                
              </strong>
	            <span class="text"> 글</span>
	          </div>
	          <div class="relatedArticlesTabContainer">
	            <div class="relatedArticlesTabContainer_tab">
	              <div class="tab_content">
	                <ul class="relatedArticlesList">
	                  <li class="list_item">
	                    <div class="tit_area">
	                      <a href="#" target="_self" class="tit">
	                        <span>제목!!!</span>
	                      </a>
	                    </div>
	                    <div class="member_area">
	                      <a href="#" role="button" class="member">아이디</a>
	                    </div>
	                    <div class="date_area">
	                      2020.20.20
	                    </div>
	                  </li>
	                </ul>
	              </div>
	            </div>
	          </div>
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
  </div>
  <sec:authorize access="isAuthenticated()">
  <div id="tempUsername" style="display:none"><sec:authentication property='principal.username'/></div>
  </sec:authorize>
  <script type="text/javascript" src="/node_modules/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="/resources/js/reply.js"></script>
  <script type="text/javascript" src="/resources/js/get.js"></script>
  <script type="text/javascript" src="/resources/js/navbar.js"></script>
  <script type="text/javascript" src="/resources/js/util/autoSize.js"></script>
  <script type="text/javascript" src="/node_modules/@toast-ui/editor/dist/toastui-editor-viewer.js"></script>
  <script type="text/javascript">
    var csrfHeaderName = "${_csrf.headerName}";
    var csrfTokenValue="${_csrf.token}";
    var id = $("#tempUsername").text();
    autosize($(".contents_comments_inbox_text"));
    var board = ${board};
    var boardKind = board.kind; 
    
    openWritingPage(boardKind);
    function newlineReplacement(text){
      return text.replace(/(?:\r\n|\r|\n)/g, '<br/>').replace(/ /g, "&nbsp;");
    }
    
    function printContent() {
      $("body").append('<iframe name="print_iframe" id="print_iframe" width="0" height="0" style="display:none;"></iframe>');
      var print_contents = $(".get_contents_container_box").html();
      var print_head = $("head").html();
      $("#print_iframe").contents().find("head").html(print_head);
      $("#print_iframe").contents().find("body").html(print_contents);
      $("#print_iframe").focus();
      frames["print_iframe"].focus();
      frames["print_iframe"].print();
    }
    

    
//     window.addEventListener('beforeunload', () => {
//       var sp = $(".tab").offset().top;
//       $(window).scrollTop(sp);  
//     });
    
    $(function() {
      function getReplyList(rno) {
        
        $.ajax({
          url: "/reply/getReplyList",
          method: "get",
          data: {
            bno : board.bno,
            rno : rno
          },
          dataType: "json",
          error: function(error) {
            alert(error);
          },
          success: function(data) {
            
  	        var str = "";
  	        console.log(data);
  	        if(data.length > 0) {
  	          str += '<hr />';
              str += '<div class="contents_comments_header">';
              str += '<div class="contents_comments_title">';
              str += '<span>댓글</span>';
              str += '</div>';
              str += '<ul class="contents_comments_tab_list">';
              str += '<li class="comments_tab_item">';
              str += '<a href="#" class="tab_item_button">등록순</a>';
              str += '</li>';
              str += '<li class="comments_tab_item">';
              str += '<a href="#" class="tab_item_button">최신순</a>';
              str += '</li>';
              str += '</ul>';
              str += '<button type="button" class="comments_refresh_button"><img src="/node_modules/bootstrap-icons/icons/arrow-clockwise.svg"/></button>';
              str += '</div>';
              str += '<ul class="contents_comments_list">';
             
    	        for(var i = 0; i < data.length; i++) {
    	          str += '<li id="#" class="commentsItem">';
    	          str += '<div class="comments_area">';
    	          str += '<div class="commentsItem_id_box">';
    	          str += '<a id="#" href="#" role="button" aria-haspopup="true" aria-expanded="false" class="comment_nickname">' + data[i].id + '</a>';
    	          str += '<span class="commentsItem_info_box">' + replyService.displayGap(data[i].gap, data[i].reg_date) + '</span>'
    	          str += '</div>';
    	          str += '<div class="commentsItem_text_box">';
    	          str += '<p class="comments_text_view">';
    	          str += '<span class="text_comment">' + newlineReplacement(data[i].comments) + '</span>';
    	          str += '</p>';
    	          str += '</div>';
    	          str += '<div class="commentsItem_info_box">';
    	          str += '<span class="commentsItem_info_date">' + data[i].reg_date + '</span>';
    	          str += '<a href="#" role="button" class="comment_info_button">답글쓰기</a>';
    	          str += '</div>';
    	          str += '</div>';
    	          str += '</li>';
    	          
    	        }
    	        str += '</ul>';
  	        }
  	        else {
  	          str += '<sec:authorize access="isAuthenticated()">';
  	          str += '<hr />';
              str += '<div class="contents_comments_header">';
              str += '<div class="contents_comments_title">';
              str += '<span>댓글</span>';
              str += '</div>';
              str += '</div>';
              str += '</sec:authorize>';
  	        }
  	        $(".get_contents_comments").html(str);
  	        
  	        for(var i = 0; i < $(".comment_nickname").length; i++) {
  	          var listItem = $(".comment_nickname")[i];
  	          var name = listItem.innerText;
    	        if(id === name) {
    	          listItem.closest(".commentsItem").classList.add('commentsItemMineBg');
    	        }
  	        }
          }
        });
      }
      
      console.log(board);
     
      $(".kind_button_val").html(board.menu_nm + " 〉");
      $(".contents_title span").html(board.title);
      $(".nick_box span").html(board.id);
      $(".cnt").html("조회 " + board.cnt);
      $("#refreshReplyCnt").html("댓글 " + board.replyCnt);
      $(".user_contents_list span").text(board.id);
//       $(".text_content").html(newlineReplacement(board.content));
      const viewer = new toastui.Editor({
        el: document.querySelector('#viewer'),
        initialValue: board.content
      });

      $(".date").text(board.reg_date);
      
      $(".contents_kind_button").on("click", function(e) {
        e.preventDefault();
        e.stopPropagation();
        location.href = "/board/list?page=1&userDisplay=15&kind=" + board.kind;
      });
      
      $(".contents_comments_button").on("click", function(e) {  
        e.preventDefault();
        e.stopPropagation();
        var sp = $(".get_contents_comments").offset().top;
        console.log(sp);
        $(window).scrollTop(Number(sp));
      });
      
      $(".btn_top").on("click", function(e) {
        
        e.preventDefault();
        e.stopPropagation();
        var sp = $(".get").offset().top;
        console.log(sp);
        $(window).scrollTop(Number(sp));
      });
      
      $(".btn_register").on("click", function(e) {
        e.preventDefault();
        
        var comments = $(".contents_comments_inbox_text").val();
        
        console.log(comments);
        
        if(!comments) {
          alert("내용을 입력하세요.");
          return;
        }
        
        if(confirm("등록하시겠습니까?")) {
          
          $.post({
            url: "/reply/regReply",
            data: { id: id
                  , comments: comments
                  , bno: board.bno },
            dataType: "json",
            beforeSend: function(xhr) {
              xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
            },
            success: function(res) {
              alert("등록되었습니다.");
              $(".contents_comments_inbox_text").val("").height(17);
              getReplyList(sortState);
              $("#refreshReplyCnt").html("댓글 " + res.REPLYCNT);
            },
            error: function() {
              alert("등록에 실패했습니다.");
            }
          });
        }
      });
      
      
      var sortState = '';
      getReplyList(sortState);
      
      
      $(".contents_url_info").on("click", function(e) {
        
        e.preventDefault();
        e.stopPropagation();
        var copyText = $("#copyUrl");
        copyText.attr("value", location.href);
        copyText.select();
        document.execCommand('copy');
        $(".toast_url_copy_successful").fadeIn(400).delay(4000).fadeOut(500);
      });
      
      $(".layer_button").on("click", function(e) {

        e.preventDefault();
        e.stopPropagation();
        $("iframe").remove("#print_iframe");
        printContent();
      });
      
      $(document).on("click", ".comments_refresh_button", function() {
        
        getReplyList(sortState);
      });
      
      
      $(document).on("click", ".tab_item_button", function(e) {
        
        e.preventDefault();
        e.stopPropagation();
        var sort = $(this).text();
        console.log(sort);
        
        if(sort === "등록순") {

          sortState = '';
	        getReplyList(sortState);
        }
        else if(sort === "최신순") {
          sortState = 'desc';
          getReplyList(sortState);
        }
      });
      
      $(".btn_get_next").on("click", function() {
        
        if(board.nextContent) {
          
          location.href = "/board/get?bno=" + board.nextContent + "&" + board.paging.listLink.substring(1, board.paging.listLink.length);
        }
      });
      
      $(".btn_get_pre").on("click", function() {
        
        if(board.preContent) {
          
          location.href = "/board/get?bno=" + board.preContent + "&" + board.paging.listLink.substring(1, board.paging.listLink.length);
        }
      });

      if(!board.nextContent) {
        $(".btn_get_next").css("display", "none");
      }
      if(!board.preContent) {
        $(".btn_get_pre").css("display", "none");
      }
      
      $(".btn_board_list").on("click", function() {
        
        location.href = "/board/list" + board.paging.listLink;
      });
      
      $(".btn_board_modify").on("click", function() {
        
        window.open("/board/modify/" + board.bno + board.paging.listLink + "&id=" + board.id);
      });
      
      $(".btn_board_delete").on("click", function() {
        
        if(confirm("정말 삭제하시겠습니까?")) {
          
          location.href = "/board/delete/" + board.bno + board.paging.listLink + "&id=" + board.id;
        }
      });
      
    });

  </script>
</body>
</html>
