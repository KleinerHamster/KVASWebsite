% rebase('layout.tpl', title='Active Users', year=year)

<!--����� ��������-->
<div >
    <!-- ��������� ����� ����� � �������-->
    <hAU1>Our active users<br></hAU1>
    <!--����������� �� ������-->
    <hr>
    <pAU>Let's join with us<br></pAU>
    <!-- ��������� ������-->
    <a href="#popup1" class="buttonAU1">Start now</a>
    
    <!--����������� �� ������-->
    <hr>
    <p><br></p>
    <p><br></p>
</div>
<!--����� ��� ����� ����������-->
<form action="/activeUsers" method="post">
    <!--������ ���������� ����-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--������� ����-->
		    <pAU>Information about you</pAU>
            <!--����������� �� ������-->
            <hr>
		    <a class="close" href="#">x</a>
		    <div class="content">
                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� �����-->
                        <bodyTextAu>Name:<br><input type="nameUser" size="50" id="nameUser" name="nameUser" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your name!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� �������-->
                        <bodyTextAu>Lastname:<br><input type="lastnameUser" size="50" id="lastnameUser" name="lastnameUser" placeholder="Your lastname" required oninvalid="this.setCustomValidity('Enter your lastname!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ��� �����-->
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ���������� � ����-->
                        <bodyTextAu>About yourself: <textarea rows="2" cols="50" id="you" name="you" placeholder="About yourself" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--����������� �� ������-->
                <hr>
                <!-- ��������� ������-->
                <input type="submit"  class="buttonAU1" value="Load"
                >
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>

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
        <div>
            <div class="circular--portraitV"> <img src="static\images\au\1.png"/> </div>
            <hk>���: {{res[key][0]}} Lastname:{{res[key][1]}}</hk><br>
            <pAU>Phone: {{key}}<br>
            About yoursels: {{res[key][2]}}
            </pAU>
            <hr>
        </div>
    %elif j==1:
        <div>
            <div class="circular--portraitV"> <img src="static\images\au\2.png"/> </div>
            <hk>���: {{res[key][0]}} Lastname:{{res[key][1]}}</hk><br>
            <pAU>Phone: {{key}}<br>
            About yoursels: {{res[key][2]}}
            </pAU>
            <hr>
        </div>
    %elif j==2:
       <div>
            <div class="circular--portraitV"> <img src="static\images\au\3.png"/> </div>
            <pAU>Name: {{res[key][0]}}<br> Lastname:{{res[key][1]}}</pAU><br>
            <pAU>Phone: {{key}}<br>
            About yoursels: {{res[key][2]}}
            </pAU>
            <hr>
        </div>
    %elif j==3:
       <div>
            <div class="circular--portraitV"> <img src="static\images\au\4.png"/> </div>
            <pAU>Name: {{res[key][0]}}<br> Lastname:{{res[key][1]}}</pAU><br>
            <pAU>Phone: {{key}}<br>
            About yoursels: {{res[key][2]}}
            </pAU>
            <hr>
        </div>
    %elif j==4:
       <div>
            <div class="circular--portraitV"> <img src="static\images\au\5.png"/> </div>
            <hk>Name: {{res[key][0]}}<br> Lastname:{{res[key][1]}}</hk><br>
            <pAU>Phone: {{key}}<br>
            About yoursels: {{res[key][2]}}
            </pAU>
            <hr>
        </div>