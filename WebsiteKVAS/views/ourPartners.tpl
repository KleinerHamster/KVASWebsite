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
                        <bodyTextAu>Link:<br><input type="text" id="link" placeholder="Your link" name="link" size="100" required oninvalid="this.setCustomValidity('Enter the link to the official website!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                </conteinerS>

                <!--контейнер-->
                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!-- добавляем текстовое поле для телефона-->
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" 
                        required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')"  
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>

                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!-- добавляем текстовое поле для для почты-->
                        <bodyTextAu>Company logo:<br><input type="url" size="50" id="file" name="file" placeholder="Your logo" required oninvalid="this.setCustomValidity('Enter an html link with your company's logo!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>

                </conteinerS>

                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!-- добавляем текстовое поле для информации о себе-->
                        <bodyTextAu>About company: <textarea  rows="4" name="you" placeholder="About company" required oninvalid="this.setCustomValidity('Enter a description for your company!')"
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

{{!html}}