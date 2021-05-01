function puedeSubir (altura, vieneAcompaniado){
    if(altura>1.40 && altura<2.0){
        return true;
    } else if((altura>1.20 && altura<=1.40) && vieneAcompaniado){
        return true;
    }else{
        return false;
    }
}
console.log(puedeSubir(1.50, false));