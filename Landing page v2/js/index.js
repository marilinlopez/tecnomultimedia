/*Mensaje modal con nombre ingresado en formulario*/

$(document).ready(function () {

  let $btnsub = document.getElementById('btnsub');
  $btnsub.addEventListener('click', function (e) {
    var nombre = document.getElementById('nombre').value;
    $("#nombreIngresado").text("¡Gracias, " + nombre + "!");
  })

})

/*Materialize initialization carousel*/

document.addEventListener('DOMContentLoaded', function () {
  var elems = document.querySelectorAll('.carousel');
  var instances = M.Carousel.init(elems,{
    numVisible: 7,
  });
});

/*Materialize initialization Modal*/

document.addEventListener('DOMContentLoaded', function () {
  var elems = document.querySelectorAll('.modal');
  var instances = M.Modal.init(elems);
});