<?php
$loggedin = false;
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true){
  $loggedin = true;
}

echo '<nav class="navbar navbar-expand-lg navbar-dark bdr">
        <div class="container-fluid">
          <a class="navbar-brand" href="/index.php">Covid-19</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/index.php">HOME</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/latest.php">LATEST</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/helpdesk.php">HELPDESK</a>
              </li>
            </ul>
            <!--<form class="d-flex me-2" action="#login" method="post">
                <button class="btn btn-outline-success" type="submit">LogIn</button>
            </form>
            <form class="d-flex" action="#signin" method="post">
                <button class="btn btn-outline-success" type="submit">SignIn</button>
            </form>-->
            <div>
              <p class="me-3 pt-3" style="display: inline-block; color:yellow; font-size:1.2rem">HELP-LINE NO. -88888888888</p>
            </div>';
            if(!$loggedin){
            echo '<a class="btn btn-outline-success me-2" href="/donate.php" role="button">Donate</a>
            <a class="btn btn-outline-success me-2" href="login.php" role="button">LogIn</a>
            <a class="btn btn-outline-success" href="/signup.php" role="button">SignUp</a>';
            }
            if($loggedin){
             echo '<a class="btn btn-outline-success me-2" href="/donate.php" role="button">Donate</a>
            <a class="btn btn-outline-danger me-2" href="/logout.php" role="button">Logout</a>';
            }
            echo
          '</div>
        </div>
      </nav>';

?>
