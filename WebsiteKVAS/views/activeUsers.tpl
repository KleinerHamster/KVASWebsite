% rebase('layout.tpl', title='Active Users', year=year)

<div >
    <!--page title-->
    <hAU1>Our active users<br></hAU1>
    <!--split into paragraphs-->
    <hr>
    <!--text near with button-->
    <pAU>Let's join with us<br></pAU>
    <!--adding button-->
    <a href="#popup1" class="buttonAU1">Start now</a>
    <!--split into paragraphs-->
    <hr>
    <p><br></p>
</div>

<!--form for enter data-->
<form action="/activeUsers" method="post">
    <!--Popup-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--popup title-->
		    <pAU>Information about you</pAU>
            <!--split into paragraphs-->
            <hr>
		    <a class="close" href="#">x</a>
		    <div class="content">
                <!--conteiner-->
                <conteinerS>
                    <!--empty column-->
                    <delimeterS></delimeterS>
                    <!--split on 3 column-->
                    <separateS>
                        <!--input for name-->
                        <bodyTextAu>Name:<br><input type="nameUser" size="50" id="nameUser" name="nameUser" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your name!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--empty column-->
                    <delimeterS></delimeterS>
                    <!--third column-->
                    <separateS>
                        <!--input for lastname-->
                        <bodyTextAu>Lastname:<br><input type="lastnameUser" size="50" id="lastnameUser" name="lastnameUser" placeholder="Your lastname" required oninvalid="this.setCustomValidity('Enter your lastname!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                 <!--conteiner-->
                <conteinerS>
                     <!--empty column-->
                    <delimeterS></delimeterS>
                   <!--split on 3 column-->
                    <separateS>
                         <!--input for phone-->
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                     <!--empty column-->
                    <delimeterS></delimeterS>
                   <!--third column-->
                   <separateS>
                        <!--textare for information about yoursels-->
                        <bodyTextAu>About yourself: <textarea rows="2" cols="50" id="you" name="you" placeholder="About yourself" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--split into paragraphs-->
                <hr>
                 <!--adding button-->
                <input type="submit"  class="buttonAU1" value="Load"
                >
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>
<!--python code-->
%import json
%import random
%dataUsers = {}
%with open('activeUserFile.json') as jsonFile:
    %dataUsers=json.load(jsonFile)
%res=dict(reversed(list(dataUsers.items())))
%for key in res:
    %array=res[key]
    %j=random.randint(0,4)
    %if j==0:
        <img class="circular--portraitVA" src = "static\images\au\1.png">
        <pAU1>{{res[key][0]}} {{res[key][1]}}</pAU1><br>
        <bodyTextAu>Phone: {{key}}<br>
        About yourself: {{res[key][2]}}
        </bodyTextAu>
        <hr>
        <br><br><br><br>
    %elif j==1:
        <img class="circular--portraitVA" src = "static\images\au\2.png">
        <pAU1>{{res[key][0]}} {{res[key][1]}}</pAU1><br>
        <bodyTextAu>Phone: {{key}}<br>
        About yourself: {{res[key][2]}}
        </bodyTextAu>
        <hr>
        <br><br><br><br>
    %elif j==2:
        <img class="circular--portraitVA" src = "static\images\au\3.png">
        <pAU1>{{res[key][0]}} {{res[key][1]}}</pAU1><br>
        <bodyTextAu>Phone: {{key}}<br>
        About yourself: {{res[key][2]}}
        </bodyTextAu>
        <hr>
        <br><br><br><br>
    %elif j==3:
        <img class="circular--portraitVA" src = "static\images\au\4.png">
        <pAU1>{{res[key][0]}} {{res[key][1]}}</pAU1><br>
        <bodyTextAu>Phone: {{key}}<br>
        About yourself: {{res[key][2]}}
        </bodyTextAu>
        <hr>
        <br><br><br><br>
    %elif j==4:
        <img class="circular--portraitVA" src = "static\images\au\5.png">
       <pAU1>{{res[key][0]}} {{res[key][1]}}</pAU1><br>
        <bodyTextAu>Phone: {{key}}<br>
        About yourself: {{res[key][2]}}
        </bodyTextAu>
        <hr>
        <br><br><br><br>