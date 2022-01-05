<h1>2. Coloring 마이페이지</h1>

![image](https://user-images.githubusercontent.com/91005194/148254469-e60368c8-c857-4923-991a-f055fc7616d8.png)

<h2>2. 1 마이페이지 정보</h2>
<h3># HTML</h3>
session으로 받아온 userVO정보를 table에 뿌려주는 html을 작성했다.

```html
<section id="portfolio">
		<!-- <div class="container"> -->
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="section-title">
					<h2>
						<b>INFOMATION</b>
					</h2>
					<div class="myinfo_table">
						<table cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<th>아이디</th>
									<td>${userVO.getUser_id()}</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>${userVO.getUser_email()}</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>${userVO.getUser_name()}</td>
								</tr>
								<tr>
									<th>핸드폰번호</th>
									<td>${userVO.getUser_phone()}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<h2>
						<b>My Favorites</b>
					</h2>
					<div class="palettes_list">
						<ul id="palettes_result" class="palettes">
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
```
<h3># How to do?</h3>
따로 기능은 정의하지 않았고 jsp로 이동하는 mapper만 생성했다.

```java
// 마이페이지
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
```
<h2>2. 2 내가 저장한 팔레트 관리 기능</h2>
<h3># HTML</h3>
userVO의 seqeunce번호로 Ajax 통신을 하는 javaScript 코드를 작성했다.

```jsx
$(document).ready(function() {
			loadPalettes();
		});

		function loadPalettes() {
			var user_seq = ${userVO.user_seq}
			$.ajax({
				url : "${cpath}/getMyPalettes.do",
				type : "GET",
				data : {
					"user_seq" : user_seq
				},
				dataType : "json",
				success : showPalettes,
				error : function() {
					alert("error");
				}
			});
		}

		function showPalettes(data) {
			for (let i = 0; i < data.length; i++) {
				var view = "<li>"
				view += "<div>";
				view += "<div class='palette_color' style='background-color: "+data[i].palette_color1+";'>";
				view += "<span class='hex'>" + data[i].palette_color1 + "</span>";
				view += "</div>";
				view += "<div class='palette_color' style='background-color: "+data[i].palette_color2+";'>";
				view += "<span class='hex'>" + data[i].palette_color2 + "</span>";
				view += "</div>";
				view += "<div class='palette_color' style='background-color: "+data[i].palette_color3+";'>";
				view += "<span class='hex'>" + data[i].palette_color3 + "</span>";
				view += "</div>";
				view += "<div class='palette_color' style='background-color: "+data[i].palette_color4+";'>";
				view += "<span class='hex'>" + data[i].palette_color4 + "</span>";
				view += "</div>";
				view += "<div class='palette_color' style='background-color: "+data[i].palette_color5+";'>";
				view += "<span class='hex'>" + data[i].palette_color5 + "</span>";
				view += "</div>";
				view += "</div>";
				view += "<a href='/web/paletteDetail.do?seq="+ data[i].palette_seq +"' class='palettes_name' id='PaletteName'>" + data[i].palette_name + "</a>";
				view += "<img onclick='deleteMyPalette(" + data[i].palette_seq + ")' src='${cpath}/resources/images/deleteIcon.png' class='deleteIcon'>";
				view += "</li>";
				$("#palettes_result").append(view);
			}
		}
```
<h3># How to do?</h3>
저장된 팔레트를 보여주는 기능같은 경우 DB에 저장된 팔레트 리스트를 불러오는 mapper를 구현했다.

```java
// 내정보에 저장한 팔레트 불러오기
	@RequestMapping("/getMyPalettes.do")
	public List<userPalettes> main(int user_seq) {
		List<userPalettes> list = mapper.getMyPalettes(user_seq);
		return list;
	}
```

삭제 기능같은 경우엔 DB에 저장된 seqeunce번호에 접근해 컬럼을 삭제하는 mapper를 생성하여 Ajax 통신으로 처리했다.

```jsx
// 팔레트 삭제
		function deleteMyPalette(seq) {
			$.ajax({
				url : "${cpath}/deleteMyPalette.do",
				type : "get",
				data : {
					"seq" : seq
				},
				success : function(){location.reload();},
				error : function() {
					alert("error")
				}
			})
		}
```

```java
// 내정보에 저장한 팔레트 불러오기
	@RequestMapping("/getMyPalettes.do")
	public List<userPalettes> main(int user_seq) {
		List<userPalettes> list = mapper.getMyPalettes(user_seq);
		return list;
	}
```
