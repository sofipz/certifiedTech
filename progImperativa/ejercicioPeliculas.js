let films = ["star wars", "totoro", "rocky", "pulp fiction", "la vida es bella"]

function automatizar (arrayPeliculas){
    
    for (let i = 0; i<films.length; i++){
        arrayPeliculas[i] = arrayPeliculas[i].toUpperCase()
    }
    return arrayPeliculas;
}
console.log(automatizar(films));
