$(document).ready(function() {

  let $btnsub = document.getElementById('btnsub');
  let $closebtn = document.getElementById('closebtn');
  let $modal = document.getElementById('modal');
  let $modalFondo = document.getElementById('modalFondo');

  function resetear() {
    document.getElementById("formulario").reset();
  }

  function openModal() {
    $modal.classList.add('active');
    $modalFondo.classList.add('activeFondo');
  }

  function closeModal() {
    $modal.classList.remove('active');
    $modalFondo.classList.remove('activeFondo');
  }

  function agradecimiento() {
    var nombre = document.getElementById('nombre').value;
    $("#nombreIngresado").text("¡Gracias, " + nombre + " tu suscripción se ha realizado con éxito! ");
  }

  /*Si ingreso mail incorrecto (sin @) funciona sino no, no logré encontar el error*/

  function validar() {
    var nombre = document.getElementById('nombre').value;
    var email = document.getElementById('email').value;
    var telefono = document.getElementById('telefono').value;
    console.log(nombre);
    console.log(email);
    console.log(telefono);
    if (nombre.length == 0 || email.length == 0 || telefono.length == 0) {
      return false;
    }
  }

  $btnsub.addEventListener('click', function(e) {
    if (validar() == false) {
      return false;
    }
    agradecimiento();
    openModal();
  })

  $closebtn.addEventListener('click', function(e) {
    closeModal();
    resetear();
  })

})

 /*Materialize initialization carousel*/

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.carousel');
  var instances = M.Carousel.init(elems);
});