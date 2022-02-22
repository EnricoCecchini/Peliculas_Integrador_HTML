// function appendMovies() {
//     var mainContainer = document.getElementById("peliculas")
//     let catID = 0

//     try {
//         catID = localStorage.getItem('cat')
//         localStorage.removeItem('cat')
//     } catch (e) {
//         console.log(e)
//     }

//     for (var i = 0; i < peliculas.length; i++) {
//         let div = document.createElement('div')
//         let pid = peliculas[i].peliculaID

//         if (catID === 0 || catID === peliculas[i].categoriaID) {
//             div.className = 'grid-item'
//             div.innerHTML += 'Título: '.bold() + peliculas[i].titulo + '<br>'
//             div.innerHTML += 'Director: '.bold() + peliculas[i].director + '<br>'
//             div.innerHTML += 'Año: '.bold() + peliculas[i].anio + '<br>'
//             div.innerHTML += 'Categoría: '.bold() + peliculas[i].categoria + '<br>'
//             div.innerHTML += 'Duración: '.bold() + peliculas[i].duracion + ' horas <br><br>'
//             div.innerHTML += 'Protagonistas: <br>'.bold()
//             for (var j = 0; j < peliculas[i].protagonista.length; j++){
//                 div.innerHTML += `${j+1}: `.bold() + peliculas[i].protagonista[j].nombre + '<br>'
//             }

//             div.innerHTML += '<br><br>' 
//             let editButton = document.createElement('button')
//             editButton.className= 'button edit-button'
//             editButton.innerHTML = 'Editar'
//             editButton.id = 'pid'
//             editButton.onclick= function () {
//                 console.log(pid)
//                 localStorage.setItem('pid', pid)
//                 console.log(pid)
//                 location.href = './pelicula.html'
//                 return false
//             }
//             div.append(editButton)
//             mainContainer.appendChild(div)
//     }}
// }

function getCategoriaID() {
    let catIDList = document.getElementById('cat')
    let catID = 0

    catIDList.addEventListener('change',(event) => {
        catID = event.target.value
        console.log(catID)
        localStorage.setItem('cat', catID)

        const API = 'http://127.0.0.1:5000/dashboard'
        fetch(API)
        .then((res) => {return res.json()})
        .then((p) => {console.log(p.peliculas); appendMovies(p.peliculas)})
        .catch((e) => console.log(e))
    })

    //window.location = './index.html'
}