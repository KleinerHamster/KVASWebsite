% rebase('layout.tpl', title='Active Users', year=year)

<!--шапка страницы-->
<div >
    <!-- добавляем текст рядом с кнопкои-->
    <hAU1>Our active users<br></hAU1>
    <!--разделитель на абзацы-->
    <hr></hr>
    <pAU>Let's join with us
    <!-- добавляем кнопку-->
    <a href="#popup1" class="buttonAU">Start now</a>
    </pAU>
    <!--разделитель на абзацы-->
    <hr></hr>
    <p><br></p>
    <p><br></p>
</div>
<!--Форма для ввода информации-->
<form action="/" method="post">
    <!--Первое сплывающее окно-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--заговок окна-->
		    <pAU>Information about you</pAU>
            <!--разделитель на абзацы-->
            <hr></hr>
		    <a class="close" href="#">x</a>
		    <div class="content">
                <!--контейнер-->
                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!-- добавляем текстовое поле для имени-->
                        <bodyTextAu>Name:<br><input type="nameUser" size="50" id="nameUser" name="nameUser" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your name!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!-- добавляем текстовое поле для фамилии-->
                        <bodyTextAu>Lastname:<br><input type="lastnameUser" size="50" id="lastnameUser" name="lastnameUser" placeholder="Your lastname" required oninvalid="this.setCustomValidity('Enter your lastname!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--контейнер-->
                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!-- добавляем текстовое поле для для почты-->
                        <bodyTextAu>Email:<br><input type="email" size="50" id="email" name="email" placeholder="Your email" required oninvalid="this.setCustomValidity('Enter your email!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!-- добавляем текстовое поле для информации о себе-->
                        <bodyTextAu>About yourself: <textarea rows="2" cols="50" name="you" placeholder="About yourself" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--разделитель на абзацы-->
                <hr></hr>
                <!-- добавляем кнопку-->
                <a href="" class="buttonAU1">Load information</a>
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>