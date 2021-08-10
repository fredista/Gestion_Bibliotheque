<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Bibliotheque le savoir est une arme - formulaire inscription</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="styl/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="styl/assets/css/font-awesome.css" rel="stylesheet" />
    
    <link href="styl/assets/css/glyphicons-halflings-regular  stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="styl/assets/css/style.css" rel="stylesheet" />
    <link href="lgin.css" rel="stylesheet" />
     <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <strong>Email: </strong>savoirarme@gmail.com
                    &nbsp;&nbsp;
                    <strong>Support: </strong>+84-897-678-44
                </div>

            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">

                    <img src="styl/assets/img/logo.png" />
                </a>

            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <ul class="nav">

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                            </a>
                            <div class="dropdown-menu dropdown-settings">
                                <div class="media">
                                    <a class="media-left" href="#">
                                        <img src="styl/assets/img/64-64.jpg" alt="" class="img-rounded" />
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Jhon Deo Alex </h4>
                                        <h5>Developer & Designer</h5>

                                    </div>
                                </div>
                                <hr />
                                <h5><strong>Personal Bio : </strong></h5>
                                Anim pariatur cliche reprehen derit.
                                <hr />
                                <a href="#" class="btn btn-info btn-sm">Full Profile</a>&nbsp; <a href="login.html" class="btn btn-danger btn-sm">Logout</a>

                            </div>
                        </li>


                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- LOGO HEADER END-->
    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a href="index.html">Accueil</a></li>
                            <li><a href="ui.html">UI Elements</a></li>
                            <li><a href="table.html">Data Tables</a></li>
                            <li><a class="menu-top-active"  href="forms.html">Forms</a></li>
                             <li><a href="login.html">Login Page</a></li>
                            <li><a href="blank.html">Blank Page</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
              <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Formulaire </h1>
                    </div>
                </div>
                <div class="row">


                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">

  <c:out value="${mssg}"></c:out>
  
                           inscrivez vous ici!
                          
                        </div>
                        <div class="panel-body">
                   <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>


                    <div class="col-lg-12">
  <form class="we" autocomplete="off" method="post" action="inscription">

    <div class="form-group">
      <label class="control-label" for="text">Nom</label>
      <input id="Nom" type="text" class="form-control" placeholder="nom" required="required" name="nom">
       <span><c:out value="${erreur.nom}"></c:out></span>
  </div>

  <div class="form-group">
      <label class="control-label" for="text">prenom</label>
      <input id="prenom" type="text" class="form-control" placeholder="prenom" required="required" name="prenom">
      <div  class="alert alert-block alert-danger" style="display: none" id="pren"> le prenom est obligatoire</div>
      <span><c:out value="${erreur.prenom}"></c:out></span>
    </div>


<div class="form-group">
      <label class="control-label" for="text">lieu de Naissance</label>
       
                                            <select class="form-control" name="lieun">
                                                <option>Ho-chi-minh</option>
                                                <option>Hanoi</option>
                                                <option>Da-Nang</option>
                                                <option>Bien-Hoa</option>
                                                <option>Nha-Trang</option>
                                                <option>Can-Tho</option>
                                                <option>Rach-Gia</option>
                                                <option>Vung-Tau</option>
                                            </select>
      <div  class="alert alert-block alert-danger" style="display: none"> le lieu de naissance est un champ obligatoire</div>
      </div>
  <div class="form-group">
      <label class="control-label" for="text">status</label>
                                            <select class="form-control" name="stat">
                                                <option>Visiteur</option>
                                                <option>Adherent</option>
                                                <option>bibliothecaire</option>
                                                <option>admin</option>
                                            </select>
      
      <div  class="alert alert-block alert-danger" style="display: none"> statue est un champ obligatoire</div>
    </div>
    <div class="form-group" id="motv">
      <label class="control-label" for="text">Mote de pass</label>
      <input id="motpass" type="password" class="form-control" placeholder="password" required="required" name="motp">
      <div  class="alert alert-block alert-danger" style="display: none" id="motp"> le mot de passe est une valeur obligatoire</div>
      <span><c:out value="${erreur.motpass}"></c:out></span>
    </div> 
    <div class="form-group">
      <label class="control-label" for="text">Date de Naissance</label>
      <input id="datenaissnce" type="Date" class="form-control" placeholder="date de naissance" required="required" name="datn">
      <div  class="alert alert-block alert-danger" style="display: none"> la date de naissance est obligatoire</div>
    </div> 
     <br/>
    <button type="submit" class=" form-control btn btn-primary pull-right">Envoyer</button>
    
    <div class="alert alert-block alert-danger" style="display:none" >
      <h4>Erreur !</h4>
      le nom doit avoir au moins quatre caracteres ! 
    </div>
  </form>
</div>
<script  src="assets/js/jquery-1.11.1.js">

 
    
  $(function(){
    $("form").on("submit", function() {
      if($("input").val().length < 4) {
        $("div.form-group").addClass("has-error");
        $("div.alert").show("slow").delay(4000).hide("slow");
        return false;
      }
    });
  });

</script>






    
</body>
</html>