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
                        <bodyTextAu>Link:<br><input type="text" id="link" placeholder="Your link" name="link" size="100" required oninvalid="this.setCustomValidity('Enter the link to the official website!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>
                </conteinerS>

                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ��������-->
                        <bodyTextAu>Phone:<br><input type="phone" size="50" id="phone" name="phone" placeholder="Your phone" pattern="[+][7][(][0-9]{3}[)] [0-9]{3}-[0-9]{2}-[0-9]{2}$" 
                        required oninvalid="this.setCustomValidity('Enter your phone in format +7(xxx) xxx-xx-xx')"  
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>

                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ��� �����-->
                        <bodyTextAu>Company logo:<br><input type="url" size="50" id="file" name="file" placeholder="Your logo" required oninvalid="this.setCustomValidity('Enter an html link with your company's logo!')" 
                        oninput="this.setCustomValidity('')"></bodyTextAu>   
                    </separateS>

                </conteinerS>

                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!-- ��������� ��������� ���� ��� ���������� � ����-->
                        <bodyTextAu>About company: <textarea  rows="4" name="you" placeholder="About company" required oninvalid="this.setCustomValidity('Enter a description for your company!')"
                        oninput="this.setCustomValidity('')"></textarea></bodyTextAu><br><br>
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