% rebase('layout.tpl', title='Active Users', year=year)

<!--����� ��������-->
<div >
    <!-- ��������� ����� ����� � �������-->
    <hAU1>Our active users<br></hAU1>
    <!--����������� �� ������-->
    <hr></hr>
    <pAU>Let's join with us
    <!-- ��������� ������-->
    <a href="#popup1" class="buttonAU">Start now</a>
    </pAU>
    <!--����������� �� ������-->
    <hr></hr>
    <p><br></p>
    <p><br></p>
</div>
<!--����� ��� ����� ����������-->
<form action="/" method="post">
    <!--������ ���������� ����-->
    <div id="popup1" class="overlay">
	    <div class="popup">
            <!--������� ����-->
		    <pAU>Information about you</pAU>
            <!--����������� �� ������-->
            <hr></hr>
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
                        <bodyTextAu>Email:<br><input type="email" size="50" id="email" name="email" placeholder="Your email" required oninvalid="this.setCustomValidity('Enter your email!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ���������� � ����-->
                        <bodyTextAu>About yourself: <textarea rows="2" cols="50" name="you" placeholder="About yourself" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--����������� �� ������-->
                <hr></hr>
                <!-- ��������� ������-->
                <a href="" class="buttonAU1">Load information</a>
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>