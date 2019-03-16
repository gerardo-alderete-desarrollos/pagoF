<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    
</head>
<%@include file="WebStyles.jsp" %>

<body>
    <div class="container">
        <!-- header -->
        <%@include file="header.jsp" %>
		<!-- inicio barra progreso -->
        
		<%@include file="barraProgeso.jsp" %>        
        <section>
        <input class="vistaActualJsp" value="1" hidden />
        <input class="estatusJsp" value="1" hidden />
        <input class="seccJsp" value="1" hidden />

        <c:url value="/agentes/datosGeneralesCliente/guardar/" var="guardar"/>
            <sf:form modelAttribute="frmDatosGeneralesCliente" action="${ guardar }" method="POST" enctype="multipart/form-data">

                <div id="accordion">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0 d-flex justify-content-between">
                                <div class="btn btn-link">
                                    1. Datos Generales del Cliente
                                </div>
                                <button class="btn btn-link " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="desplegar">
                                    <spring:url value="/resources/images/desplegable.png" var="imgDesplegable" />
                                    <img class="u-w-iconos" id="imgRot" src="${ imgDesplegable }" alt="desplegable abajo">
                                </button>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Nombre(s):<span>*</span></label>
                                		<sf:input  class="form-control" path="nombreCliente"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Apellido Paterno:<span>*</span></label>
                                        <sf:input  class="form-control" path="apellidoPaternoCliente"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Apellido Materno:<span>*</span></label>
                                        <sf:input  class="form-control" path="apellidoMaternoCliente"/>
                                    </div>

                                </div>
                                
                                <div class="row">                                
                                	<div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idGenero">G&eacute;nero: <span>*</span></label><br>                                        
                                        <div class="form-check form-check-inline">
										   	<sf:radiobuttons path="idGenero" class="form-check-input" items="${lstGeneros}" />
										   <br>
										</div>
									<br>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Fecha de Nacimiento:<span>*</span></label>
                                        <sf:input class="form-control" path="fechaNacimiento"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>                                    
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idPais" class="col-sm-12 control-label">Pa&iacute;s:<span>*</span></label>
                                        <sf:select path="idPais" class="form-control" items="${lstPaises}"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
<<<<<<< HEAD
                                        <label for="idEstado" class="col-sm-12 control-label">Entidad Federativa:<span>*</span></label>
                                        <sf:select path="idEstado" class="form-control" items="${ lstEstados }"/>
=======
                                        <label class="col-sm-12 control-label">Entidad Federativa:<span>*</span></label>                                        
                                        <sf:select path="idEstado" items="${lstEstados }"/>
                                        
                                        
