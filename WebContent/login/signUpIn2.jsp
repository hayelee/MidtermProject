<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
    String loginMsg = (String)session.getAttribute("loginMsg");
   	session.removeAttribute("loginMsg");
   %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/login/login.css">
   <link rel="icon" type="image/x-icon" href="/DaangnProject/assets/favicon.ico" />
  <title>Daangn</title>
<style>
.map_wrap {position:relative;width:100%;height:350px;}
.title {font-weight:bold;display:block;}
.hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
#centerAddr {display:block;margin-top:2px;font-weight: normal;}
.bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e719101244762760ce768ead3d05c1c3&libraries=services"></script>
</head>
<body>
    <div id="container" class="container">
      <!-- FORM SECTION -->
      <div class="row">
        <!-- SIGN UP -->
        <div class="col align-items-center flex-col sign-up" method="post">
          <div class="form-wrapper align-items-center">
            <div class="form sign-up">
              <div class="input-group">
                <i class='bx bxs-user'></i>
                <input type="text" id="memId" placeholder="I D" value="">
                <div style="text-align: left;">
                   <button type="button" id="idChk">중복검사</button>
                   <span id="disp"></span>
                  </div>
              </div>
              <div class="input-group">
                <i class='bx bxs-lock-alt'></i>
                <input type="password" id="memPw"placeholder="Password" value="">
              </div>
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="text" id="memNic" placeholder="Nic" value="">
              </div>
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="text" id="memName" placeholder="Name" value="">
              </div>
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="text" id="memTel" placeholder="Tel" value="">
              </div>
              
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="hidden" id="memAddr1" placeholder="Addr">
              </div>
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="text" id="memMail" placeholder="Email">
              </div>
              <div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>
</div>
<!-- <form action="/AAA/updateRegion.do" method="get"> -->
<div id="clickLatlng"></div>

              

              <button onclick="toggle()" id="signUpBtn">
                Sign up
              </button>
              <p>
                <span>
                  Already have an account?
                </span>
                <b onclick="toggle()" class="pointer">
                  Sign in here
                </b>
              </p>
            </div>
          </div>
        
        </div>
        <!-- END SIGN UP -->
        <!-- SIGN IN -->
        <div class="col align-items-center flex-col sign-in">
          <div class="form-wrapper align-items-center">
            <div class="form sign-in">
            
            
            
               <!-- 로그인로그인로그인 -->
            
            
            <form name="loginForm" action="/DaangnProject/Login.do" method="post">
                 <div class="input-group">
                   <i class='bx bxs-user'></i>
                   <input type="text" name="memId" placeholder="Username" id="loginMemId" value="" >
                 </div>
                 <div class="input-group">
                   <i class='bx bxs-lock-alt'></i>
                   <input type="password" name="memPw" placeholder="Password" id="loginMemPw" value="" >
                 </div>
<!--                  <button id="signInBtn" type="button" onclick="loginCheck()">  -->
                 <button id="signInBtn" type="submit" > 
                   Sign in
                 </button>
            </form>


            <!-- 아이디 찾기 -->
              <p>
                <b onclick="location.href='/DaangnProject/login/findId.jsp'" class="pointer">
                  Forgot id?
                </b>&nbsp;&nbsp;
                <b onclick="location.href='/DaangnProject/login/findPw.jsp'" class="pointer">
                  Forgot password?
                </b>
              </p>
              <p>
                <span>
                  Don't have an account?
                </span>
                <b onclick="toggle()" class="pointer">
                  Sign up here
                </b>
              </p>
            </div>
          </div>
          <div class="form-wrapper">
      
          </div>
        <v>
        <!-- END SIGN IN -->
      </div>
      <!-- END FORM SECTION -->
      <!-- CONTENT SECTION -->
      <div class="row content-row">
        <!-- SIGN IN CONTENT -->
        <div class="col align-items-center flex-col">
          <div class="text sign-in">
            <h2>
              Welcome
            </h2>
    
          </div>
          <div class="img sign-in">
      
          </div>
        </div>
        <!-- END SIGN IN CONTENT -->
        <!-- SIGN UP CONTENT -->
        <div class="col align-items-center flex-col">
          <div class="img sign-up">
          
          </div>
          <div class="text sign-up">
            <h2>
              Join with us
            </h2>
    
          </div>
        </div>
        <!-- END SIGN UP CONTENT -->
      </div>
      <!-- END CONTENT SECTION -->
 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>  
    <script>
    
   let container = document.getElementById('container')
    
