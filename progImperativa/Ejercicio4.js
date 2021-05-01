var nombreNico = 'Nicolas Lopez';
var edad = 27;
var peso = 83.5;
var altura = 1.70;
var prepaga = true;
var imcNico = peso / (altura * altura);

console.log (nombreNico + ' de edad ' + edad + ' años, pesa ' + peso + 'kg y mide ' + altura + 'm. Por ende, su imc es de ' + imcNico.toFixed (2));
// El .toFixed() me muestra la cantidad de decimales según el número que ponga dentro de ese paréntesis

// A continuacion, una manera distinta de hacer el ejercicio:
//Con un objeto literal:
var datosPaciente = {
    nombre : ['Nicolas','Esteban','José','Juana'],
    edad : [27,28,33,26],
    peso : [83.5,80.1,63.7,55],
    altura : [1.70,1.76,1.53,1.62],
    prepaga : [true, true, false, true],
}
// No lo termine claramente, ja