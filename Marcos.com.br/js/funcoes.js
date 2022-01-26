function sortear(){
    numero1 = parseInt(Math.random() * 10) 
    document.getElementById("valor1").innerText = numero1
    numero2 = parseInt(Math.random() * 10) 
    document.getElementById("valor2").innerText = numero2  

}
sortear()

function verifica(){
    
    numero1 = parseInt(document.getElementById("valor1").innerText)
    numero2 = parseInt(document.getElementById("valor2").innerText)
    multiplicacao = numero1*numero2
    resultado = parseInt(document.getElementById("resultado").value)

    if (resultado==multiplicacao){ 
        document.getElementById("video").innerHTML = '<iframe width="560" height="315" src="https://www.youtube.com/embed/8T8avccIcXM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
    } else {
        document.getElementById("msg").innerHTML = '<div class="alert alert-danger alert-dismissible" role="alert" id="liveAlert"><strong>Você erroooou!!!</strong><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div> '
    }
    // .value serve para pegar o valor, a input que tem .value
    // input = serve para encaixar direto no bloco
    //innerHTML = para span e div
}