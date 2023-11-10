<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  
  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  <style>
        /* 새로 추가한 스타일 */
        
.chat-toggle-button {
    position: fixed;
    bottom: -25px;
    right: -15px;
    width: 80px;
    height: 80px;
    background-color: #9A0A0A;
    color: #ffffff;
    border-radius: 50%;
    text-align: center;
    line-height: 50px;
    font-size: 24px;
    cursor: pointer;
    transition: all 0.3s ease;
    margin-right: 40px;
    margin-bottom: 40px;
    float: right;
    z-index: 2000;
	 box-shadow: 
        0px 0px 40px rgba(50, 50, 93, 0.25),
        0px 30px 60px rgba(0, 0, 0, 0.3),
        0px -2px 10px rgba(10, 37, 64, 0.35) inset;
        }
      


        .chat-toggle-button:hover {
            background-color: #D83B44;
        }

        /* 챗봇몸체 */
        .chat-body {
          
         
            max-height: 400px;
            overflow-y: auto;
        }

        /* 버튼 박스 */
        .button-container {
            font-size: 24px;
            margin: 20px;
            padding: 20px;
            box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
            border-radius: 20px;
            background-color: #f9f9f9;
            font-weight: bolder;
        }

        /* 버튼 CSS */
        .button-container button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 10px;
            background-color: #9A0A0A;
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        .chat-container {
            display: none;
            position: fixed;
            bottom: 100px;
            width: 500px;
            right: 0;
            float: right;
            
            z-index: 1500;
            margin-right: 20px;
        }

        .chat-container.visible {
            display: block;
        }
        
          *{font-family: 'Noto sans KR', sans-serif;}
          
        
.material-symbols-outlined {
  font-variation-settings:
  'FILL' 0,
  'wght' 400,
  'GRAD' 0,
  'opsz' 24
}
</style>
    </style>
</head>
<body>
    <div class="chat-toggle-button material-symbols-outlined" onclick="toggleChat()"><img src="resources/mainIndex/chatBot.png" alt="메인이미지"></div>
<!--@@@@@@@@@@@@@@@@@@@@@메인 인덱스@@@@@@@@@@@@@@@@@@@@@@@@@-->
    <div class="chat-body">
        <!-- 챗봇 대화창 컨테이너 -->
        <div class="chat-container" id="chat-container">
            <!-- 챗봇 헤더 -->
            <!-- 버튼 컨테이너 -->
            <div class="button-container" id="button-container">
              <h6><pre id="textToReveal" style="font-family: 'Noto sans KR', sans-serif;">

안녕하세요 

AI가 되고싶은 챗봇

NILILI 입니다


무엇을 도와드릴까요?
                </pre></h6>
                <button onclick="introduceArea()">홈페이지소개 시켜줘</button>
                <button onclick="whatSubscribeArea()">구독을 시작하면?</button>
                <button onclick="goEnrollArea()">회원가입 하고 싶어</button>
                <button onclick="goFindIDPwdArea()">아이디를 잃어버렸어 </button>
                <button onclick="goSubscribeArea()">구독하고 싶어</button>
            </div>
        </div>
        <div class="chat-container" id="introduce" style="display: none;">
<!--@@@@@@@@@@@@@@@@@@@@@홈페이지 소개@@@@@@@@@@@@@@@@@@@@@@@@@-->
            <div class="button-container" id="button-container-introduce">
               <h6> <pre id="text2" style="font-family: 'Noto sans KR', sans-serif;">

저희 홈페이지는 여행가고 싶은 분들을 위한 

기본적인 서울 소개 홈페이지 입니다

주말에 간단하게 나들이 가고싶은데

어딜 갈지 모르는 당신에게 

서울의 방방곳곳 숨어있는 명소를 

간단하게 소개시켜드리거나 

간단한 게임을 통해 여행지를 추천해드리는

사이트입니다.
 
                                </pre></h6>
             
                <button onclick="toggleChat()" id="backsite">이전 목록으로</button>
            </div>
        </div>
<!--@@@@@@@@@@@@@@@@@@@@@구독소개@@@@@@@@@@@@@@@@@@@@@@@@-->

        <div class="chat-container" id="whatSubscribe" style="display: none;">

            <div class="button-container" id="button-container-introduce">
<h6> <pre id="text4" style="font-family: 'Noto sans KR', sans-serif;">

닐리리는 구독을 신청하시면

보다 재밌게 여행지를 고를수있게

간단한 게임을 구현해놨습니다

더구나 한달에 한번씩 레터를 보내

닐리리가 추천한 여행지를 소개해드립니다

</pre></h6>
               
                <button onclick="toggleChat()" id="backsite3">이전 목록으로</button>
            </div>
        </div>
<!--@@@@@@@@@@@@@@@@@@@@@회원가입@@@@@@@@@@@@@@@@@@@@@@@@@-->

        <div class="chat-container" id="goEnrollForm" style="display: none;">

            <div class="button-container" id="button-container-introduce">
<h6> <pre id="text3" style="font-family: 'Noto sans KR', sans-serif;">

NILILI의 멤버가 되고싶으시다구요?

