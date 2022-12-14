<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">@import url("/lanternProject/css/common.css?f");</style>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Font online-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      
<!--        Animate.css-->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                
                                
        <link rel="stylesheet" href="../../css/updateForm.css?f" >
        
        <!-- Google JQuery CDN -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        
        <script src="../../js2/jsf.js"></script>
		<script type="text/javascript">
		function del(member_no) {
			var con = confirm("탈퇴 하시겠습니까?");
			if(con) location.href="delete.do?member_no="+member_no;
			else alert("탈퇴가 취소 되었습니다.");
		}
		</script>
</head>
    <body>
        <div>
           <div class="panel shadow1">
                <form class="update-form" action="updateResult.do?prevUrl=${prevUrl }" method="post" name="frm" onsubmit="chk()" enctype="multipart/form-data">
                    <!-- 엔터키 전송 막기 -->
					<div style="display:none">
						<input type="submit" onclick="return false"/>
						<input type="text"/>
					</div>
                    <div class="animated fadeIn d12">
                        <h2 class="animated fadeInUp animate1" id="title-update">회원정보 수정</h2>
                    </div>
						<!-- 프로필 -->
					<div class="profile animated fadeInUp animate2">
						<div id="image_container" style="width:60px; height:60px; position:relative; top:40px; left:50px;">
							<img src="/lanternProject/images/${member.profile }" alt="프로필사진" style="width:100%; height:100%">
						</div>													
							<label for="f4" class="file_profile"></label>
							<input type="file" id="f4" name="profile" onchange="setProfile(event)" value="${member.profile}">
					</div>
					<p>
					<br>
                    <fieldset id="update-fieldset">
						<input class="login animated fadeInUp animate2" id="f1" type="text" name="id" readonly="readonly" value="${member.id }" placeholder="${member.id }">
						<input class="login animated fadeInUp animate3" type="password" name="password" placeholder="비밀번호" required="required" > 
						<input class="login animated fadeInUp animate3" type="password" name="confirmPassword" placeholder="비밀번호 확인" required="required" onChange="chkPassword()"> 
						<input class="login animated fadeInUp animate4" id="f2" type="text" name="name" value="${member.name }" placeholder="${member.name }">
						<input class="login animated fadeInUp animate5" name="email" type="email" readonly="readonly" placeholder="${member.email }" value="${member.email }">
						<input class="login animated fadeInUp animate6" id="f3" type="tel" name="phone" value="${member.phone }" placeholder="${member.phone }">
                    </fieldset>
                    <input type="submit" id="update-form-submit" class="update_form button animated fadeInUp animate7" value="회원정보 수정">
               <br> <a class="animated fadeInUp animate7"id="delete" onclick="del(${member.member_no})" style="text-decoration: underline;">회원탈퇴</a>
                </form>
            </div>
        </div>
    </body>
</html>