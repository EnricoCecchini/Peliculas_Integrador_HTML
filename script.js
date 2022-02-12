const getAll = async() => {
    const API = 'http://127.0.0.1:5000/dashboard'

    document.write(fetch(API)
    .then(res => res.json())
    .then((r) => console.log(r))
    .catch((e) => console.log(e)))
}