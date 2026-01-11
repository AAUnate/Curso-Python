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
  console.log(`nombre: $(datos.nombre) - edad: ${datos.edad} - ciudad: ${datos.ciudad}`);
}
