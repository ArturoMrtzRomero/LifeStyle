
function abrirPaypal() {
console.log( "Ejecutando función test()" );
window.open("https://www.paypal.com/mx/signin");  
         
}

function abrirMercado() {
    console.log( "Ejecutando función test()" );
    window.open("https://www.mercadolibre.com/jms/mlm/lgz/msl/login/H4sIAAAAAAAEAzWNy07DMBBF_2UWXUUtjwIlUoTcElWR2pSXEKxGxpm4FnZtORPcgvh3FAq7e-Zx7hdYr80O-RAIcqB9sEYZhgyCldz66NA0kIMLkEFnmP7QuuFERumIKXaQfw0iTc2cWh8HVSttR5CB7HmLrfUJ8mMXZGA6pD1T3EmLid4-DA3b_w_tIYctc-jyySSlNHYUlWx8kNqPlXdjt58EaZqbnh12vo-KCu29tjTSypqmKEUlq3v_ttiuq1Qf3JQ30-tUPe_ay8_F9gxrfTcthXgVj0KUupoJvMV5KkeDz1FjeleooH5RSRek0btivVrj-g6XKDa4LGsUqxXOH0R9-5sWm_oZyxexeBo5yYzsvS0uzq8uTs9OZsdR8rEp4DuDVnaMHKV6h5xjT98_DResXYQBAAA/user");           
   
}




function mostrarTarjeta() {
    console.log( "Ejecutando función test()" );
    document.getElementById('premio').style.display = 'block';
                                                
}

function ocultarTarjeta(){
    console.log( "Ejecutando()" );
    document.getElementById('premio').style.display = 'none';
    var checkbox = document.getElementById("ckeckTarjeta"); // Aqui seleccionas tu checkbox.
    checkbox.checked=false;
}

function ocultarPaypal() {
    console.log( "Ejecutando función test()" );
    var checkbox = document.getElementById("ckeckPaypal"); // Aqui seleccionas tu checkbox.
    checkbox.checked=false;
                                                
}

function borrarCarrito(){
    while(listaPlatillos.firstChild){
        listaPlatillos.removeChild(listaPlatillos.firstChild);
    }
    vaciarLocalStorage();
    alert("Pago realizado con exito... \n\ncompra realizada con exito... ");
    document.getElementById('premio').style.display = 'none';
    var checkbox = document.getElementById("ckeckTarjeta"); // Aqui seleccionas tu checkbox.
    checkbox.checked=false;
    
    return false;
}

                                       