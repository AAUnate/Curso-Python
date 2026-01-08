<<<<<<< HEAD
console.log("hola gay");
//alert("hola");
=======
console.clear();
let prompt = require("prompt-sync")();
let nombre = prompt("Ingrese su Nombre: ");
console.log(`Hola ${nombre}, bienvenido a la programación en JavaScript!`);
let datos = {
  nombre: nombre,
  edad: prompt("Edad: "),
  ciudad: prompt("Ciudad: "),
};

mostrar(datos);
function mostrar(datos) {
<<<<<<< HEAD
  console.log(`nombre: ${datos.nombre} - edad: ${datos.edad} - ciudad: ${datos.ciudad}`);
}
>>>>>>> 7c9fd09 (arregle temporal)
=======
  console.log(`nombre: $(datos.nombre) - edad: ${datos.edad} - ciudad: ${datos.ciudad}`);
}
>>>>>>> 9749fb8 (me voy)
