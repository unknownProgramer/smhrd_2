# Coloring

<h3>1. Coloring 메인 페이지</h3>
<h5>＃HTML</h5>

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

<h5>＃How To Do?</h5>
로그인, 로그아웃같은 기능은 잘 알려져있고 구글링하면 쉽게 찾을 수 있으니 따로 설명은 하지 않겠다.
