% rebase('layout.tpl', title='Useful Article', year=year)
<!-- добавляем текст рядом с кнопкои-->
<hAU1>Useful Article<br></hAU1>
<!--разделитель на абзацы-->
<hr>

<firstTitleUA1> Publish your article! </firstTitleUA1>
<form action="/usefulArticles" method="post">
        <!--контейнер-->
        <conteinerS>
            <!--пустой столбец-->
            <delimeterS></delimeterS>
            <!--делим на три столбца-->
            <separateS>
                <!-- добавляем текстовое поле для имени автора-->
                <bodyTextAu><input type="text" size="50" id="email" name="name" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
            </separateS>
            <!--пустой столбец-->
            <delimeterS></delimeterS>
            <!--третий столбец-->
            <separateS>
                <!-- добавляем текстовое поле для Названия статьи-->
                <bodyTextAu><input type="text" size="50" id="email" name="name_of_article" placeholder="Name of article" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
            </separateS>
        </conteinerS>
        <!--контейнер-->
        <conteinerS>
            <!--пустой столбец-->
            <delimeterS></delimeterS>
            <!--делим на три столбца-->
            <separateS>
                <!-- текстовая область для статьи-->
                <bodyTextAu><textarea rows="4" cols="50" name="article" placeholder="Your article" required oninvalid="this.setCustomValidity('Enter your question!')"
                oninput="this.setCustomValidity('')"></textarea><br><br></bodyTextAu>
            </separateS>
            <!--пустой столбец-->
            <delimeterS></delimeterS>
            <!--третий столбец-->
            <separateS>
                <!-- добавляем текстовое поле для даты публицкации статьи-->
                <bodyTextAu><input type="date" size="50" id="email" name="name" placeholder="Date of publish" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
                <!-- кнопка для отправки-->
                <input type="submit" class="buttonAU" value="Send">
            </separateS>
        </conteinerS>
        
</form>

%a = 5
%for i in range(a):
     <hr>
    <div class="button13"  value="{{a}}"></div>
%end 
