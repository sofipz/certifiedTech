//Ejercicio 1 de la clase C3A-Funciones de la consola del Playground
let dato = true;

if(dato = true){
    console.log('es true');
}
else{
    console.log('es false');
}

//Poniendo el if del ejercicio anterior en una funcion
function condicion(a){
    if (a < 10){
        return true;
    }
    else{
        return false;
    }
}
console.log(condicion(8));
console.log(condicion(15));

//Ejercicio 2 de la clase C3A-Funciones de la consola del Playground
let lenguaje = "Javascript";
if(lenguaje === "Javascript"){
    console.log('Estoy aprendiendo');
} else{
    console.log('Lo aprenderé más adelante');
}

//Ejercicio 3
function puedePasar(nombre) {
    if(nombre === 'Cosme Fulanito'){
        return false;
    }else{
        return true;
    }
}

//Ejercicio de switch


function finDeSemana(dia) {
    dia = dia.toLowerCase(); //la funcion .toLowerCase() convierte mi texto todo en minusculas. La funcion .toUpperCase() lo convierte todo en mayusculas
	switch(dia){
	case 'viernes':
		console.log('buen finde')
	break
	case 'lunes':
		console.log('buena semana')
	break
	default:
		console.log('buen dia')
	}
}
finDeSemana('Viernes');
