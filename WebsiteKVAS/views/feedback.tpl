% rebase('layout.tpl', title='Feedback', year=year)

<!--JS code-->
<script>
//Function for save number of smile-image
//and active or disactive stars-images
function saveIcon(iconValue){
    //assign input number of smile-image
    document.getElementById("IconCount").value= iconValue;

    //var image = document.getElementById("imageStars");
    //var source = image.src;
    //window.open(source);

    //active or disactive stars-images
    document.getElementById("imageStars0").style.display = "none";
    switch (iconValue){
       case 1:
        document.getElementById("imageStars1").style.display = "block";
        document.getElementById("imageStars2").style.display = "none";
        document.getElementById("imageStars3").style.display = "none";
        document.getElementById("imageStars4").style.display = "none";
        document.getElementById("imageStars5").style.display = "none";
        break;
       case 2:
        document.getElementById("imageStars2").style.display = "block";
        document.getElementById("imageStars1").style.display = "none";
        document.getElementById("imageStars3").style.display = "none";
        document.getElementById("imageStars4").style.display = "none";
        document.getElementById("imageStars5").style.display = "none";
        break;
       case 3:
        document.getElementById("imageStars3").style.display = "block";
        document.getElementById("imageStars1").style.display = "none";
        document.getElementById("imageStars2").style.display = "none";
        document.getElementById("imageStars4").style.display = "none";
        document.getElementById("imageStars5").style.display = "none";
        break;
       case 4:
        document.getElementById("imageStars4").style.display = "block";
        document.getElementById("imageStars1").style.display = "none";
        document.getElementById("imageStars2").style.display = "none";
        document.getElementById("imageStars3").style.display = "none";
        document.getElementById("imageStars5").style.display = "none";
        break;
       case 5:
        document.getElementById("imageStars5").style.display = "block";
        document.getElementById("imageStars1").style.display = "none";
        document.getElementById("imageStars2").style.display = "none";
        document.getElementById("imageStars3").style.display = "none";
        document.getElementById("imageStars4").style.display = "none";
        break;
    }

    //alert(fff);
}

//function for disable stars-images without 0 stars
function hideImg(){
    document.getElementById("imageStars1").style.display = "none";
    document.getElementById("imageStars2").style.display = "none";
    document.getElementById("imageStars3").style.display = "none";
    document.getElementById("imageStars4").style.display = "none";
    document.getElementById("imageStars5").style.display = "none";
}
</script>

<!--Title of page-->
<hAU1>Feedback<br></hAU1>

<!--Separate line-->
<hr>

<!--Form for popup window-->
<div >
    <!--Label for popup window-->
    <pAU>What are you think about us?<br></pAU>
    <!--Button for popup window-->
    <a href="#popup1" class="buttonAU1"  onclick="hideImg()" >Write now</a>
</div>

<!--Separate line-->
<hr>

<!--Empty line-->
<p><br></p>

<!--Python code-->
<!--Import libries-->
%import json
%import random

<!--Initialization array for all information-->
%dataFeedback = []

<!--Open file and load its data to array-->
%with open('feedbackFile.json') as jsonFile:
    %dataFeedback=json.load(jsonFile)

<!--Reverse array-->
%dataFeedback.reverse()

<!--Out put data  from array-->
%for i in range(len(dataFeedback)):
    <!--Generation random-->
    %roundImageUser=random.randint(1,5)

    <!--Load random user image-->
    <img class="circular--portraitV" src = "static\images\au\{{roundImageUser}}.png">

    <!--Load stars-->
    <img src = "static\images\feedback\{{(dataFeedback[i])[4]}}_stars.png" width="200">

    <!--Load surname, name, feedback, phone and date in container-->
    <bodyTextAu>
        <conteinerS>
            <!--Container for surname, name-->
            <separateS>
                <b>
                    {{(dataFeedback[i])[2]}} {{(dataFeedback[i])[1]}}
                </b>
            </separateS>

            <!--Empty columns-->
            <delimeterS></delimeterS> 
            <delimeterS></delimeterS>
            <delimeterS></delimeterS>

            <!--Container for phone-->
            <separateS>
                <b>
                    {{(dataFeedback[i])[0]}}
                </b>
            </separateS>
        </conteinerS>

        <!--Print feedback-->
        <br>
        <p>{{(dataFeedback[i])[3]}}</p>    
        <br>

        <conteinerS>
            <!--Empty columns-->
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

            <!--Print date-->
            <separateS>
                <b>
                    {{(dataFeedback[i])[5]}}
                </b>
            </separateS>
        </conteinerS>
    </bodyTextAu>
    <hr>
%end


<!--Notification form for post-button-->
<form action="/feedback" method="post">
    <!--Methon overload-->
    <div id="popup1" class="overlay">
        <!--Pop up window-->
	    <div class="popup">
            <!--All anthoer methods-->
		        <pAU>Leave feedback</pAU>
                <hr>
		        <a class="close" href="#">x</a>
		        <div class="content">
                <!--five elements of smiles in leave feedback-->
                <conteinerA>
                <!--Empty columns-->
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

                <!--Images for raiting in feedback writing-->
                <img class="circular--portraitA" src = "static\images\feedback\0stars.png" width="200" id="imageStars0">
                <img class="circular--portraitA" src = "static\images\feedback\1stars.png" width="200" id="imageStars1">
                <img class="circular--portraitA" src = "static\images\feedback\2stars.png" width="200" id="imageStars2">
                <img class="circular--portraitA" src = "static\images\feedback\3stars.png" width="200" id="imageStars3">
                <img class="circular--portraitA" src = "static\images\feedback\4stars.png" width="200" id="imageStars4">
                <img class="circular--portraitA" src = "static\images\feedback\5stars.png" width="200" id="imageStars5">

                <!--Another container in method-->
                <conteinerS>
                    <!--Empty columns--->
                    <delimeterS></delimeterS>
                    <!--Block for users name-->
                    <separateS>
                        <!--field name-->
                        <bodyTextAu>Enter name: <br>
                        <input type="text" size="15" name="NAME" placeholder="Your name" minlength = "5" maxlength = "20" required></bodyTextAu> 
                    </separateS>
                    <!--Empty columns--->
                    <delimeterS></delimeterS>
                    <!--Block for users surname-->
                    <separateS>
                        <!--field surname-->
                        <bodyTextAu>Enter surname:<br>
                        <input type="text" size="40" name="SURNAME" placeholder="Your surname" minlength = "5" maxlength = "25" required></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--Another container-->
                <conteinerS>
                    <!--Empty columns-->
                    <delimeterS></delimeterS>
                    <!--Block for phone with pattern-->
                    <separateS>
                        <!--field phone-->
                        <bodyTextAu>Enter phone number: 
                        <input type="text" size="40" name="PHONE" placeholder="Your phone" minlength = "5" maxlength = "25" 
                        pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" 
                        required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br><br>
                        <p><input class="A" type="text" id="IconCount" name="IconCount"></p>
                    </separateS>
                    <!--Empty columns-->
                    <delimeterS></delimeterS>
                    <!--Block for feedback-->
                    <separateS>
                        <!--field feedback-->
                        <bodyTextAu>Enter feedback: 
                        <textarea rows="4" minlength = "1" cols="100" name="FEEDBACK" placeholder="Your feedback" required></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--Separate line-->
                <hr>
                <!--Button for publish-->
                <input type="submit"  class="buttonAU1" value="Publish">
                </bodyTextAu>
	    </div>
    </div>
</form>
    


