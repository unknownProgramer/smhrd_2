# Coloring

<h1>1. Coloring 메인 페이지</h1>
<h2>1. 1 로그인, 로그아웃 기능</h2>
<h3>＃HTML</h3>

![image](https://user-images.githubusercontent.com/91005194/148245280-91b0052c-d0d6-435d-8153-d93f9909ba39.png)

상단 a태그 클릭시 모달이 띄워지도록 설계했으며 회원가입 같은 경우 다른창으로 이동되게 만들었다. 회원가입 같은 경우 SNS 연동에 염두를 두었기 때문에 따로 jsp를 생성했다.

```html
<c:if test="${userVO==null}"> // 로그인이 되지 않았을 때
						<li>
			<!-- modal 시작 --> 
							<a id="loginBtn" style="cursor: pointer;">LOG
								IN</a>
							<div class="modal fade" id="loginModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="login-form" style="margin-bottom: 10%">
										<form action="${cpath}/Login.do" method="post">
											<input type="text" name="user_id" class="text-field"
												placeholder="아이디"> <input type="password"
												name="user_pwd" class="text-field" placeholder="비밀번호">
											<input type="submit" value="로그인" class="submit-btn">
										</form>
									</div>
								</div>
							</div> 
			<!-- modal 끝 -->
						</li>
						<li><a id="joinBtn" style="margin-left: 5%; cursor: pointer;"
							onClick="location.href='join'">JOIN</a></li>
					</c:if>
					<c:if test="${userVO!=null}"> // 로그인이 되었을 때
						<li style="font-size: 16px; margin-top: 3%">Welcome,
							${userVO.getUser_name()}.</li>
						<li><a id="mypageBtn" onClick="location.href='${cpath}/'"
							style="cursor: pointer;">HOME</a></li>
						<li><a onClick="location.href='${cpath}/mypage'"
							style="cursor: pointer;">MYPAGE</a></li>
						<li><a id="logoutBtn" onClick="location.href='Logout.do'"
							style="cursor: pointer;">LOG OUT</a></li>
					</c:if>
```

```jsx
$('#loginBtn').click(function(e) {
			e.preventDefault();
			$('#loginModal').modal('show');
		});
```

<h3>＃How To Do?</h3>
로그인, 로그아웃같은 기능은 잘 알려져있고 구글링하면 쉽게 찾을 수 있으니 따로 설명은 하지 않겠다. <br><br>

<h2>1. 2 단색 검색기능 및 툴팁기능</h2>
<h3>＃HTML</h3>
div 태그의 background 속성을 단색으로 설정했고, 버튼을 구현하기 위해 pointer 속성을 추가했다.

```html
<div class="color">
	<ul class="bycolor">
		<li>
			<div class="colorDiv" id="red"
				style="background-color: #ff2000; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Red</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="orange"
				style="background-color: #ff7c00; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Orange</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="hotpink"
				style="background-color: #f52394; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Hot Pink</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="purple"
				style="background-color: purple; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Purple</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="blue"
				style="background-color: blue; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Blue</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="sky"
				style="background-color: #00b2d4; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Sky</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="green"
				style="background-color: #00ab00; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Green</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="greenyellow"
				style="background-color: #90e200; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Green Yellow</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="yellow"
				style="background-color: #ffcf00; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Yellow</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="violet"
				style="background-color: #7f00ff; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Violet</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="gray"
				style="background-color: #c4c4c4; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Gray</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="brown"
				style="background-color: #593111; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">Brown</span>
			</div>
		</li>
		<li>
			<div class="colorDiv" id="white"
				style="background-color: white; border: 1px solid black; cursor: pointer;">
				<span class="tooltiptext tooltip-bottom">White</span>
			</div>
		</li>

	</ul>
</div>
```

툴팁기능 같은 경우 구현한 색상버튼에 hover 이벤트를 css로 설정하였다.

```css
<style>
/* 툴팁 기본 스타일 설정 시작 */
.colorDiv {
	position: relative;
	display: block;
}

.colorDiv .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute;
	z-index: 1;
}

.colorDiv:hover .tooltiptext {
	visibility: visible;
}
/* 툴팁 기본 스타일 설정 끝 */

/* 툴팁 화살표 기본 스타일 설정 시작 */
.colorDiv .tooltiptext::after {
	content: " ";
	position: absolute;
	border-style: solid;
	border-width: 5px;
}
/* 툴팁 화살표 기본 스타일 설정 끝 */

/* 왼쪽 툴팁 시작 */
.colorDiv .tooltip-left {
	top: -5px;
	right: 105%;
}

.colorDiv .tooltip-left::after {
	top: 50%;
	left: 100%;
	margin-top: -5px;
	border-color: transparent transparent transparent black;
}
/* 왼쪽 툴팁 끝 */

/* 오른쪽 툴팁 시작 */
.colorDiv .tooltip-right {
	top: -5px;
	left: 105%;
}

.colorDiv .tooltip-right::after {
	top: 50%;
	right: 100%;
	margin-top: -5px;
	border-color: transparent black transparent transparent;
}
/* 오른쪽 툴팁 끝 */

/* 위쪽 툴팁 시작 */
.colorDiv .tooltip-top {
	width: 120px;
	bottom: 150%;
	left: 50%;
	margin-left: -60px;
}
.colorDiv .tooltip-top::after {
	top: 100%;
	left: 50%;
	margin-left: -5px;
	border-color: black transparent transparent transparent;
}
/* 위쪽 툴팁 끝 */

/* 아래쪽 툴팁 시작 */
.colorDiv .tooltip-bottom {
	width: 120px;
	top: 150%;
	left: 50%;
	margin-left: -60px;
	z-index: 500;
}
.colorDiv .tooltip-bottom::after {
	bottom: 100%;
	left: 50%;
	margin-left: -5px;
	border-color: transparent transparent black transparent;
	z-index: 500;
}
</style>
```
<h3>＃How To Do?</h3>
미리 div 태그의 id 속성에 색상 이름을 지정해 둔 후, 클릭시 id 속성을 input 태그 안에 넣고 클릭하게 했다.

```jsx
$(".colorDiv").click(function() {
			$('#inputText').val(this.id);
			$('#searchColorBtn').click();
		});
```
SQL QUERRY 문(select, delete, insert)은 생략하겠다.

<h2>1. 3 검색 및 저장기능</h2>
<h3>#HTML</h3>
화면상에 저장과 삭제를 표현하기 위해 img 태그를 토글로 표현했다.

```jsx
success : function() {
	// 이미지가 빈 하트라면 채워진 하트를 내놓는 success 함수
	if (check == '${cpath}/resources/images/fullHeart.png') {
		el.attr('src','${cpath}/resources/images/emptyHeart.png');
	}
	// 그 반대의 경우에도 success 함수를 이용해 표현했다.
	if (check == '${cpath}/resources/images/emptyHeart.png') {
		el.attr('src','${cpath}/resources/images/fullHeart.png');
	}
}
```

검색기능 같은 경우 form 태그로 Ajax 통신을 하게끔 코드를 작성했다.

```html
<form class="palette-search-form" onsubmit="return false"
						style="margin-top: 40px">
						<div class="input-group" style="margin: 0% 20% 0% 20%;">
							<input onkeypress="if( event.keyCode==13 ){detectLang();}"
								id="inputText" type="text" class="form-control"
								placeholder="Search" style="height: 40px;">
							<div class="input-group-btn">
								<button onclick="detectLang()" class="btn btn-default"
									type="button" id="searchColorBtn"
									style="border: 1px solid #C0C0C0; height: 40px">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
```
<h3>#How to do?</h3>
사용자가 입력한 Text값은 모델에서 생성된 결과를 보여주기 때문에 모델의 구현방식에 대해선 언급하지 않겠다.

DB에 저장하기 위한 value 값을 Ajax 함수로 받아와 mapper와 연결시켰다.

```jsx
// 저장하기 기능(검색결과)
$(document).on("click",".savePalette",
				function() {
					var palette_color1 = $(this).parent().find(
							'div:eq(0)').find('div:eq(0)').children()
							.html();
					var palette_color2 = $(this).parent().find(
							'div:eq(0)').find('div:eq(1)').children()
							.html();
					var palette_color3 = $(this).parent().find(
							'div:eq(0)').find('div:eq(2)').children()
							.html();
					var palette_color4 = $(this).parent().find(
							'div:eq(0)').find('div:eq(3)').children()
							.html();
					var palette_color5 = $(this).parent().find(
							'div:eq(0)').find('div:eq(4)').children()
							.html();
					var palette_name = $("#inputText").val();
					var user_seq = "${userVO.user_seq}";
					var el = $(this);
					var check = $(this).attr('src');
					$.ajax({
								url : "insertMyPalettes.do",
								type : "POST",
								data : {
									"palette_name" : palette_name,
									"palette_color1" : palette_color1,
									"palette_color2" : palette_color2,
									"palette_color3" : palette_color3,
									"palette_color4" : palette_color4,
									"palette_color5" : palette_color5,
									"user_seq" : user_seq
								},
								dataType : "text",
								success : function() {
									if (check == '${cpath}/resources/images/fullHeart.png') {
										el.attr('src','${cpath}/resources/images/emptyHeart.png');
									}
									if (check == '${cpath}/resources/images/emptyHeart.png') {
										el.attr('src','${cpath}/resources/images/fullHeart.png');
									}
								},
								error : function() {
									alert("로그인이 필요한 서비스입니다.");
									document.querySelector("#loginBtn").click();
								}
							});
				})
```

저장하기 이전에, html의 img 태그를 토글로 설정했기 때문에 무작정 저장기능만 만든다면 웹페이지에선 삭제되는것 처럼 보여도 실제 DB엔 계속 저장만 될것이다.

따라서 DB에 해당 값이 있는지 확인하는 mapper를 생성했으며, DB에 해당 값이 없다면 저장, 그 반대라면 삭제하는 기능을 Controller에 구현했다.

```java
// 내정보에 팔레트 저장하기
	@PostMapping("/insertMyPalettes.do")
	public String insertMyPalettes(userPalettes vo) {
		String name = vo.getPalette_name();
		// DB에 해당 값이 있는지 확인하는 mapper
		List<userPalettes> check = mapper.checkPaletteName(name);
		if (check.size() == 0) {
		// DB에 해당 값이 없다면 저장
			mapper.insertMyPalettes(vo);
		} else if (check.size() != 0) {
		// DB에 해당 값이 있다면 삭제
			mapper.deleteMyPaletteToName(name);
		}
		return "ok";
	}
```

SQL QUERRY 문(select, delete, insert)은 생략하겠다.

<h2>1. 4 랜덤 팔레트 생성기능</h2>
<h3>#HTML</h3>
mapper로 받아온 데이터를 웹에 뿌려주는 c:forEach문을 작성했다.

랜덤으로 생성된 팔레트 같은 경우, 테스트용으로 모델에 돌려본 8천개의 팔레트 데이터를 DB에 저장후 그중 16개의 팔레트를 무작위로 뽑아낸것이다. seqeunce는 있으나 팔레트의 이름같은 경우, 모델의 결과값에 따라 달라지기 때문에 같은 Table로 묶지 않고 다른 Table에 저장한 값을 가져왔다.

```java
<ul class="palettes">
				<c:forEach var="vo" items="${list}">
					<li><div>
							<div class="palette_color"
								style="background-color: ${vo.palette_color1};">
								<span class="hex">${vo.palette_color1}</span> <a href="#"></a>
							</div>
							<div class="palette_color"
								style="background-color: ${vo.palette_color2};">
								<span class="hex">${vo.palette_color2}</span>
							</div>
							<div class="palette_color"
								style="background-color: ${vo.palette_color3};">
								<span class="hex">${vo.palette_color3}</span>
							</div>
							<div class="palette_color"
								style="background-color: ${vo.palette_color4};">
								<span class="hex">${vo.palette_color4}</span>
							</div>
							<div class="palette_color"
								style="background-color: ${vo.palette_color5};">
								<span class="hex">${vo.palette_color5}</span>
							</div>
						</div> <a href='${cpath}/paletteDetail.do?seq=${vo.palette_seq}'
						class='palettes_name' id='PaletteName'>${PList[vo.palette_seq].txt_content}</a>
						<img src='${cpath}/resources/images/emptyHeart.png'
						class='savePaletteRandom saveBtn tooltip-bottom' id='emptyHeart'></li>
				</c:forEach>
			</ul>
```
<h3>#How to do?</h3>
Controller에서 "/" url 접근시 list를 반환하게끔 하는 mapper와 연동시켰다.

```java
@RequestMapping("/")
	public String main(Model model) {
		List<Palettes> list = mapper.getMainList();
		List<InputText> PList = mapper.getPaletteName(); // 팔레트의 이름을 뱉는 mapper
		model.addAttribute("list",list);
		model.addAttribute("PList", PList);
		return "main";
	}
```

SQL QUERRY 문(select)은 생략하겠다.
