
function abrirPaypal() {
console.log( "Ejecutando función test()" );
window.open("https://www.paypal.com/mx/signin");           
}


function mostrarTarjeta() {
    console.log( "Ejecutando función test()" );
    document.getElementById('premio').style.display = 'block';
                                                
}

function ocultarTarjeta(){
    console.log( "Ejecutando()" );
    document.getElementById('premio').style.display = 'none';
    document.getElementById("ckeckTarjeta") = '';
}
                                       