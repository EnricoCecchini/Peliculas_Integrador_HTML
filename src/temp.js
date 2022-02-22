/*
<script type="text/javascript">
    let pid = localStorage.getItem('pid')
    //localStorage.removeItem("pid")
    console.log(pid)
    
    const API = `http://127.0.0.1:5000/get_pelicula?pid=${pid}`
    fetch(API)
    .then((res) => {return res.json()})
    .then((p) => {console.log(p.pelicula); editPelicula(p.pelicula)})
    .catch((e) => console.log(e))
    
    function editPelicula(pelicula) {  
        let datos = document.getElementById('pelicula')
    
        let form = document.createElement('form')
        form.setAttribute('id', 'editarPelicula')
    
        let peliID = document.createElement('input')
        peliID.setAttribute('type', 'text')
        peliID.setAttribute('name', 'pid')
        peliID.setAttribute('value', `${pid}`)
        peliID.readOnly = true
    
        let titulo = document.createElement('input')
        titulo.setAttribute('type', 'text')
        titulo.setAttribute('name', 'titulo')
        titulo.setAttribute('value', `${pelicula.titulo}`)
        titulo.setAttribute('placeholder', `${pelicula.titulo}`)
    
        let director = document.createElement('input')
        director.setAttribute('type', 'text')
        director.setAttribute('name', 'director')
        director.setAttribute('value', `${pelicula.director}`)
        director.setAttribute('placeholder', `${pelicula.director}`)
    
        let categoria = document.createElement('input')
        categoria.setAttribute('type', 'number')
        categoria.setAttribute('min', '1')
        categoria.setAttribute('max', '3')
        categoria.setAttribute('name', 'categoriaid')
        categoria.setAttribute('value', `${pelicula.categoriaID}`)
        categoria.setAttribute('placeholder', `${pelicula.categoria}`)
    
        let duracion = document.createElement('input')
        duracion.setAttribute('type', 'text')
        duracion.setAttribute('name', 'dur')
        duracion.setAttribute('value', `${pelicula.duracion}`)
        duracion.setAttribute('placeholder', `${pelicula.duracion} horas`)
    
        let anio = document.createElement('input')
        anio.setAttribute('type', 'number')
        anio.setAttribute('min', '1900')
        anio.setAttribute('max', '2099')
        anio.setAttribute('name', 'anio')
        anio.setAttribute('value', `${pelicula.anio}`)
        anio.setAttribute('placeholder', `${pelicula.anio}`)
    
        let protags = ''
    
        for (var i = 0; i < pelicula.protagonista.length; i++)
        {
            if (i < pelicula.protagonista.length-1){
                protags += pelicula.protagonista[i].nombre + ','
            } else {
                protags += pelicula.protagonista[i].nombre
            }
        }
    
        form.innerHTML = 'Película: '.bold()
        form.innerHTML += '<br><br>'
        form.innerHTML += 'ID Película: '
        form.appendChild(peliID)
        form.innerHTML += '<br><br>'
        form.innerHTML += 'Título: '
        form.appendChild(titulo)
        form.innerHTML += '<br><br>'
        form.innerHTML += 'Director: '
        form.appendChild(director)
        form.innerHTML += '<br><br>'
        form.innerHTML += 'Categoría: '
        form.appendChild(categoria)
        form.innerHTML += '<br> Amor   - 1'
        form.innerHTML += '<br> Acción - 2'
        form.innerHTML += '<br> Terror - 3 '
        form.innerHTML += '<br><br>'
        form.innerHTML += 'Duración: '
        form.appendChild(duracion)
        form.innerHTML += '<br><br>'
        form.innerHTML += 'Año: '
        form.appendChild(anio)
        form.innerHTML += '<br><br><br>'
    
        form.innerHTML += 'Protagonistas: '.bold()
        form.innerHTML += '<br><br>'
        
        let protagonista = document.createElement("TEXTAREA");
        protagonista.innerHTML = `${protags}`;
        protagonista.setAttribute('rows', '4');
        protagonista.setAttribute('name', 'protag')
        protagonista.setAttribute('value', `${protags}`)
        protagonista.setAttribute('placeholder', `${protags}`)
        form.appendChild(protagonista);
    
        form.innerHTML += '<br><br><br><br>'
    
        let edit = document.createElement('input')
        edit.setAttribute("type", "submit");
        edit.setAttribute("value", "Submit");
    
        form.appendChild(edit)
    
        document.getElementsByTagName("body")[0].appendChild(form)
    }
</script>
*/