요청을 듣고 제가 밑에 회원가입 버튼을 만들어왔습니다 

어서 닐리리의 든든한 친구가 되어주세요!

</pre></h6>
           <a href="http://localhost:8888/semi/enrollForm.mb"><button>회원가입</button></a>     
                <button onclick="toggleChat()" id="backsite2">이전 목록으로</button>
            </div>
        </div>

<!--@@@@@@@@@@@@@@@@@@@@@아디비번찾기@@@@@@@@@@@@@@@@@@@@@@@@@-->

        <div class="chat-container" id="goFindPwdForm" style="display: none;">

            <div class="button-container" id="button-container-introduce">
<h6> <pre id="text5" style="font-family: 'Noto sans KR', sans-serif;">

아이디 비밀번호를 까먹으셨다구요?

제가 바로 버튼을 만들어왔습니다

어서 찾으시고 로그인 하신다음에

NILILI를 즐겨주세요!

</pre></h6>
               <a href="http://localhost:8888/semi/views/member/find_Id_Pwd.jsp"><button id="">ID PW 찾기</button></a> 
                <button onclick="toggleChat()" id="backsite4">이전 목록으로</button>
            </div>
        </div>

<!--@@@@@@@@@@@@@@@@@@@@@구독강요@@@@@@@@@@@@@@@@@@@@@@@@@-->

        <div class="chat-container" id="goSubscribeForm" style="display: none;">

            <div class="button-container" id="button-container-introduce">
<h6> <pre id="text6" style="font-family: 'Noto sans KR', sans-serif;">

닐리리의 매력에 더욱더 빠지고 싶으신가요?

제가 바로 구독버튼을 만들어왔습니다

어서 구독을 하셔서 닐리리와 함께 고민을 해결해보세요!

구독자 분들한테는 더욱더 프리미엄한 서비스가 제공됩니다!


</pre></h6>
                <button id="">구독하기</button>
                <button onclick="toggleChat()" id="backsite5">이전 목록으로</button>
            </div>
        </div>       



    </div>

    <script>
        $("#backsite").click(function(){

            $("#introduce").css("display", "none");
            $("#chatContainer").css("display", "block");
        });
 
        $("#backsite2").click(function(){

        $("#goEnrollForm").css("display", "none");
        $("#chatContainer").css("display", "block");
        });


        $("#backsite3").click(function(){

        $("#whatSubscribe").css("display", "none");
        $("#chatContainer").css("display", "block");
        });

        $("#backsite4").click(function(){

        $("#goFindPwdForm").css("display", "none");
        $("#chatContainer").css("display", "block");
        });

        
        $("#backsite5").click(function(){

        $("#goSubscribeForm").css("display", "none");
        $("#chatContainer").css("display", "block");
        });


        // 토글하는 함수
        function toggleChat() {
            var chatContainer = $("#chat-container");
            var openChat = $("#openChat");
            var textToReveal = $("#textToReveal, #textToReveal-open");
            var chatBody = $(".chat-body");

            if (chatContainer.css("display") === "none") {
                // 채팅창 열기
                chatContainer.css("display", "block");
                textToReveal.each(function () {
                    revealText($(this));
                });
            } else {
                // 채팅창 닫기
                chatContainer.css("display", "none");
            }
        }

        // 질문하기 버튼을 누르면 새 창으로 전환하는 함수
  

        function introduceArea() {
            var chatContainer = $("#chat-container");
            var introduce = $("#introduce");
            var text2 = $("#text2");

            chatContainer.css("display", "none");
            introduce.css("display", "block");
            text2.each(function () {
                revealText($(this));
            });
        }
 
        function whatSubscribeArea() {
            var chatContainer = $("#chat-container");
            var whatSubscribe = $("#whatSubscribe");
            var text4 = $("#text4");

            chatContainer.css("display", "none");
            whatSubscribe.css("display", "block");
            text4.each(function () {
                revealText($(this));
            });
        }


        function goEnrollArea() {
            var chatContainer = $("#chat-container");
            var goEnrollForm = $("#goEnrollForm");
            var text3 = $("#text3");

            chatContainer.css("display", "none");
            goEnrollForm.css("display", "block");
            text3.each(function () {
                revealText($(this));
            });
        }

        function goFindIDPwdArea() {
            var chatContainer = $("#chat-container");
            var goFindPwdForm = $("#goFindPwdForm");
            var text5 = $("#text5");

            chatContainer.css("display", "none");
            goFindPwdForm.css("display", "block");
            text5.each(function () {
                revealText($(this));
            });
        }

        function goSubscribeArea() {
            var chatContainer = $("#chat-container");
            var goSubscribeForm = $("#goSubscribeForm");
            var text6 = $("#text6");

            chatContainer.css("display", "none");
            goSubscribeForm.css("display", "block");
            text6.each(function () {
                revealText($(this));
            });
        }

        function revealText(element) {
            var text = element.html();
            element.html("");
            var index = 0;
            var timer = setInterval(function () {
                element.html(element.html() + text.charAt(index));
                index++;
                if (index === text.length) {
                    clearInterval(timer);
                }
            }, 30);
        }


        
        
    </script>
</body>
</html>