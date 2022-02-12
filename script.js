const API = 'http://127.0.0.1:5000/dashboard'

fetch(API)
.then((res) => {return res.json()})
.then((p) => appendMovies(p))
.catch((e) => console.log(e))

function appendMovies(pelicula) {
    var mainContainer = document.getElementById("peliculas")

    for (var i = 0; i < pelicula.length; i++) {
        let div = document.createElement('div')
        div.innerHTML = 'Pelicula' + pelicla[i].titulo
        mainContainer.appendChild(div)
    }
}