>>>>>>> 94fdad66d07d289df6d95a9193dbe48cd67f56a1
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idNacionalidad" class="col-sm-12 control-label">Nacionalidad:<span>*</span></label>
                                        <sf:select path="idNacionalidad" class="form-control" items="${lstNacionalidades}"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idTipoIdentificacion" class="col-sm-12 control-label">Tipo de identificaci&oacute;n</label>
                                        <sf:select path="idTipoIdentificacion" class="form-control" items="${lstIdentificaciones}"/>                                        
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="claveElector" class="col-sm-12 control-label">Clave de Elector</label>
                                        <sf:input class="form-control" path="claveElector"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="numeroCelular" class="col-sm-12 control-label">N&uacute;mero de celular(10 d&iacute;gitos):</label>
                                        <sf:input class="form-control" path="numeroCelular"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Tipo de plan</label>
                                        <div class="form-check form-check-inline">
										   	<sf:radiobuttons path="idTipoPlan" class="form-check-input" items="${ lstPlanes }" />
										   <br>
										</div>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idProveedorTelefonia" class="col-sm-12 control-label">Empresa proveedora de telefon&iacute;a:<span>*</span></label>
                                        <sf:select path="idProveedorTelefonia" class="form-control" items="${lstProveedoresTelefonicos}"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="profesion" class="col-sm-12 control-label">Profesi&oacute;n:<span>*</span></label>
                                        <sf:input class="form-control" path="profesion"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="rfc" class="col-sm-12 control-label">RFC con Homoclave <small>(cuando cuente con ella)</small></label> 
                                        <sf:input class="form-control" path="rfc"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="curp" class="col-sm-12 control-label">CURP:<small>(Clave &Uacute;nica de Registro de Poblaci&oacute;n)</small></label>
                                        <sf:input class="form-control" path="curp"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="correoElectronico" class="col-sm-12 control-label">Direcci&oacute;n de correo electr&oacute;nico</label>
                                        <sf:input class="form-control" path="correoElectronico"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Tel&eacute;fono alternativo</label> 
                                        <sf:input class="form-control" path="telefonoAlternativo"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label">Ocupaci&oacute;n</label>
                                        <sf:select path="idOcupacion" class="form-control" items="${ lstOcupacion }"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                </div>
                                
								<div class="row col-12">
									<label>Datos cuenta Bancaria<small>(cuando cuente con ella)</small></label>
								</div>                                
                                
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idBanco" class="col-sm-12 control-label">Nombre del Banco</label> 
                                        <sf:input class="form-control" path="idBanco"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="beneficiarioCuenta" class="col-sm-12 control-label">Beneficiario de la cuenta</label>
                                        <sf:input class="form-control" path="beneficiarioCuenta"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="clabe" class="col-sm-12 control-label">CLABE Interbancaria</label>
                                        <sf:input class="form-control" path="clabe"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="noSerieFirmaElectronica" class="col-sm-12 control-label">No. de serie de la Firma Electr&oacute;nica Avanzada<small>(cuando cuente con ella)</small></label> 
                                        <sf:input class="form-control" path="noSerieFirmaElectronica"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                </div>
                                
                                <div class="row col-12">
									<label>Domicilio Particular</label>
								</div>
								
								<div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="calle" class="col-sm-12 control-label">Calle:<span>*</span></label> 
                                        <sf:input class="form-control" path="calle"/>
                                    </div>
                                    <div class="col-md-2 col-xs-12 form-group pb-3">
                                        <label for="noExterior" class="col-sm-12 control-label">No. Exterior:<span>*</span></label>
                                        <sf:input class="form-control" path="noExterior"/>
                                    </div>
                                    <div class="col-md-2 col-xs-12 form-group pb-3">
                                        <label for="noInterior" class="col-sm-12 control-label">No. Interior</label>
                                        <sf:input class="form-control" path="noInterior"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="colonia" class="col-sm-12 control-label">Colonia:<span>*</span></label>
                                        <sf:input class="form-control" path="colonia"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="delegacion" class="col-sm-12 control-label">Delegaci&oacute;n</label> 
                                        <sf:input class="form-control" path="delegacion"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="municipio" class="col-sm-12 control-label">Municipio</label>
                                        <sf:input class="form-control" path="municipio"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="ciudad" class="col-sm-12 control-label">Ciudad</label>
                                        <sf:input class="form-control" path="ciudad"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="poblacion" class="col-sm-12 control-label">Poblaci&oacute;n</label> 
                                        <sf:input class="form-control" path="poblacion"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idPaisDomicilioParticular" class="col-sm-12 control-label">Pa&iacute;s:<span>*</span></label>
                                        <sf:select path="idPaisDomicilioParticular" class = "form-control" items="${lstPaises}"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="idEstadoDomicilioParticular" class="col-sm-12 control-label">Entidad Federativa:<span>*</span></label>
                                        <sf:select path="idEstadoDomicilioParticular" class = "form-control" items="${lstEstados}"/>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="codigoPostal" class="col-sm-12 control-label">C.P.</label> 
                                        <sf:input class="form-control" path="codigoPostal"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="telefonoParticular" class="col-sm-12 control-label">Tel&eacute;fonos Particular y/o Recados</label>
                                        <sf:input class="form-control" path="telefonoParticular"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h5 class="mb-0 d-flex justify-content-between">
                                <div class="btn btn-link">
                                    1.1 Beneficiario en Caso de Fallecimiento
                                </div>
                                <button class="btn btn-link " data-toggle="collapse" data-target="collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                    <spring:url value="/resources/images/desplegable.png" var="imgDesplegable" />
                                    <img class="u-w-iconos" id="imgRot" src="${ imgDesplegable }" alt="desplegable abajo">
                                </button>
                            </h5>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion1">
                            <div class="card-body">
                            
                            <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="nombreBeneficiario" class="col-sm-12 control-label">Nombre(s):<span>*</span></label> 
                                        <sf:input class="form-control" path="nombreBeneficiario"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="apellidoPaternoBeneficiario" class="col-sm-12 control-label">Apellido Paterno:<span>*</span></label>
                                        <sf:input class="form-control" path="apellidoPaternoBeneficiario"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="apellidoMaternoBeneficiario" class="col-sm-12 control-label">Apellido Materno:<span>*</span></label>
                                        <sf:input class="form-control" path="apellidoMaternoBeneficiario"/>
                                    </div>
                              </div>
                              
                              <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="parentescoBeneficiario" class="col-sm-12 control-label">Parentesco</label> 
                                        <sf:input class="form-control" path="parentescoBeneficiario"/>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3"></div>
                                </div>

                            </div>
                        </div>
                    </div>
                                        
                    <div class="row justify-content-end mt-botones">                            
                        <div class="form-group pt-3 pr-3">

                            
                            <a href="${ guardar }" class="btn btn-primary">Guardar</a>
                            
                            <input type="submit" class="btn btn-primary" value = "Guardar">

                        </div>
                    </div>
                    
                </div>
            </sf:form>
        </section>

        <!-- fin -->
    </div>


</body>
<!-- footer -->
<footer class="footer">
</footer>

<%@include file="WebScripts.jsp" %>
</html>