//    toggle = () => {
//      container.classList.toggle('sign-in')
//      container.classList.toggle('sign-up')
//    }

   function toggle(){
     container.classList.toggle('sign-in')
     container.classList.toggle('sign-up')      
   }
   
//    setTimeout(() => {
//      container.classList.add('sign-in')
//    }, 200)
   setTimeout(function(){
      container.classList.add('sign-in')
   },200);
    
    
    
      var v_signUpBtn = document.querySelector('#signUpBtn');
    
       v_signUpBtn.addEventListener('click',function(){
       
       var v_uId = document.querySelector('#memId').value;
       var v_uPw = document.querySelector('#memPw').value;
       var v_uNic = document.querySelector('#memNic').value;
       var v_uName = document.querySelector('#memName').value;
       var v_uTel = document.querySelector('#memTel').value;
       var v_uAddr1 = document.querySelector('#memAddr1').value; //지도api정보로 대체해야 함
       var v_uMail = document.querySelector('#memMail').value;
        // JSP에서 백틱을 사용해서 변수처리기호 사용시 적용안됌! 주석에서도 쓰면 안된다.
       var data = "userId=" + v_uId + "&userPw=" + v_uPw + "&userNic=" + v_uNic + "&userName=" + v_uName + "&userTel=" + v_uTel + "&userAddr1=" + v_uAddr1 + "&userMail=" + v_uMail;
       

//        console.log(data);
      
       var req = new XMLHttpRequest();
       req.open('post','./signUp.jsp',true);
       req.onreadystatechange = function(){
          if(req.readyState == 4 && req.status == 200){
//              var jsObj = JSON.parse(req.responseText);
//              if(jsObj.rst == "ok"){
//                 성공시 페이지 이동
                console.log('hi!!');
                alert("회원가입 완료!");
//                 location.replace();
//              }else{
//                 console.log('bye');
                // 실패시 현재페이지 머무르기..
//                 location.reload();
//              }
          }
       }
       req.setRequestHeader('content-type','application/x-www-form-urlencoded');
       req.send(data);
       
       });
    
  
       

        
   var v_signIn = document.querySelector('#signInBtn');
    
       v_signIn.addEventListener('click',function(){
       
       var v_uId = document.querySelector('#loginMemId').value;
       var v_uPw = document.querySelector('#loginMemPw').value;
        // JSP에서 백틱을 사용해서 변수처리기호 사용시 적용안됌! 주석에서도 쓰면 안된다.
       var data = "userId=" + v_uId + "&userPw=" + v_uPw;
       

//        console.log(v_uId);
//        console.log(v_uPw);
//        console.log(data);
      
       var req = new XMLHttpRequest();
       req.open('post','./signIn.jsp',true);
       req.onreadystatechange = function(){
          if(req.readyState == 4 && req.status == 200){
             var jsObj = JSON.parse(req.responseText);
             if(jsObj.rst == "ok"){
                // 성공시 페이지 이동
               alert("로그인 성공!");
                console.log('hi');
                x(v_uId, v_uPw);
                
             }else{
                console.log('bye');
                alert("로그인 실패");
                // 실패시 현재페이지 머무르기..
                location.replace("");
             }
          }
       }
       req.setRequestHeader('content-type','application/x-www-form-urlencoded');
       req.send(data);
       
    });
    
    function x(arg1, arg2){
       var req = new XMLHttpRequest();
       req.open('post','/DaangnProject/Main.do',true);
       req.setRequestHeader('content-type','application/x-www-form-urlencoded');
       req.send('memId='+arg1+'&memPw='+arg2);
    }
       
  //Id 중복검사
   //   $('#id').on('keyup',function(){})
   $('#idChk').on('click',function(){
      var v_id = $('#memId').val();
      var v_disp = $('#disp');
      
      v_disp.text(""); // 다 지웠을때 사용불가,가능 표시 초기화
      // console.log(v_id.trim().length); trim()->공백카운트x
      if(!v_id.trim().length) return;
      
      $.ajax({
         type : 'post',
         url : 'idCheck.jsp',
         data : {userId : v_id.trim()}, // 공백이 있으면 사용불가가 뜸
         dataType : 'json',
         success : function(rst){
            //console.log(rst);
            if(rst.code == "ok"){
               v_disp.text(rst.msg).css('color','green');
            }else{
               v_disp.text(rst.msg).css('color','red');
            }
         },
         error : function(xhr){
            alert("상태:" + xhr.status);
         }
      });
   });
  
  //입력양식
