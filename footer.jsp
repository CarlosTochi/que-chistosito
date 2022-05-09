<!-- PIE DE PÁGINA -->
<footer class="footer text-center">
        <div class="container">
            <div class="row">
                <!-- Footer Location-->
                <div class="col-lg-4 mb-5 mb-lg-0"> 
                    <p class="lead mb-0">Somos un equipo conformado por 3 personas<br>Dedicado a la creaci&oacute;n de proyectos</p>
                    <p class="lead mb-0">De la poderosa UPIICSA</p>
                </div>
                <!-- Footer logo-->
                <div class="col-lg-4">
					<a href="team.jsp">
					<h4 class="text-uppercase mb-4 text-light">GUARDIANES DEL INTERNET</h4>
					<img src="images/logo.png"alt="equipo" height="150" width="200">
					</a>
                </div>
                <!-- Footer Social Icons-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Redes Sociales</h4>
        	        <a class="btn btn-outline-light btn-social mx-1" href="error.html" target="_blank"><i class="fab fa-fw fa-facebook-f"></i></a><a class="btn btn-outline-light btn-social mx-1" href="error.html" target="_blank"><i class="fab fa-fw fa-instagram"></i></a><a class="btn btn-outline-light btn-social mx-1" href="error.html" target="_blank"><i class="fab fa-fw fa-youtube"></i></a>
                </div>
            </div>
        </div>
</footer>

<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body text-center">
                    <div class="row justify-content-center">
                                <div class="container align-items-center">
                                    <div class="row no-gutters">
                                        <div class="col-lg-5">
                                            <img id="joker" src="images/jokers.jpg" alt="inicioSesion" class="img-fluid">
                                        </div>
                                        <div class="col-lg-7 px-5 pt-5">
                                            <h1 class="font-weight-bold py-3">Que chistosito!</h1>
                                            <h4>Entra para ver los mejores chistes</h4>
                                            <form action="authenticate_user.controller" method="Post" accept-charset="utf-8">
                                                <div class="form-group">
                                                    <label>Correo Electronico</label>
                                                     <input type="email" name="email" placeholder="Escriba su email" pattern="^[A-Za-z0-9_.]+@([A-Za-z0-9]+)*[.][A-Za-z0-9]+" title="El correo solo puede contener letras, numeros, puntos o guiones bajos" class="form-control my-3 p-4" required> 
                                                </div>
                                                <div class="form-group">
                                                    <label>Contrase&ntilde;a</label>
                                                     <input type="password" name="password" placeholder="Escriba su contraseña" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}$" title="La contrasena debe tener una logitud minima de 8 caracteres y contener al menos 1 minuscula, 1 mayuscula, 1 numero y un simbolo especial $@$!%*?&" class="form-control my-3 p-4" required>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" class="IniSess mt-3 mb-5">Iniciar Sesion</button>
                                                    <p>Aun no tienes cuenta que esperas <a data-toggle="modal" data-target="#Registro">registrate</a> </p> 
                                                </div>                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                    </div>
            </div>
        </div>
    </div>
</div>
<!--Registro de usuarios-->
<div class="portfolio-modal modal fade" id="Registro" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body text-center">
                    <div class="row justify-content-center">
                                <div class="container align-items-center">
                                    <div class="row no-gutters">
                                        <div class="col-lg-5">
                                            <img id="joker" src="images/jokuser.jpeg" alt="inicioSesion" class="img-fluid">
                                        </div>
                                        <div class="col-lg-7 px-5 pt-5">
                                            <h1 class="font-weight-bold py-3">Que chistosito!</h1>
                                            <h4>Registrate para ver los mejores chistes</h4>
                                                <form action="register_user.controller" method="Post" accept-charset="utf-8">
                                                <div class="form-group">
                                                    <label>Correo electronico</label>
                                                    <input type="email" name="email" placeholder="Correo electronico" class="form-control my-3 p-4" pattern="^[A-Za-z0-9_.]+@([A-Za-z0-9]+)*[.][A-Za-z0-9]+" title="El correo solo puede contener letras, numeros, puntos o guiones bajos" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Nombre</label>
                                                     <input type="text" name="firstname" placeholder="Nombre" class="form-control my-3 p-4" pattern="[A-Za-z0-9]+" title="Solo puede llevar numeros y/o letras" required>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Apellidos</label>
                                                     <input type="text" name="lastname" placeholder="Apellidos" class="form-control my-3 p-4" pattern="[A-Za-z0-9]+" title="Solo puede llevar numeros y/o letras" required>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Contrase&ntilde;a</label>
                                                     <input type="password" name="password" placeholder="*******" class="form-control my-3 p-4" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}$" title="La contrasena debe tener una logitud minima de 8 caracteres y contener al menos 1 minuscula, 1 mayuscula, 1 numero y un simbolo especial $@$!%*?&" required>
                                                </div> 
                                                <div class="form-group">
                                                    <label>Confirmar contrase&ntilde;a</label>
                                                     <input type="password" name="password-confirmation" placeholder="*******" class="form-control my-3 p-4" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}$" title="La contrasena debe tener una logitud minima de 8 caracteres y contener al menos 1 minuscula, 1 mayuscula, 1 numero y un simbolo especial $@$!%*?&" required>
                                                </div> 
                                                <div class="form-group">
                                                    <button type="submit" class="IniSess mt-3 mb-5">Registrate</button>
                                                </div>                     
                                            </form>
                                        </div>
                                    </div>
                                </div>
                    </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Contact form JS-->
<script src="assets/mail/jqBootstrapValidation.js"></script>
<script src="assets/mail/contact_me.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
    <script type="text/javascript">
        var str = document.getElementById("chiste").innerHTML; 
        var res = str.replace(/;/g, "<br>");
        
        document.getElementById("chiste").innerHTML = res;
                
    </script>
</body>
</html>