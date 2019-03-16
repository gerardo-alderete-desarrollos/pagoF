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
        <section>
            <div class="row justify-content-center">
                <div class="col-md-6 col-xs-12">
                    <a href="#" class="logo">
                        <img src="resources/images/logotipo-header.png" alt="logoPagofon" class="w-50">
                    </a>
                </div>
                <div class="col-6 text-right secc-hd-2">
                    <p>Prueba</p>
                </div>
            </div>
        </section>
        <!-- inicio barra progreso -->
        
<%@include file="barraProgeso.jsp" %>        
       <section>
       
       		<c:url var="datosNegocioSave" value="/agentes/datosNegocio/guardar/" />
		<sf:form id="formDatosNegocio" action="${datosNegocioSave}"  method="POST" modelAttribute="frmDatosNegocio" autocomplete="off" >
		    <div id="accordion">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0 d-flex justify-content-between">
                                <div class="btn btn-link">
                                    2. Datos del Negocio
                                </div>
                                <button class="btn btn-link " data-toggle="collapse" data-target="#collapseOne"
                                    aria-expanded="true" aria-controls="collapseOne" id="desplegar">
                                    <img class="u-w-iconos" id="imgRot" src="resources/images/desplegable.png"
                                        alt="desplegable abajo">
                                </button>
                            </h5>
                        </div>

                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne"
                            data-parent="#accordion">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="nombreEmpresa">Nombre de la empresa
                                            o Negocio <span>*</span></label>
                                        <!-- <input type="text" class="form-control" id="nombreEmpresa"
                                            name="nombreEmpresa" /> -->
                                            <sf:input path="nombreNegocio" placeholder="Nombre de la Empresa"/>
                                    </div>
                                    <div class="form-group col-md-6 col-xs-12">
                                        <label for="giro">Giro Mercantil o Actividad<span>*</span></label>
                                        <select class="form-control" id="giro" name="giro">
                                                <option disabled selected="selected">Seleccciona</option>
                                                <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="calle">Calle:<span>*</span></label>
                                        <input type="text" class="form-control" id="calle" name="calle" />
                                    </div>
                                    <div class="col-md-3 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="noExterior">No.
                                            Exterior:<span>*</span></label>
                                        <input type="text" class="form-control" id="noExterior" name="noExterior" />
                                    </div>
                                    <div class="col-md-3 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="noInterior">No.
                                            Interior:<span>*</span></label>
                                        <input type="text" class="form-control" id="noInterior" name="noInterior" />
                                    </div>

                                    <div class="col-md-3 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label"
                                            for="colonia">Colonia:<span>*</span></label>
                                        <input type="text" class="form-control" id="colonia" name="colonia" />
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="delegacion">Delegación
                                            <span>*</span></label>
                                        <input type="text" class="form-control" id="delegacion" name="delegacion" />
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="municipio">Municipio
                                            <span>*</span></label>
                                        <input type="text" class="form-control" id="municipio" name="municipio" />
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="ciudad">Ciudad
                                            <span>*</span></label>
                                        <input type="text" class="form-control" id="ciudad" name="ciudad" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="poblacion">Población:<span>*</label>
                                        <input type="text" class="form-control" id="poblacion" name="poblacion" />
                                    </div>
                                    <div class="form-group col-md-4 col-xs-12">
                                        <label for="pais">País:<span>*</span></label>
                                        <select class="form-control" id="pais" name="pais">
                                            <option disabled selected="selected">Seleccciona</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-4 col-xs-12">
                                        <label for="entidad">Entidad Federativa:<span>*</span></label>
                                        <select class="form-control" id="entidad" name="entidad">
                                            <option disabled selected="selected">Seleccciona</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="cp">C.P. <span>*</span></label>
                                        <input type="text" class="form-control" id="cp" name="cp" />
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="telefonoNegocio">Telefono del
                                            Negocio</label>
                                        <input type="text" class="form-control" id="telefonoNegocio"
                                            name="telefonoNegocio" />
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3 d-flex flex-column">
                                        <label>Tamaño del Negocio <span>*</span></label>
                                        <div class="d-fex flex-row">
                                            <label class="radio-inline mr-3"><input type="radio" name="tamanioNegocio"
                                                    >Pequeño</label>
                                            <label class="radio-inline mr-3"><input type="radio"
                                                    name="tamanioNegocio">Mediano</label>
                                            <label class="radio-inline"><input type="radio"
                                                    name="tamanioNegocio mr-3">Grande</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3 d-flex flex-column">
                                        <label>Dias de trabajo a la semana <span>*</span></label>
                                        <div class="d-flex flex-row">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="diasTrabajo"
                                                    value="lunes">
                                                <label class="form-check-label" for="lunes">Lunes</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="diasTrabajo"
                                                    value="martes">
                                                <label class="form-check-label" for="martes">Martes</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="diasTrabajo"
                                                    value="miercoles">
                                                <label class="form-check-label" for="miercoles">Miercoles</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="diasTrabajo"
                                                    value="jueves">
                                                <label class="form-check-label" for="jueves">Jueves</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="diasTrabajo"
                                                    value="viernes">
                                                <label class="form-check-label" for="viernes">Viernes</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-4 col-xs-12">
                                        <label for="entreSemana">Horario de atención entre semana <span>*</span></label>
                                        <select class="form-control" id="entreSemana" name="entreSemana">
                                                <option disabled selected="selected">Seleccciona</option>
                                                <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-4 col-xs-12">
                                        <label for="finSemana">Horario de atención en fines de semana
                                            <span>*</span></label>
                                        <select class="form-control" id="finSemana" name="finSemana">
                                                <option disabled selected="selected">Seleccciona</option>
                                                <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="sitioWeb">Sitio
                                            WEB <small>(En caso de que cuente con él)</small></label>
                                        <input type="text" class="form-control" id="sitioWeb" name="sitioWeb" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="cPromedioDia">Clientes promedio al
                                            dia <span>*</span></label>
                                        <input type="text" class="form-control" id="cPromedioDia" name="cPromedioDia" />
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label for="cVentasDia">Ventas promedio por cliente <small>(al
                                                dia)($)</small> <span>*</span></label>
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">$</div>
                                            </div>
                                            <input type="text" class="form-control" id="cVentasDia" name="cVentasDia">
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-xs-12 form-group pb-3">
                                        <label class="col-sm-12 control-label" for="antiguedad">Antiguedad
                                            <span>*</span></label>
                                        <input type="text" class="form-control" id="antiguedad" name="antiguedad" />
                                    </div>
                                </div>


                                <div class="d-flex flex-row justify-content-end mt-botones">
                                    <div class="form-group pb-3 ">
                                        <button class="btn btn-primary" type="submit">Guardar</button>
                                        <button class="btn btn-primary" type="button">Siguiente</button>
                                    </div>

                                </div>






                            </div>
                        </div>
                    </div>

                </div>
            </sf:form>
        </section>
    </div>


</body>
<!-- footer -->
<footer class="footer">
</footer>

<%@include file="WebScripts.jsp" %>


</html>