<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
 <!-- importation du fichier jar de jstl -->

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>bibliotheque le savoir est une arme - historique et emprunt</title>
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
                    <strong>telephone: </strong>+84-897-678-44
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
                            <li><a  href="index.html">Accueil</a></li>
                            <li><a class="menu-top-active" href="ui.html">historique et emprunt</a></li>
                            <li><a href="table.html">Data Tables</a></li>
                            <li><a href="forms.html">Forms</a></li>
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
                    <h1 class="page-head-line">UI Elements</h1>
                    
                    <c:if test="${!empty confi }"> <c:out value="${confi}"></c:out> </c:if>
                </div>
               
            </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Nouveaux abonnes 
                        </div>
                       
                       <div class="panel-body">
                         <div class="table-responsive">
                         		<c:choose> <c:when test="${ not empty messag }">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Ref. No.</th>
                                            <th>Nom</th>
                                            <th>Prenom</th>
                                            <th>Date Naissnce</th>
                                            <th>Lieu Nssce </th>
                                            <th> Decision </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <c:forEach items="${messag}" var="util">
                                        <tr>
                                            <td><c:out value="${util.id }"></c:out></td>
                                            <td> <c:out value="${util.nom }"></c:out> </td>
                                            <td>
                                                <label class="label label-info"> <c:out value="${util.prenom}"></c:out> </label>
                                            </td>
                                            <td>
                                                <label class="label label-success"><c:out value="${util.datenssce}"></c:out></label></td>
                                            <td><c:out value="${util.lieunssce}"></c:out></td>
                                             
                                             <td>
                                             <a href = "<c:url value="/ServValide"><c:param name = "id" value="${util.id}"/> </c:url>" class = "btn btn-sm btn-success"> Valider</a>
                                             </td>
                                        </tr>
                                      </c:forEach>
                                    </tbody>
                                </table>
                                </c:when>
                                <c:otherwise> <c:out value="Aucun abonne est en attente de validation"></c:out> </c:otherwise>
                                </c:choose>
                            </div>
                      
                       </div>

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
                    &copy;ifi_p22 projet genie logiciel | par : <a href="http://www.designbootstrap.com/" target="_blank">zacharie brahim adama bangadingar</a>
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

 