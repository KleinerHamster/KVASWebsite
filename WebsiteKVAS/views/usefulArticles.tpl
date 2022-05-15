% rebase('layout.tpl', title='Home Page', year=year)
<firsttitleS> Publish your article! </firsttitleS>
<form action="/usefulArticles" method="post">
        <!-- добавляем текстовое поле для имени автора-->
        <p><input type="text" size="50" id="email" name="name" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>
        <!-- добавляем текстовое поле для Названия статьи-->
        <p><input type="text" size="50" id="email" name="name_of_article" placeholder="Name of article" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>
        <!-- текстовая область для статьи-->
        <p><textarea rows="2" cols="50" name="article" placeholder="Your article" required oninvalid="this.setCustomValidity('Enter your question!')"
        oninput="this.setCustomValidity('')"></textarea></p> 
        <!-- добавляем текстовое поле для даты публицкации статьи-->
        <p><input type="date" size="50" id="email" name="name" placeholder="Date of publish" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>

        <!-- кнопка для отправки-->
        <p><input type="submit"  class="button13" value="Send"></p>
</form>
%a = 5
%for i in range(a):
     <hr>
    <div class="button13"  value="{{a}}"></div>
%end 
