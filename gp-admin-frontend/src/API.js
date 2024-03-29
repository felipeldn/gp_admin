const signInURL = 'http://localhost:3000/signin'
const signUpURL = 'http://localhost:3000/signup'
const validateURL = 'http://localhost:3000/validate'

const get = (url, headers = null) => {
    return fetch(url, headers)
        .then(resp => resp.json())
}

const post = (url, data) => {
    return fetch(url, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(data)
        // console.log(body)
        }).then(resp => resp.json())
}

const validate = () => get(validateURL, {headers: {Authorization: localStorage.getItem('token')}})
const signIn = (user) => post(signInURL, user)
const signUp = (user) => post(signUpURL, user) 

export default {signIn, signUp, validate}