//   function loginCheck(){
//     	var loginForm = document.loginForm;
//     	var memId = document.getElementById('loginMemId').value;
//     	var memPw = document.getElementById('loginMemPw').value;
    	
//     	if(memId == ""){
//     		alert("아이디를 입력해주세요.");
//     	} else if (memPw == ""){
//     		alert("비밀번호를 입력해주세요.");
//     	} else {
//     		loginForm.submit();
//     	}
//     }
  
  
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
    level: 1 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
   
   // GeoLocation을 이용해서 접속 위치를 얻어옵니다
   navigator.geolocation.getCurrentPosition(function(position) {
       
       var lat = position.coords.latitude, // 위도
           lon = position.coords.longitude; // 경도
       
       var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
           message = '<div style="padding:5px;">나의 위치!</div>'; // 인포윈도우에 표시될 내용입니다
       
//        마커와 인포윈도우를 표시합니다
       displayMarker(locPosition, message);
       map.setCenter(locPosition);
       
       
       $.ajax({
   	    type : "get", //디폴트값 get이므로 안써도 됨
   	    url : "https://dapi.kakao.com/v2/local/geo/coord2regioncode.json?x="+lon+"&y="+lat,
   	    dataType : "json",
   	    headers : {'Authorization': 'KakaoAK 056de8a0406ff7a44e6ff2173687b332'},
   	    success : function(data){
   	    	
   	        console.log(data);
   	        console.log(data.documents); //Array
   	        console.log(data.documents[0].address_name);
   	        $('#memAddr1').val(data.documents[0].address_name);
//    	        $('#data1').text('JSON_법정동_address_name값 : ' + data.documents[0].address_name);
//    	        $('#data2').text('JSON_행정동_address_name값 : ' + data.documents[1].address_name);
   	        
   	        //B타입(법정동) 쓸지 H타입(행정동) 쓸지 정하기
   	        
   	        
//    	        $('#signUpBtn').click(function(){ //submit 버튼 클릭 하였을 떄
//            		$.ajax({
//    		            url: 'signUp.jsp',
//    		            dataType: 'json',
//    		            data: {"address":data.documents[0].address_name},
//    		            error: function() {
//    		                console.log('통신실패!!');
//    		            },
//    		            success: function(data) {
// //    		            	location.href ='/signUp.jsp';
//    		                console.log("통신데이터 값 : " + data);
//    		            }
//           		 });
//       		 });
   	    },
   	    error : function(){
   	        console.log('실패');
   	    }
   	});
     });
   
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
   
   var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
       message = 'geolocation을 사용할수 없어요..';
   map.setCenter(locPosition);
//    displayMarker(locPosition, message);
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

   // 마커를 생성합니다
   var marker = new kakao.maps.Marker({  
       map: map, 
       position: locPosition
   }); 
   
   var iwContent = message, // 인포윈도우에 표시할 내용
//        iwRemoveable = true;
       iwRemoveable = false;

   // 인포윈도우를 생성합니다
   var infowindow = new kakao.maps.InfoWindow({
       content : iwContent,
       removable : iwRemoveable
   });
   
   // 인포윈도우를 마커위에 표시합니다 
   infowindow.open(map, marker);
   
   // 지도 중심좌표를 접속위치로 변경합니다
   map.setCenter(locPosition);      
} 


//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
   infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
searchAddrFromCoords(map.getCenter(), displayCenterInfo);


//중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
   searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
   // 좌표로 행정동 주소 정보를 요청합니다
   geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

function searchDetailAddrFromCoords(coords, callback) {
   // 좌표로 법정동 상세 주소 정보를 요청합니다
   geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
}

//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
   if (status === kakao.maps.services.Status.OK) {
       var infoDiv = document.getElementById('centerAddr');

       for(var i = 0; i < result.length; i++) {
           // 행정동의 region_type 값은 'H' 이므로
           if (result[i].region_type === 'H') {
               infoDiv.innerHTML = result[i].address_name;
               break;
           }
       }
   } 
}


    </script>
    </div>
<%
	if(loginMsg!=null && loginMsg.equals("no")){
%>   
<script>
		alert("로그인 실패");
</script>
<%
	}

%>		



</body>
</html>