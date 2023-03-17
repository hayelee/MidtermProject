<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/login/login.css">
  <title>Document</title>
<style>
.map_wrap {position:relative;width:100%;height:350px;}
.title {font-weight:bold;display:block;}
.hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
#centerAddr {display:block;margin-top:2px;font-weight: normal;}
.bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
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
                <input type="text" id="memAddr1" placeholder="Addr">
              </div>
              <div class="input-group">
                <i class='bx bx-mail-send'></i>
                <input type="text" id="memMail" placeholder="Email">
              </div>

              

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
            
            
            <form action="/DaangnProject/Login.do" method="post">
                 <div class="input-group">
                   <i class='bx bxs-user'></i>
                   <input type="text" name="memId" placeholder="Username" id="loginMemId" value="" >
                 </div>
                 <div class="input-group">
                   <i class='bx bxs-lock-alt'></i>
                   <input type="password" name="memPw" placeholder="Password" id="loginMemPw" value="" >
                 </div>
                 <button id="signInBtn" type="submit"> 
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
        </>
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
       var v_uAddr1 = document.querySelector('#memAddr1').value;
       var v_uMail = document.querySelector('#memMail').value;
        // JSP에서 백틱을 사용해서 변수처리기호 사용시 적용안됌! 주석에서도 쓰면 안된다.
       var data = "userId=" + v_uId + "&userPw=" + v_uPw + "&userNic=" + v_uNic + "&userName=" + v_uName + "&userTel=" + v_uTel + "&userAddr1=" + v_uAddr1 + "&userMail=" + v_uMail;
       

//        console.log(data);
      
       var req = new XMLHttpRequest();
       req.open('post','./signUp.jsp',true);
       req.onreadystatechange = function(){
          if(req.readyState == 4 && req.status == 200){
             var jsObj = JSON.parse(req.responseText);
             if(jsObj.rst == "ok"){
                // 성공시 페이지 이동
                console.log('hi');
                location.replace();
             }else{
                console.log('bye');
                // 실패시 현재페이지 머무르기..
                location.reload();
             }
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
                console.log('hi');
                x(v_uId, v_uPw);
             }else{
                console.log('bye');
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
    </script>
    </div>

</body>
</html>