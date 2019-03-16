
$('#desplegar').on('click', () => {
    $("#imgRot").toggleClass("FlechaDown-css");
});



$('#formDatosNegocio').bootstrapValidator({


    // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
        nombreEmpresa: {
            validators: {
                stringLength: {
                    min: 1,
                    message: 'El nombre minimo debe de tener un caracter y maximo 155.'
                },
                notEmpty: {
                    message: 'Porfavor Ingresa el nombre de la empresa'
                }
            }
        },
        giro: {
            validators: {
                notEmpty: {
                    message: 'Por favor selecciona un giro'
                }
            }
        },

        calle: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir la calle'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'La calle debe de tener un caracter y maximo 100.'
                },
            }
        },
        noExterior: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir un numero exterior'
                },
                stringLength: {
                    min: 1,
                    max: 5,
                    message: 'Introduce un numero exterior de minimo 1 digitos y maximo de 5 digitos'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },
        noInterior: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir un numero interior'
                },
                stringLength: {
                    min: 1,
                    max: 5,
                    message: 'Introduce un numero interior de minimo 1 digitos y maximo de 5 digitos'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },

        colonia: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir la colonia'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'La colonia debe de tener un caracter y maximo 100.'
                },
            }
        },
        delegacion: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir la delegación'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'La delegación debe de tener un caracter y maximo 100.'
                },
            }
        },
        municipio: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir el municipio'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'El municipio debe de tener un caracter y maximo 100.'
                },
            }
        },
        ciudad: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir la ciudad'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'La ciudad debe de tener un caracter y maximo 100.'
                },
            }
        },
        poblacion: {
            validators: {
                notEmpty: {
                    message: 'Favor de Introducir la población'
                },
                stringLength: {
                    min: 1,
                    max: 100,
                    message: 'La población debe de tener un caracter y maximo 100.'
                },
            }
        },
        pais: {
            validators: {
                notEmpty: {
                    message: 'Por favor selecciona un pais'
                }
            }
        },
        entidad: {
            validators: {
                notEmpty: {
                    message: 'Por favor selecciona una Entidad Federariva'
                }
            }
        },
        cp: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir el codigo postal'
                },
                stringLength: {
                    min: 1,
                    max: 5,
                    message: 'Introduce un codigo postal de minimo 1 digitos y maximo de 5 digitos'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },
        tamanioNegocio: {
            validators: {
                notEmpty: {
                    message: 'Por favor selecciona el tamaño del neogocio'
                }
            }
        },
        diasTrabajo: {
            validators: {
                notEmpty: {
                    message: 'Por favor de seleccionar los dias de trabajo'
                }
            }
        },
        entreSemana: {
            validators: {
                notEmpty: {
                    message: 'Por favor de seleccionar los dias de atención entre semana'
                }
            }
        },
        finSemana: {
            validators: {
                notEmpty: {
                    message: 'Por favor de seleccionar los dias de atención en fin de semana'
                }
            }
        },
        cPromedioDia: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir los clientes promedio al dia'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },
        cVentasDia: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir las ventas promedio por dia'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },
        antiguedad: {
            validators: {
                notEmpty: {
                    message: 'Favor de introducir la antiguedad'
                },
                integer: {
                    message: 'El valor debe de ser tipo numerico'
                }
            }
        },
    }
})
    .on('success.form.bv', function (e) {

       
        e.preventDefault();

       
        var $form = $(e.target);

        // Get the BootstrapValidator instance
        var bv = $form.data('bootstrapValidator');

        console.log('validacion correcta');
        console.log(bv);    


    }).on('error.form.bv', function (e) {
        e.preventDefault();
  
        console.log('error: ' );
        console.log(e);
  
   });


   $('#entreSemana').multipleSelect({
    columns: 1,
    placeholder: 'Selecciona',
    search: true
});
   $('#finSemana').multipleSelect();


