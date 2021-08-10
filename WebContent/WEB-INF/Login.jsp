<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Bibliotheque le savoir est une arme - login</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="styl/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="styl/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="styl/assets/css/style.css" rel="stylesheet" />
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
                    <strong>telephone: </strong>+84-0167-678-44
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
                <i class="fa fa-user-plus login-icon" ></i>
        </div>
            </div>
        </div>
    <!-- LOGO HEADER END-->
   
    <!-- MENU SECTION END-->
    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">connectez vous pour emprunter </h4>

                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                ${envo}
                   <h4> identifiant facebook <strong> / </strong>Google :</h4>
                    <br />
                    <a href="index.html" class="btn btn-social btn-facebook">
                            <i class="fa fa-facebook"></i>&nbsp; compte facebook </a>
                    &nbsp;OR&nbsp;
                    <a href="index.html" class="btn btn-social btn-google">
                            <i class="fa fa-google-plus"></i>&nbsp; compte google</a>
                    <hr />
                     <h4> se connecter <strong>pour emprunt  :</strong></h4>
                    <br />
                    <form  method="post" action="Servlogin" >
                     <label>username : </label>
                        <input type="text" class="form-control"  name="nom"  value="<c:out value="${param.nom}"/>" />
                        <span> ${erreur.nomp}</span><br/>
                        <label>mot de Password :  </label>
                        <input type="password" class="form-control" name="passwd" />
                        <span> ${erreur.motpass}</span><br/>
                        <hr />
                       <!--  <a href="index.html" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;se connecter </a>&nbsp;--> 
                        
                        <button type="submit" class="form-contol btn btn-primary pull-right" > envoyer</button>
                        
                   </form>
                </div>
                <div class="col-md-6">
                    <div class="alert alert-info">
                         Le savoir est une arme est une bibliotheque a vocation sociale qui aide les jeunes. 
                         dans leur parcours academique a avoir aux livres.
                        <br />
                         <strong> Nous soucissons de l avenir des jeunes.voici notre credo  :</strong>
                        <ul>
                            <li>
                                 oeuvre a la formation des jeunes
                            </li>
                            <li>
                                lutter pour une education de qualite
                            </li>
                            <li>
                                Batir une jeunesse capable d'assure la releve
                            </li>
                            <li>
                                 Sensibliser a travers la lecture.
                            </li>
                        </ul>
                       
                    </div>
                    <div class="alert alert-success">
                         <strong>  Nous sommes ouverts tous les jours:</strong>
                        <ul>
                            <li>
                                Le matiin du lundi a jeudi de 7h a 12h
                            </li>
                            <li>
                                 Le soir du lundi a samdi de 14-22h
                            </li>
                            <li>
                               Tous les mecredi projections des films
                            </li>
                            <li>
                                 les conferences mensuelles
                            </li>
                        </ul>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    &copy; ifi_p22 projet genie logiciel | par : <a href="http://www.designbootstrap.com/" target="_blank">zacharie brahim adama bangadingar</a>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="styl/assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="styl/assets/js/bootstrap.js"></script>
</body>
</html>


