% rebase('layout.tpl', title='Useful Article', year=year)
<!-- ��������� ����� ����� � �������-->
<hAU1>Useful Article<br></hAU1>
<!--����������� �� ������-->
<hr>

<firstTitleUA1> Publish your article! </firstTitleUA1>
<form action="/usefulArticles" method="post">
        <!--���������-->
        <conteinerS>
            <!--������ �������-->
            <delimeterS></delimeterS>
            <!--����� �� ��� �������-->
            <separateS>
                <!-- ��������� ��������� ���� ��� ����� ������-->
                <bodyTextAu><input type="text" size="50" id="email" name="name" placeholder="Your name" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
            </separateS>
            <!--������ �������-->
            <delimeterS></delimeterS>
            <!--������ �������-->
            <separateS>
                <!-- ��������� ��������� ���� ��� �������� ������-->
                <bodyTextAu><input type="text" size="50" id="email" name="name_of_article" placeholder="Name of article" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
            </separateS>
        </conteinerS>
        <!--���������-->
        <conteinerS>
            <!--������ �������-->
            <delimeterS></delimeterS>
            <!--����� �� ��� �������-->
            <separateS>
                <!-- ��������� ������� ��� ������-->
                <bodyTextAu><textarea rows="4" cols="50" name="article" placeholder="Your article" required oninvalid="this.setCustomValidity('Enter your question!')"
                oninput="this.setCustomValidity('')"></textarea><br><br></bodyTextAu>
            </separateS>
            <!--������ �������-->
            <delimeterS></delimeterS>
            <!--������ �������-->
            <separateS>
                <!-- ��������� ��������� ���� ��� ���� ����������� ������-->
                <bodyTextAu><input type="date" size="50" id="email" name="date" placeholder="Date of publish" required oninvalid="this.setCustomValidity('Enter your email!')" 
                oninput="this.setCustomValidity('')"><br><br></bodyTextAu>
                <!-- ������ ��� ��������-->
                <input type="submit" class="buttonAU" value="Send">
            </separateS>
        </conteinerS>
        
</form>

%import json
%dictionary_={} 
%dictionary={} 
%with open('useful_articles.txt') as json_file:
    %dictionary_ = json.load(json_file)  
%dictionary=dict(reversed(list(dictionary_.items())))
%for key in dictionary:
    %array=dictionary[key]
    <div>
     <pAU1><br>"{{key}}"</pAU1>
        <hk><br>Autor: {{dictionary[key][0]}}<br></hk>
        <bodyTextAu>{{dictionary[key][1]}}<br>
        Date of writing: date</bodyTextAu>
            <hr>
    </div>


 
