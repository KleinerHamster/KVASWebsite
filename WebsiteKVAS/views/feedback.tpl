% rebase('layout.tpl', title='Feedback', year=year)

<script>
function saveIcon(iconValue){
    document.getElementById("IconCount").value= iconValue;

    //var fff="static\images\feedback\3_stars.png"
    //document.getElementById("imageStars").src = "static\images\feedback\3_stars.png";
    //alert(fff);
}
</script>

<!-- добавляем текст рядом с кнопкои-->
<hAU1>Feedback<br></hAU1>
<!--разделитель на абзацы-->
<hr>

<!--шапка страницы-->
<div >
    <pAU>Write about us<br></pAU>
    <!-- добавляем кнопку-->
    <a href="#popup1" class="buttonAU1">Write now</a>
</div>

<hr>
<p><br></p>

<!--mas.reverse()  random.uniform(0,1)-->
%import json
%import random
%dataFeedback = []

%with open('feedbackFile.json') as jsonFile:
    %dataFeedback=json.load(jsonFile)

%dataFeedback.reverse()

%for i in range(len(dataFeedback)):
    %roundImageUser=random.randint(1,5)
    <img class="circular--portraitV" src = "static\images\au\{{roundImageUser}}.png">
    <img src = "static\images\feedback\{{(dataFeedback[i])[4]}}_stars.png" width="200">
    <bodyTextAu>
        <conteinerS>
            <separateS>
                <b>
                    {{(dataFeedback[i])[2]}} {{(dataFeedback[i])[1]}}
                </b>
            </separateS>
                <delimeterS></delimeterS> 
                <delimeterS></delimeterS>
                <delimeterS></delimeterS>
            <separateS>
                <b>
                    {{(dataFeedback[i])[0]}}
                </b>
            </separateS>
        </conteinerS>

        <br>
        <p>{{(dataFeedback[i])[3]}}</p>    
        <br>

        <conteinerS>
            <delimeterS></delimeterS> 
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>
            <separateS>
                <b>
                    {{(dataFeedback[i])[5]}}
                </b>
            </separateS>
        </conteinerS>
    </bodyTextAu>
    <hr>
%end


<!--Форма для ввода информации-->
<form action="/feedback" method="post">
    <!--Первое сплывающее окно-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--заговок окна-->
		        <pAU>Leave feedback</pAU>
                <!--разделитель на абзацы-->
                <hr>
		        <a class="close" href="#">x</a>
		        <div class="content">
                <!--five elements of smiles in leave feedback-->
                <conteinerA>
                <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <delimeterS></delimeterS>
                    <!--first smile-->
                    <newsonthesidesA>
                        <!--image of first smile-->
                        <img class="circular--portrait" src = "static\images\feedback\1_stars_smile.png" title="Awful" onclick="saveIcon(1)">
                    </newsonthesidesA>

                    <!--second smile-->
                    <newsinthecenterA>
                        <!--image of second smile-->
                        <img class="circular--portrait" src = "static\images\feedback\2_stars_smile.png"  title="Bad" onclick="saveIcon(2)">
                    </newsinthecenterA>

                    <!--third smile-->
                    <newsinthecenterA>
                        <!--image of third smile-->
                        <img class="circular--portrait" src = "static\images\feedback\3_stars_smile.png" title="Satisfying" onclick="saveIcon(3)">
                    </newsinthecenterA>

                    <!--fourth smile-->
                    <newsinthecenterA>
                        <!--image of fourth smile-->
                        <img class="circular--portrait" src = "static\images\feedback\4_stars_smile.png" title="Alright" onclick="saveIcon(4)">
                    </newsinthecenterA>

                    <!--fifth smile-->
                    <newsonthesidesA>
                        <!--image of fifth smile-->
                        <img class="circular--portrait" src = "static\images\feedback\5_stars_smile.png"  title="Excellent" name="GIP" alt="HI" onclick="saveIcon(5)">

                    </newsonthesidesA>
                </conteinerA>

                <!--Image for raiting in feedback writing-->
                <img class="circular--portraitA" src = "static\images\feedback\1_stars.png" width="200" id="imageStars">

                <!--контейнер-->
                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!--feeld name-->
                        <bodyTextAu>Enter name: <br>
                        <input type="text" size="15" name="NAME" placeholder="Your name" minlength = "5" maxlength = "20" required></bodyTextAu> 
                    </separateS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!--feeld surname-->
                        <bodyTextAu>Enter surname:<br>
                        <input type="text" size="40" name="SURNAME" placeholder="Your surname" minlength = "5" maxlength = "25" required></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--контейнер-->
                <conteinerS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--делим на три столбца-->
                    <separateS>
                        <!--feeld phone-->
                        <bodyTextAu>Enter phone number: 
                        <input type="text" size="40" name="PHONE" placeholder="Your phone" minlength = "5" maxlength = "25" 
                        pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" 
                        required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br><br>
                        <p><input class="A" type="text" id="IconCount" name="IconCount"></p>
                    </separateS>
                    <!--пустой столбец-->
                    <delimeterS></delimeterS>
                    <!--третий столбец-->
                    <separateS>
                        <!--feeld feedback-->
                        <bodyTextAu>Enter feedback: 
                        <textarea rows="4" minlength = "1" cols="100" name="FEEDBACK" placeholder="Enter feedback" required></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--разделитель на абзацы-->
                <hr>
                <!-- добавляем кнопку-->
                <input type="submit"  class="buttonAU1" value="Send">
                </bodyTextAu>
	    </div>
    </div>
</form>
    


