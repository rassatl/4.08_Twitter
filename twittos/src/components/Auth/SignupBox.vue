<script>
import { insertData } from './stores/dataService.js'
import { ref } from 'vue';
/*
import { InsertTweet } from '../../../server.js';

const form = ref({
    fullname,
    username,
    pwd,
    mail,
    birthdate
})

function callFunctionInsert() {
    InsertTweet(form);
}*/
export default {
    name: 'MyComponent',
    data() {
        return {
            fullname: 'John Doe',
            username: 'johndoe',
            pwd: 'password',
            mail: 'johndoe@example.com',
            birthdate: '1990-01-01',
        }
    },
    methods: {
        async submitData() {
            const data = {
                fullname: this.fullname,
                username: this.username,
                pwd: this.pwd,
                mail: this.mail,
                birthdate: this.birthdate
            };
            try {
                const rows = await insertData(data);
                console.log(`Inserted ${rows.affectedRows} rows`);
            } catch (error) {
                console.error(error);
            }
        }
    }
}
</script>
<template>
    <div id="containerAll">
        <div id="containerLogInBox">
            <div id="closeButton" @click="$emit('falseSignup', false)">
                <svg width="17px" height="17px" viewBox="0 0 17 17" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <g id="Icons" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="round">
                        <g id="24-px-Icons" transform="translate(-364.000000, -124.000000)" stroke="#000000">
                            <g id="ic_cancel" transform="translate(360.000000, 120.000000)">
                                <g id="cross">
                                    <g transform="translate(5.000000, 5.000000)" stroke-width="2">
                                        <path d="M0,0 L14.1421356,14.1421356" id="Line"></path>
                                        <path d="M14,0 L1.77635684e-15,14" id="Line"></path>
                                    </g>
                                </g>
                            </g>
                        </g>
                    </g>
                </svg>
            </div>
            <h1>Sign up to Twitter</h1>
            <div class="group">
                <input v-model="form.mail" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Email</label>
            </div>
            <div class="group">
                <input v-model="form.pwd" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Password</label>
            </div>
            <div class="group">
                <input v-model="form.pwd" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Password confirmation</label>
            </div>
            <div class="group">
                <input  v-model="form.birthdate" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Birthdate</label>
            </div>
            <div  class="group">
                <input v-model="form.fullname" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Full Name</label>
            </div>
            <div class="group">
                <input v-model="form.username" required type="text" class="input">
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Username</label>
            </div>
            <button id="buttonSignIn" @click="callFunctionInsert()">Sign up</button>
            <p>Already have an account? <span @click="$emit('falseLogin', true); $emit('falseSignup', false)">Sign in</span>
            </p>
        </div>
    </div>
</template>

<style scoped>
span {
    color: #3BA9EE;
    cursor: pointer;
}

#closeButton {
    position: absolute;
    top: 12px;
    left: 12px;
    cursor: pointer;
}

#buttonSignIn {
    background-color: black;
    color: white;
    padding: 10px;
    border-radius: 50px;
    font-size: 1rem;
    width: 100%;
    margin-top: 0.5rem;
    cursor: pointer;

}

#buttonLogIn:hover {
    background-color: #56aadebe;
    cursor: pointer;
}

#containerAll {
    position: fixed;
    top: 0px;
    height: 100vh;
    width: 100vw;
    display: flex;
    justify-content: center;
    align-items: center;
}

#containerLogInBox {
    width: 400px;
    height: fit-content;
    background-color: white;
    border-radius: 20px;
    padding: 2rem;
    box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
}

.group {
    position: relative;
    padding-top: 7px;
    margin-top: 1rem;
}

.input {
    font-size: 17px;
    padding: 10px 10px 10px 5px;
    display: block;
    width: 100%;
    border: none;
    background: transparent;
    border: 1px solid black;
    border-radius: 4px;
}

.input:focus {
    outline: none;
    border: 1px solid #3BA9EE;
}

label {
    font-size: 18px;
    font-weight: normal;
    position: absolute;
    pointer-events: none;
    left: 5px;
    top: 12px;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

.input:focus~label,
.input:valid~label {
    color: #3BA9EE;
    top: 5px;
    font-size: 13px;
    transition: 0.2s ease all;
    -moz-transition: 0.2s ease all;
    -webkit-transition: 0.2s ease all;
}

.bar:before {
    left: 50%;
}

.bar:after {
    right: 50%;
}

.input:focus~.bar:before,
.input:focus~.bar:after {
    width: 50%;
}

.highlight {
    position: absolute;
    height: 60%;
    width: 100px;
    top: 25%;
    left: 0;
    pointer-events: none;
    opacity: 0.5;
}

.input:focus~.highlight {
    animation: inputHighlighter 0.3s ease;
}
</style>