<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

</head>
<%@include file="WebStyles.jsp"%>

<body>
	<div class="container">
		<!-- header -->
		<%@include file="header.jsp"%>
		<!-- inicio barra progreso -->

		<%@include file="barraProgeso.jsp"%>
		<section>
			<input class="vistaActualJsp" value="3" hidden /> <input
				class="estatusJsp" value="1" hidden /> <input class="seccJsp"
				value="3" hidden />

			<form class="formDeclaraciones">
				<div id="accordion">
					<div class="card">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0 d-flex justify-content-between white-text">
								4. Declaraciones
								<button class="btn btn-link " data-toggle="collapse"
									data-target="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne" id="desplegar">
									<img class="u-w-iconos" id="imgRot"
										src="/resources/images/desplegable.png"
										alt="desplegable abajo">
								</button>
							</h5>
						</div>

						<div id="collapseOne" class="collapse show"
							aria-labelledby="headingOne" data-parent="#accordion">
							<div class="card-body">
								<div class="row">
									<div class="col-md-8 col-xs-12 form-group pb-3">
										<label class="col-sm-8 control-label">Procedencia de
											los recursos del Cliente:<span>*</span>
										</label>
										<textarea class="form-control noresize" name="procedencia" id="procedencia"></textarea>
									</div>

									<div class="col-md-8 col-xs-12 form-group pb-3">
										<label class="col-sm-12 control-label">Destino de los
											recursos del Cliente:<span>*</span>
										</label>
										<textarea class="form-control noresize" name="destino" id="destino"></textarea>
									</div>

									<div class="col-md-6 col-xs-12 form-group pb-3">
										<label class="col-sm-12 control-label">¿Ejerce o ha
											ejercido un puesto político?<span>*</span>
										</label>
										<div class="row pb-3">
											<div class="form-check col-md-3 col-xs-12">
												<input class="form-check-input" type="radio"
													name="exampleRadios" id="exampleRadios1" value="option1"
													checked> <label class="form-check-label"
													for="exampleRadios1"> No </label>
											</div>

											<div class="form-check col-md-3 col-xs-12">
												<input class="form-check-input" type="radio"
													name="exampleRadios" id="exampleRadios2" value="option1"
													checked> <label class="form-check-label"
													for="exampleRadios2"> Si </label>
											</div>
										</div>
									</div>




									<div class="col-md-8 col-xs-12 form-group pb-3">
										<label class="col-sm-12 control-label">En caso
											afirmativo ¿Cuál puesto y cuándo?</label>
										<textarea class="form-control noresize" name="username"></textarea>
									</div>

									<div class="col-md-12 col-xs-12 form-group pb-3">
										<label class="col-sm-12 control-label">¿Usted tiene
											algún familiar por consanguinidad o afinidad o algún vínculo
											patrimonial con alguna persona que desempeñe o haya
											desempeñado en el transcurso de los últimos doce meses
											funciones públicas o actividades políticas DESTACADAS en el
											territorio nacional o extranjero?<span>*</span>
										</label>
									</div>

									<div class="col-xs-12">
										<label> Declaro que el origen y procedencia de los
											fondos que por cuenta propia o en representación habré de
											operar u opero, proceden de actividades lícitas. Asimismo,
											manifiesto que los datos y documentación proporcionada en
											este acto son verídicos, presento original y otorgo copia
											fotostática de los documentos de identificación y autorizo a
											que se corrobore esta información de estimarse conveniente.
											Autorizo expresamente para utilizar la presente información a
											COLTOMONEY, S.A. DE C.V., al contratar cualquier servicio con
											ella, o con motivo de la relación que se mantiene o llegue a
											mantener con la misma. La autorización que se otorga no
											implica la aceptación para que esta información se utilice
											por terceros distintos a COLTOMONEY, S.A. DE C.V. Declaro que
											terceros no operarán con mi consentimiento o el de mi
											representante en los productos, cuentas, contrato o servicios
											donde actúo y opero, con recursos provenientes de actividades
											ilícitas, y asimismo manifiesto que no se realizarán
											transacciones destinadas a favorecer actividades ilícitas.
											Manifestaciones que se hacen bajo protesta de decir verdad y
											consciente de que el del Sitio Web o la APP que en su caso
											utilice, se hará en función a tal información. </label>
									</div>

								</div>



							</div>
						</div>
					</div>

					<div class="row justify-content-end mt-botones">
						<div class="form-group pt-3 pr-3">
							<c:url var="redirect" value="/redirectVistas/siguiente/" />
							<a href="${redirect }" class="btn btn-primary mr-3">Siguiente</a>
							<a class="btn btn-primary" type="submit">Guardar</a>
						</div>
					</div>

				</div>
			</form>
		</section>

		<!-- fin -->
	</div>


</body>
<!-- footer -->
<footer class="footer"> </footer>

<%@include file="WebScripts.jsp"%>

<script>
	$(document).ready(function() {
		$(".formDeclaraciones").validate({
			rules : {

				procedencia : {
					required : true
				},
				destino : {
					required : true,
				}
			},
			//For custom messages
			messages : {

				procedencia : {
					required : "Esta información es necesaria."
				},
				destino : {
					required : "Esta información es necesaria."
				}
			},
			errorElement : 'div',
			submitHandler : function(form) {
				/* si todo esta ok */
			}
		});
	});
</script>
</html>