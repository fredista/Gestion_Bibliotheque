<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
            <title>Le bibliotheque le savoir est une arme - fond documentaire</title>
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
                            <strong>Email: </strong>savoirarme@gmail.com &nbsp;&nbsp;
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
                                    <li><a class="menu-top-active" href="blank.html">fond documentaire</a></li>
                                    <li><a href="table.html">Data Tables</a></li>
                                    <li><a href="forms.html">Forms</a></li>
                                    <li><a href="login.html">Login Page</a></li>
                                    <li><a class="menu-top-active" href="blank.html">Blank Page</a></li>

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
                            <h4 class="page-head-line">fond documentaire</h4>
                            <h3>
                                <c:out value="${message}"></c:out>
                            </h3>

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-12 col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        fond documentaire: le savoir est une arme
                                    </div>
                                    <div class="panel-body">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a href="#home" data-toggle="tab">Ajouter un livre</a>
                                            </li>
                                            <li class=""><a href="#profile" data-toggle="tab">Profile</a>
                                            </li>
                                            <li class=""><a href="#messages" data-toggle="tab">Messages</a>
                                            </li>
                                            <li class=""><a href="#settings" data-toggle="tab">Settings</a>
                                            </li>
                                        </ul>

                                        <div class="tab-content">
                                            <div class="tab-pane fade active in" id="home">
                                                <h4>Ajouter un livre Tab</h4>
                                                <p>
                                                    <form class="we col-md-8" autocomplete="off" method="POST" action="ServLivre">

                                                        <div class="form-group">
                                                            <label class="control-label" for="text">Titre</label>
                                                            <input id="Nom" type="text" class="form-control" placeholder="titre" name="titre" required="required">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label" for="text">nombre exemplaire</label>
                                                            <input id="Nom" type="number" min="1" max="9" class="form-control" placeholder="titre" name="quantite" required="required">
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="control-label" for="text">Categorie</label>
                                                            <select class="form-control" name="categorie">
                                                            <option value="informatique">informatique</option>
                                                            <option value="mathematique">mathematiques</option>
                                                            <option value="chimie" >chimie</option>
                                                            <option value"litterature">litterature afr</option>
                                                        </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="control-label" for="text">Isbn</label>
                                                            <input id="Nom" type="text" class="form-control" placeholder="Isbn" name="isbn" required="required">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label" for="text">Date d edition</label>
                                                            <input id="Nom" type="Date" class="form-control" placeholder="Isbn" name="dat" required="required">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label" for="text">Nom auteur</label>
                                                            <input id="Nom" type="text" class="form-control" placeholder="auteur" name="nom" required="required">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                            <button type="submit" name="envoyer" class=" form-control btn btn-success pull-left"><span class="glyphicon glyphicon-tags"></span><span>Enregistrer</span></button>
                                                        </div>
                                                    </form>
                                                    .</p>
                                            </div>
                                            <div class="tab-pane fade" id="profile">
                                                <h4>Recherche... Tab</h4>
                                                <p>
                                                		
                                                    <form class="form-inline" method="post" action="#">  
                                                        <!-- <div class="container">  -->
                                                        <div class="row">
                                                            <div class="col-md-12 col-xs-offset-2">
                                                                <div class="form-group">
                                                                    <select class="form-control">
                                                                    <option >Filter by</option>
                                                                    <option value="Contains">Contains</option>
                                                                    <option value="equal">It's equal</option>
                                                                    <option value="Greather">Greather than</option>
                                                                </select>


                                                                    <input type="text" class="form-control" name="x" placeholder="Search term..." />
                                                                    <button class="btn btn-default"> 
                                                                 <span class="glyphicon glyphicon-search"></span>
                                                                </button>
                                                                </div>
                                                            </div>
                                                    </form>  
                                                    </div>
                                                    </br>

                                                    <table class="table table-striped table-bordered table-hover">

                                                        <thead>
                                                            <tr>
                                                                <th>Ref. No.</th>
                                                                <th>Date</th>
                                                                <th>titre</th>
                                                                <th>isbn</th>
                                                                <th>Nom auteur </th>
                                                                <th>categorie</th>
                                                                <th>quantite</th>
                                                                <th> # #</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            <c:forEach var="liv" items="${listliv}">
                                                                <tr>
                                                                    <td>
                                                                        <c:out value="${liv.idLivre}" />
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${liv.dateEdit}"></c:out>
                                                                    </td>
                                                                    <td>
                                                                        <label class="label label-info"><c:out value= "${liv.titre}"></c:out> </label>
                                                                    </td>
                                                                    <td>
                                                                        <label class="label label-success"> <c:out value="${liv.isbn}"/> </label></td>
                                                                    <td>
                                                                        <c:out value="${liv.nomAut}"></c:out>
                                                                    </td>
                                                                    <td>
                                                                        <c:out value="${liv.categorie }" /> </td>
                                                                    <td>
                                                                        <c:out value="${liv.quantite }" />
                                                                    </td>
                                                                    <td>
                                                                        <a href="<c:url value=" /Servmodal "><c:param name = "id " value="${liv.idLivre} "/> </c:url>" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal<c:out value="${liv.idLivre}" />">
                                                    editer
                                                    </a>

                                                                    </td>
                                                                </tr>

                                                                <div class="row">
                                                                <form action="ServValide" method="Post">  
                                                                
                                                                    <div class="modal fade" id='myModal<c:out value="${liv.idLivre}" />' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                                                        <div class="modal-dialog">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                                                    <h4 class="modal-title" id="myModalLabel">Modal title Here</h4>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    Lorem ipsum dolor sit amet, consectetur adipisici***
                                                                                    <c:out value="${liv.idLivre}" /> 
                                                                                    <c:out value="${liv.quantite }" />.
                                                                                    <input type="hidden" name="idliv" value="${liv.idLivre}"> 
                                                                                </div>
                                                                                <div class="modal-footer">
                                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                                                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                      
                                          </form>
                                                                </div>

                                                            </c:forEach>


                                                        </tbody>
                                           
                                                    </table>

                                                    .</p>
                                            </div>
                                            <div class="tab-pane fade" id="messages">
                                                <h4>Messages Tab</h4>
                                                <p>
                                                    <table class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Ref. No.</th>
                                                                <th>Date</th>
                                                                <th>Amount</th>
                                                                <th>Status</th>
                                                                <th>Delivery On </th>
                                                                <th># #</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>


                                                            <tr>
                                                                <td># 2501</td>
                                                                <td>01/22/2015 </td>
                                                                <td>
                                                                    <label class="label label-info">300 USD </label>
                                                                </td>
                                                                <td>
                                                                    <label class="label label-success">Delivered</label></td>
                                                                <td>01/25/2015</td>
                                                                <td> <a href="#" class="btn btn-xs btn-danger">View</a> </td>
                                                            </tr>
                                                            <tr>
                                                                <td># 15091</td>
                                                                <td>12/12/2014 </td>
                                                                <td>
                                                                    <label class="label label-danger">7000 USD </label>
                                                                </td>
                                                                <td>
                                                                    <label class="label label-warning">Shipped</label></td>
                                                                <td>N/A</td>
                                                                <td> <a href="#" class="btn btn-xs btn-success">View</a> </td>
                                                            </tr>
                                                            <tr>
                                                                <td># 11291</td>
                                                                <td>12/03/2014 </td>
                                                                <td>
                                                                    <label class="label label-warning">7000 USD </label>
                                                                </td>
                                                                <td>
                                                                    <label class="label label-success">Delivered</label></td>
                                                                <td>01/23/2015</td>
                                                                <td> <a href="#" class="btn btn-xs btn-primary">View</a> </td>
                                                            </tr>
                                                            <tr>
                                                                <td># 1808</td>
                                                                <td>11/10/2014 </td>
                                                                <td>
                                                                    <label class="label label-success">2000 USD </label>
                                                                </td>
                                                                <td>
                                                                    <label class="label label-info">Returned</label></td>
                                                                <td>N/A</td>
                                                                <td> <a href="#" class="btn btn-xs btn-danger">View</a> </td>
                                                            </tr>
                                                        </tbody>
                                                    </table> .</p>
                                            </div>
                                            <div class="tab-pane fade" id="settings">
                                                <h4>Settings Tab</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing ed.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        // </div>
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