% rebase('layout.tpl', title='Home Page', year=year)

<!-- ������ ���� ����� ����� -->
<div >
    <h12><br></h12>
    <!-- ���������� �������� �� ������� ����-->
    <IMG12><img src="static\images\homepage\homeIMG.png" border="25px"></IMG12>
    <!-- ��������� ����� ����� ��������-->
    <h12>Study <br>without border</h12>
    <p12><br>KVAS is a simple opporunity to get skills on standarts of WorldSkills and FutureSkills.</p12>
    <!-- ��������� ������-->
    <p><br><a href="https://worldskills.org/skills/" class="button13">Start now</a></p>
    <p><br></p>
    <p><br></p>
</div>

<!-- ������ ���� ������ �� ���������-->
<div class="box1">
    <!-- ������ �� �������� ������� ��������-->
    <p16>We work with <a href="https://worldskills.org/partners/">over 150 universities and companies</a><br></p16>
    <p style="color:#E0FFFF">gggggg      
    <!-- ������ �������� ��� ������ �� ��������� ���������-->
    <a href="https://www.imperial.ac.uk"><img src="static\images\homepage\imperalCollege.png" width="200" height="50" border="0"></a>
    <a href="https://www.ox.ac.uk"><img src="static\images\homepage\oxford.png" width="250" height="75" border="0"></a>
    <a href="https://umich.edu"><img src="static\images\homepage\UM.png" width="125" height="125" border="0"></a>
    <a href="https://www.samsung.com/us/"><img src="static\images\homepage\samsung.png" width="250" height="75" border="0"></a>
    <a href="https://www.stanford.edu"><img src="static\images\homepage\stanford.png" width="200" height="185" border="0"></a> 
    </p>
</div>

<!-- ������ ���� ������� �� ��������� ���������� -->
<div>
    <p><br></p>
    <p><br></p>
    <p><br></p>
    <p><br></p>
    <p15>Know more about KVAS<br>
    <!-- ��������� ������-->
    <a href="https://worldskills.org/skills/" class="button12">Know anout us</a></p15>
     <p><br></p>
    <p><br></p>
</div>


<!-- ��������� ���� ���������� ����� �������� �����-->
<h3> Ask a Question </h3>
<form action="/homepage" method="post">
        <!-- ��������� ������� ��� ������-->
        <p><textarea rows="2" cols="50" name="QUEST" placeholder="Your question" required oninvalid="this.setCustomValidity('Enter your question!')"
        oninput="this.setCustomValidity('')"></textarea></p> 

        <!-- ��������� ��������� ���� ��� �����, ��������� �������-->
        <p><input type="email" size="50" id="email" name="email" placeholder="Your email" 
        pattern="[a-z0-9._%+-]+@[a=z0-9.-]+\[a-z]{2,}$" required minlength="5" maxlength="31" oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>

        <!-- ������ ��� ��������-->
        <p class="btn btn-default"><input type="submit" value="Send"></p>
</form>