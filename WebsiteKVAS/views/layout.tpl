<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - KVAS Home page</title>
    <!-- ���������� ����� -->
    <link rel="stylesheet" type="text/css" href="/static/content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/content/site.css" />
    <script src="/static/scripts/modernizr-2.6.2.js"></script>
</head>

<body ><!-- ������ ��� �����-->
    <!-- ����������� ���� ������ � ��������� -->
    <nav class="navbar navbar-custom navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">KVAS - WorldSkills courses</a>
        </div>
        <!-- ����������� ������-������ ��������� ���� -->
        <ul class="nav navbar-nav">
          <li><a class="navbar-brand" href="/homepage">Homepage</a></li><!-- ������-������ ����� -->
          <li><a class="navbar-brand" href="/blockchain">Blockchain</a></li><!-- ������-������ ����� blockchain -->
          <li><a class="navbar-brand" href="/thingworx">Thingworx</a></li><!-- ������-������ thingworx -->
          <li><a class="navbar-brand" href="/lastnews">Last News</a></li><!-- ������-������ ������� -->
          <li><a class="navbar-brand" href="/usefulArticles">Useful Articles</a></li><!-- ������-������ �� �������� ������ -->
          <li><a class="navbar-brand" href="/ourPartners">Our Partners</a></li><!-- ������-������ �� �������� ����� ��������� -->
           <li><a class="navbar-brand" href="/activeUsers">Active Users</a></li><!-- ������-������ �� �������� ����� ��������� -->
          <li><a class="navbar-brand" href="/feedback">Feedback</a></li><!-- ������-������ �� �������� ������� -->
          
          
        </ul>
      </div>
    </nav>
    <!-- ����������� ����� �������� -->
    <div class="container body-content">
        {{!base}}
        <footer>
            <p14>&copy; {{ year }} - KVAS Corporation</p14>
        </footer>
    </div>
    <script src="/static/scripts/jquery-1.10.2.js"></script>
    <script src="/static/scripts/bootstrap.js"></script>
    <script src="/static/scripts/respond.js"></script>
</body>
</html>
