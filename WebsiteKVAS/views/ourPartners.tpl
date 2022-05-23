% rebase('layout.tpl', title='Our Partners', year=year)
<!-- добавляем текст рядом с кнопкои-->
<hAU1>Our Partners<br></hAU1>

<!--{!html}}-->

<!--шапка страницы-->
<div >
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
<form action="/ourPartners" method="post">
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
                        <bodyTextAu>Company name:<br><input type="text" size="50" id="companyName" name="companyName" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your name!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!-- добавляем поле для логотипа компании-->
                        <bodyTextAu>Link:<br><input type="text" id="link" name="link" size="100"/></bodyTextAu>   
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
                        <bodyTextAu>About company: <textarea rows="2" cols="50" name="you" placeholder="About company" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>

                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!-- добавляем текстовое поле для для почты-->
                        <bodyTextAu>Phone:<br><input type="url" size="50" id="file" name="file" placeholder="Your phone" required oninvalid="this.setCustomValidity('Enter your phone!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
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


{{!html}}