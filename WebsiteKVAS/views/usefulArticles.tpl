% rebase('layout.tpl', title='Home Page', year=year)
<firsttitleS> Publish your article! </firsttitleS>
<form action="/usefulArticles" method="post">
        <!-- ��������� ��������� ���� ��� ����� ������-->
        <p><input type="text" size="50" id="email" name="name" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>
        <!-- ��������� ��������� ���� ��� �������� ������-->
        <p><input type="text" size="50" id="email" name="name_of_article" placeholder="Name of article" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>
        <!-- ��������� ������� ��� ������-->
        <p><textarea rows="2" cols="50" name="article" placeholder="Your article" required oninvalid="this.setCustomValidity('Enter your question!')"
        oninput="this.setCustomValidity('')"></textarea></p> 
        <!-- ��������� ��������� ���� ��� ���� ����������� ������-->
        <p><input type="date" size="50" id="email" name="name" placeholder="Date of publish" required oninvalid="this.setCustomValidity('Enter your email!')" 
        oninput="this.setCustomValidity('')"></p>

        <!-- ������ ��� ��������-->
        <p><input type="submit"  class="button13" value="Send"></p>
</form>
%a = 5
%for i in range(a):
     <hr>
    <div class="button13"  value="{{a}}"></div>
%end 
