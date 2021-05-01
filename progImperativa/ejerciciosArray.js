let frutas = ['banana', 'kiwi', 'manzana', 'pera']

function contiene(array, elemento){
   let posicion = array.indexOf(elemento)
   return posicion != -1
}
console.log(contiene(frutas, 'tomate'));


// ejercicios de playground

let films = ["star wars", "totoro",  "rocky", "pulp fiction",  "la vida es bella"]
let cartoons = ["toy story", "finding Nemo", "kung-fu panda", "wally", "fortnite"]
console.log(films[0] = films[0].toUpperCase());
console.log(films[1] = films[1].toUpperCase());
console.log(films[2] = films[2].toUpperCase());
console.log(films[3] = films[3].toUpperCase());
console.log(films[4] = films[4].toUpperCase());

function traspasarAFilms(arrayUno, arrayDos) {
    if (arrayDos.length >= 0){
        let elementoATrasladar = arrayDos.pop()
        arrayUno.push(elementoATrasladar)
    }else{
        return "Tu array está vacío"
    }
}
traspasarAFilms(films, cartoons);
traspasarAFilms(films, cartoons);
traspasarAFilms(films, cartoons);
traspasarAFilms(films, cartoons);
console.log(films.length);
console.log(cartoons.legth);

