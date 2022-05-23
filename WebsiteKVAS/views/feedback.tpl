% rebase('layout.tpl', title='Feedback', year=year)

<script>
function saveIcon(iconValue){
    document.getElementById("IconCount").value= iconValue;
    //alert(iconValue);
}
</script>

<!-- ��������� ����� ����� � �������-->
<hAU1>Feedback<br></hAU1>
<!--����������� �� ������-->
<hr>

<!--����� ��������-->
<div >
    <pAU>Write about us<br></pAU>
    <!-- ��������� ������-->
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

%ddd=random.randint(0,4)
{{ddd}}

%for i in range(len(dataFeedback)):
    <b>{{i}}:</b>
    <conteinerA>
        <newsonthesidesA>
            <p>{{(dataFeedback[i])[0]}}</p>
        </newsonthesidesA>
        <newsinthecenterA>
            <p>{{(dataFeedback[i])[1]}}</p>
        </newsinthecenterA>
        <newsinthecenterA>
            <p>{{(dataFeedback[i])[2]}}</p>
        </newsinthecenterA>
    </conteinerA>
    <p>{{(dataFeedback[i])[3]}}</p>
    <p>{{(dataFeedback[i])[4]}}</p>
    <p>{{(dataFeedback[i])[5]}}</p>
%end
<hr>


<!--����� ��� ����� ����������-->
<form action="/feedback" method="post">
    <!--������ ���������� ����-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--������� ����-->
		        <pAU>Leave feedback</pAU>
                <!--����������� �� ������-->
                <hr>
		        <a class="close" href="#">x</a>
		        <div class="content">
                <!--five elements of smiles in leave feedback-->
                <conteinerA>
                <!--������ �������-->
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

                <p></p>
                <p></p>
                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!--feeld name-->
                        <bodyTextAu>Enter name: <br>
                        <input type="text" size="15" name="NAME" placeholder="Your name" minlength = "5" maxlength = "20" required></bodyTextAu> 
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!--feeld surname-->
                        <bodyTextAu>Enter surname:<br>
                        <input type="text" size="40" name="SURNAME" placeholder="Your surname" minlength = "5" maxlength = "25" required></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!--feeld phone-->
                        <bodyTextAu>Enter phone number: 
                        <input type="text" size="40" name="PHONE" placeholder="Your phone" minlength = "5" maxlength = "25" 
                        pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" 
                        required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br><br>
                        <p><input class="A" type="text" id="IconCount" name="IconCount"></p>
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!--feeld feedback-->
                        <bodyTextAu>Enter feedback: 
                        <textarea rows="4" minlength = "1" cols="100" name="FEEDBACK" placeholder="Enter feedback" required></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--����������� �� ������-->
                <hr>
                <!-- ��������� ������-->
                <input type="submit"  class="buttonAU1" value="Send">
                </bodyTextAu>
	    </div>
    </div>
</form>
    


