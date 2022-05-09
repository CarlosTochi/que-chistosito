<!-- BUSCAR -->
	<img src="images/Globo2.jpg" alt="Fondo" id="Fondo" class="masthead-avatar mb-5">
	<div class="container d-flex align-items-center flex-row">
			<div class="container d-flex align-items-center flex-column">
				<h1 class="page-section-heading text-center text-uppercase text-white">Ingrese el chiste a buscar</h1><BR>
				<form action="get_jokes.controller" method="GET"> 
					<input type="text" name="criterio" placeholder="Escriba chiste a buscar" id="cajaTexto" class="src form-control" form-controlautocomplete="off" pattern="[A-Za-z ]+" title="Solo se pueden ingresar letras" size="50">							
					<div class="container d-flex align-items-center flex-column">
						<input type="submit" value="Buscar" class="IniSess mt-3 mb-5">	
					</div>
				</form>			
			</div>		
	</div>
	
	
	