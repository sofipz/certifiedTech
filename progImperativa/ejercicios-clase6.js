//Ejercicio 1 de Clase 6 - Ciclos(for)

function loro (loro){
    for(let i = 1; i<=5; i++){
        console.log(loro);
    }
}
loro('Hola soy un loro bobo');





//Ejercicio 2      -->En vez de mostrar cada número impar, los va metiendo en un array y luego muestra la cantidad de numeros impares que hay
function noParesDeContarImparesHasta(numero){
    let arrayNumeros = [];
    for(let i = 0; i <= numero; i++){
        if(i%2!=0){
            arrayNumeros.push(i)
        }
    }
    return arrayNumeros.length
}
console.log(noParesDeContarImparesHasta(15));

