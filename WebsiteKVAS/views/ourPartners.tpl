% rebase('layout.tpl', title='Our Partners', year=year)
<!-- ��������� ����� ����� � �������-->
<hAU1>Our Partners<br></hAU1>

<!--{!html}}-->

<!--����� ��������-->
<div >
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
<form action="/ourPartners" method="post">
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
                        <bodyTextAu>Company name:<br><input type="text" size="50" id="companyName" name="companyName" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your name!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ���� ��� �������� ��������-->
                        <bodyTextAu>Link:<br><input type="text" id="link" name="link" size="100"/></bodyTextAu>   
                    </separateS>
                </conteinerS>

                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ��� �����-->
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" required oninvalid="this.setCustomValidity('Enter your phone!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ���������� � ����-->
                        <bodyTextAu>About company: <textarea rows="2" cols="50" name="you" placeholder="About company" required oninvalid="this.setCustomValidity('Enter information about ypurself!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
                    </separateS>

                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ��� �����-->
                        <bodyTextAu>Phone:<br><input type="url" size="50" id="file" name="file" placeholder="Your phone" required oninvalid="this.setCustomValidity('Enter your phone!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>

                </conteinerS>

                
                <!--����������� �� ������-->
                <hr>
                <!-- ��������� ������-->
                <input type="submit"  class="buttonAU1" value="Load">
                </bodyTextAu>
		    </div>
	    </div>
    </div>
</form>


{{!html}}