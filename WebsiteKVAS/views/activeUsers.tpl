% rebase('layout.tpl', title='Active Users', year=year)

<!--шапка страницы-->
<div >
    <!-- добавляем текст рядом с кнопкои-->
    <hAU1>Our active users<br></hAU1>
    <!--разделитель на абзацы-->
    <hr>
    <pAU>Let's join with us<br></pAU>
    <!-- добавляем кнопку-->
    <a href="#popup1" class="buttonAU1">Start now</a>
    
    <!--разделитель на абзацы-->
    <hr>
    <p><br></p>
    <p><br></p>
</div>
<!--Форма для ввода информации-->
<form action="/activeUsers" method="post">
    <!--Первое сплывающее окно-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--заговок окна-->
		    <pAU>Information about you</pAU>
            <!--разделитель на абзацы-->
            <hr>
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
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" required oninvalid="this.setCustomValidity('Enter your phone!')" 
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
                <hr>
                <!-- добавляем кнопку-->
                <input type="submit"  class="buttonAU1" value="Load">
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>