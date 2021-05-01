//funcion declarada
function ejemplo () {
    return 'hola, soy una funcion';
}
console.log(ejemplo());

//funcion expresada
let ejemplo2 = function (){
    return 'Hola, soy una funcion expresada'
}
console.log(ejemplo2());

//otro ejercicio
function saludar(nombre, apellido) {
    return 'Hola, ' + nombre + ' ' + apellido + '!';
}
console.log(saludar('Sofia', 'Perez'));


//anterior: recibe un número como parámetro y devuelve ese número menos uno.
//triple: recibe un número como parámetro y devuelve el triple de ese número.
//anteriorDelTriple: recibe un número como parámetro y, utilizando las dos funciones anteriores, tendrá que devolver el número recibido multiplicado por 3 (tres) y al resultado restarle 1 (uno).


function anterior (numero){
    return numero -1
}
console.log(anterior(3));


function triple (numero){
    return numero *3;
}
console.log(triple(5));


function anteriorDelTriple (numero){
   return anterior (triple(numero))
}
console.log(anteriorDelTriple(3))



function esPar (a){
    var cuenta = a%2
    if(cuenta = 0){
        return 'true'
    }
    return 'true'
}
console.log(esPar(4))