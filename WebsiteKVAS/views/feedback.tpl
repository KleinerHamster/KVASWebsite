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
    
    <!--����������� �� ������-->
    <hr>
    <p><br></p>
    <p><br></p>
</div>

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

                <form action="/feedback" method="post">   
                <!--five elements of smiles in leave feedback-->
                <conteinerA>
                <!--������ �������-->
                    <delimeterS></delimeterS>
                    <delimeterS></delimeterS>
                    <!--first smile-->
                    <newsonthesidesA>
                        <!--image of first smile-->
                        <img src = "static\images\feedback\1_stars_smile.png" width = "50" title="Awful" onclick="saveIcon(1)">
                    </newsonthesidesA>

                    <!--second smile-->
                    <newsinthecenterA>
                        <!--image of second smile-->
                        <img src = "static\images\feedback\2_stars_smile.png" width = "50" title="Bad" onclick="saveIcon(2)">
                    </newsinthecenterA>

                    <!--third smile-->
                    <newsinthecenterA>
                        <!--image of third smile-->
                        <img src = "static\images\feedback\3_stars_smile.png" width = "50" title="Satisfying" onclick="saveIcon(3)">
                    </newsinthecenterA>

                    <!--fourth smile-->
                    <newsinthecenterA>
                        <!--image of fourth smile-->
                        <img src = "static\images\feedback\4_stars_smile.png" width = "50" title="Alright" onclick="saveIcon(4)">
                    </newsinthecenterA>

                    <!--fifth smile-->
                    <newsonthesidesA>
                        <!--image of fifth smile-->
                        <img src = "static\images\feedback\5_stars_smile.png" width = "50" title="Excellent" name="GIP" alt="HI" onclick="saveIcon(5)">

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
                        <input type="text" size="15" name="UserName" placeholder="Your name" minlength = "5" maxlength = "20" required></bodyTextAu> 
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!--feeld surname-->
                        <bodyTextAu>Enter lastname:<br>
                        <input type="text" size="40" name="UserSurname" placeholder="Your surname" minlength = "5" maxlength = "25" required></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>

                <!--���������-->
                <conteinerS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--����� �� ��� �������-->
                    <separateS>
                        <!--feeld phone-->
                        <bodyTextAu>Enter phone: 
                        <input type="text" size="40" name="Phone" placeholder="Your phone" minlength = "5" maxlength = "25" required></bodyTextAu>   
                    </separateS>
                    <!--������ �������-->
                    <delimeterS></delimeterS>
                    <!--������ �������-->
                    <separateS>
                        <!--feeld feedback-->
                        <bodyTextAu>Enter feedback: 
                        <textarea rows="4" cols="100" name="QUEST" placeholder="Your Feedback" required></textarea></bodyTextAu><br><br>
                    </separateS>
                </conteinerS>
                <!--����������� �� ������-->
                <hr>
                <!-- ��������� ������-->
                <input type="submit"  class="buttonAU1" value="Send">
                </bodyTextAu>
                
                <p><input type="text" size="50" name="ADRESS" placeholder="Your email" minlength = "5" maxlength = "31"
                pattern="([a-z0-9._%+-]{5,31})+@[a-z0-9.-]+\.[a-z]{2,}$" required></p>
                
                <p><input type="text" size="10" id="IconCount" name="IconCount"></p>
            </form>
	    </div>
    </div>
</form>
    





