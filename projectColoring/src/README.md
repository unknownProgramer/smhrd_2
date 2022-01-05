<h1>3. Coloring 상세페이지</h1>

![image](https://user-images.githubusercontent.com/91005194/148256782-e4575598-6408-4d7c-959c-ae89ec5ea584.png)

<h2>3. 1 메인페이지에 있는 랜덤 생성한 팔레트의 상세정보</h2>

<h3># HTML</h3>
사실 html같은 경우엔 1번과 2번이 거의 동일하다. 2번같은 경우엔 userPalette(내가 저장한 팔레트의 정보가 담긴 Table)에 저장된 DB에 Select문으로 접근한 다음, mapper로 뿌려주기만 하면 되지만, 1번같은 경우엔 Palettes(랜덤생성한 팔레트의 정보가 담긴 Table)에 이름이 저장되어 있지 않기 때문에 2번의 mapper와 조금 다르게 구현해야 했다.

1번같은 경우, 팔레트의 정보와 이름을 & 속성을 사용해 queryString으로 처리했다. & 속성을 사용하면 queryString에 두가지 정보를 보낼 수 있다.

```html
<a href='${cpath}/paletteDetailRandom.do?seq=${vo.palette_seq}
&name=${PList[vo.palette_seq].txt_content}'
class='palettes_name' id='PaletteName'>${PList[vo.palette_seq].txt_content}</a>
```

그 후, mapper를 통해 전달된 List를 웹에 뿌려주는 코드를 작성했다.

```html
<section id="portfolio">
		<div class="color-info">
			<div class="section-title">
				<h2 style="text-align: center;">
					<b>SAVED NAME : ${vo.palette_name}</b>
				</h2>
				<table>
					<colgroup>
						<col width="20%">
						<col width="70%">
					</colgroup>
					<tbody>
						<tr>
							<th>Color</th>
							<th>Information</th>
						</tr>
						<tr>
							<td class="color-pre" style="text-align: center;"><span
								class="color-display" style="background: ${vo.palette_color1};">
							</span></td>
							<td>
								<ul>
									<li><span id="name1"></span></li>
								</ul>
								<ul>
									<li>HEX : <span class="hex" id="hex1">${vo.palette_color1}</span></li>
								</ul>
								<ul>
									<li id="rgb1"></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class="color-pre" style="text-align: center;"><span
								class="color-display" style="background: ${vo.palette_color2};">
							</span></td>
							<td>
								<ul>
									<li><span id="name2"></span></li>
								</ul>
								<ul>
									<li>HEX : <span class="hex" id="hex2">${vo.palette_color2}</span></li>
								</ul>
								<ul>
									<li id="rgb2"></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class="color-pre" style="text-align: center;"><span
								class="color-display" style="background: ${vo.palette_color3};">
							</span></td>
							<td>
								<ul>
									<li><span id="name3"></span></li>
								</ul>
								<ul>
									<li>HEX : <span class="hex" id="hex3">${vo.palette_color3}</span></li>
								</ul>
								<ul>
									<li id="rgb3"></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class="color-pre" style="text-align: center;"><span
								class="color-display" style="background: ${vo.palette_color4};">
							</span></td>
							<td>
								<ul>
									<li><span id="name4"></span></li>
								</ul>
								<ul>
									<li>HEX : <span class="hex" id="hex4">${vo.palette_color4}</span></li>
								</ul>
								<ul>
									<li id="rgb4"></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td class="color-pre" style="text-align: center;"><span
								class="color-display" style="background: ${vo.palette_color5};">
							</span></td>
							<td>
								<ul>
									<li><span id="name5"></span></li>
								</ul>
								<ul>
									<li>HEX : <span class="hex" id="hex5">${vo.palette_color5}</span></li>
								</ul>
								<ul>
									<li id="rgb5"></li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section>
```
<h3># How to do?</h3>
앞서 설명했다 시피 1번 웹페이지가 뿌려주는 List엔 Palettes VO가 들어있다. Palettes VO엔 팔레트의 이름이 없기 때문에 queryString으로 mapper에 전달해준 팔레트의 이름을 userPalettes VO로 묶어서 PaletteDetailRandom.jsp 파일로 보냈다.

쉽게 설명해보겠다. 우선 Palettes와 userPalettes의 VO를 살펴보자.

```java
public class Palettes {
	private int palette_seq;
	private String palette_color1;
	private String palette_color2;
	private String palette_color3;
	private String palette_color4;
	private String palette_color5;
	private String regdit_date;
	private int user_seq;
}
```

```java
public class userPalettes {
	private int palette_seq;
	private String palette_name;
	private String palette_color1;
	private String palette_color2;
	private String palette_color3;
	private String palette_color4;
	private String palette_color5;
	private String regdit_date;
	private int user_seq;
	
}
```

palettes엔 palette_name field값이 없다. 이는 설계상의 오류일 가능성이 높다. DB 설계가 중요하단걸 다시 느끼는 프로젝트다...

아무튼 우린 이름이 포함된 팔레트의 정보를 VO로 묶기 위해선 userPalettes의 VO를 활용해야 했다. 매개변수를 seq와 name을 두개 받은 후, voTmp엔 seq를 파라미터로 받아 select한 PalettesVO를 담았다. 그리고 userPalettes VO에 담을땐 비는 palette_name field값은 매개변수로 받은 name을 활용했다.

```java
// 랜덤팔레트 상세정보 표현
	@RequestMapping("/paletteDetailRandom.do")
	public String paletteDetailRandom(int seq, String name, Model model) {
		Palettes voTmp = mapper.paletteDetailRandom(seq);
		userPalettes vo = new userPalettes(voTmp.getPalette_seq(), name, voTmp.getPalette_color1(),
				voTmp.getPalette_color2(), voTmp.getPalette_color3(), voTmp.getPalette_color4(),
				voTmp.getPalette_color5(), voTmp.getRegdit_date(), voTmp.getUser_seq());
		model.addAttribute("vo", vo);
		return "paletteDetailRandom";
	}
```

이번에도 역시 SQL(select)문은 생략하겠다.
<h2>3. 2 내정보에 저장되어 있는 팔레트의 상세정보</h2>

<h3># HTML</h3>
2번은 a태그에 queryString 방식으로 팔레트의 번호를 JSP로 보내는 코드를 작성했다.

```html
<a href='/web/paletteDetail.do?seq="+ data[i].palette_seq +"' 
class='palettes_name' id='PaletteName'>" + data[i].palette_name + "</a>";
```

mapper를 통해 웹에 뿌려주는 html은 1번과 동일하다.
<h3># How to do?</h3>
1번과 달리 2번의 mapper는 단순해서 설명과 SQL문 또한 생략하겠다.

```java
// 팔레트 상세정보 표현
	@RequestMapping("/paletteDetail.do")
	public String paletteDetail(int seq, Model model) {
		userPalettes vo = mapper.paletteDetail(seq);
		model.addAttribute("vo", vo);
		return "paletteDetail";
	}
```
<h2>번외 : 로딩창 구현</h2>

![image](https://user-images.githubusercontent.com/91005194/148257528-305d8298-356d-4788-93d1-1ed9d6d78409.png)

<h3># How to do?</h3>
LoadingOverlay 속성을 사용했다. 정말 쉽고 간단하다.
우선 loadingOverlay.js 파일과 스피너 화면을 나타낼 BootStrap의 icon 파일이 필요하다.

[https://chobopark.tistory.com/188#google_vignette](https://chobopark.tistory.com/188#google_vignette) 참고

그 후, 나같은 경우엔 검색버튼을 클릭하면 스피너가 나타날 수 있도록 JavaScript 에 show이벤트를 넣었다. 선택자를 document로 설정하면 화면 전체에 스피너가 나타나고, 나처럼 해당 html 태그로 설정하면 그 태그만 스피너가 돌아간다.

```jsx
$("#searchColorBtn").on("click", function() {
			var inputText = $("#inputText").val();
			if (inputText == "") {
				return false;
			}
			$(".light-bg").LoadingOverlay("show");
		})
```

그런다음 검색기능의 코드실행이 모두 끝난 후에 스피너를 끄도록 검색기능의 코드 맨 마지막에 hide 메소드를 작성했다.

```jsx
.
.
.
view += "</div>";
				view += "</div>";
				view += "<span class='palettes_name' id='PaletteName'>"+inputText+"</span>"
				view += "<img src='${cpath}/resources/images/emptyHeart.png' class='savePalette saveBtn tooltip-bottom' id='emptyHeart'>";
				view += "</li>";
				$(".light-bg").LoadingOverlay("hide", true); // 스피너를 끄는(숨기는) 메소드
				$("#palettes_result").append(view).children(':last').hide()
						.fadeIn();
			}
		}
```

현업에선 어떻게 쓰이는지는 모르겠지만, 단순 for문이나 시간이 오래걸리는 JavaScript 이벤트에선 써먹을 수 있을거 같다.
