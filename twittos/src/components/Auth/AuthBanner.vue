<script setup>
import loginBox from './LoginBox.vue'
import signupBox from './SignupBox.vue'
import { ref } from 'vue'
function OpenLogInVue() {
    boolLoginVue.value = true;
}
function OpenSignUpVue() {
    boolSigninVue.value = true;

}
const boolConnected = ref(false);
const boolLoginVue = ref(false);
const boolSigninVue = ref(false);

</script>

<template>
    <loginBox @falseLogin="(i) => boolLoginVue = i"  v-if="boolLoginVue" />
    <signupBox @falseLogin="(i) => boolLoginVue = i" @falseSignup="(i) => boolSigninVue = i" v-if="boolSigninVue" />

    <div v-if="!boolConnected" id="blueBanner">
        <div id="containerTexteBanner">
            <p id="title">Don't miss what's happening.</p>
            <p>Twitter users are the f irst to know.</p>
        </div>
        <div id="containerButton">
            <button id="buttonLogIn" @click="OpenLogInVue();">Log In</button>
            <button id="buttonSignUp" @click="OpenSignUpVue();">Sign up</button>
        </div>
    </div>
</template>

<style scoped>
#containerButton {
    display: flex;
    margin-right: 25%;
}

button {
    height: fit-content;
}

#buttonLogIn {
    background-color: #3BA9EE;
    border: 1px solid white;
    color: white;
    padding: 10px;
    border-radius: 50px;
    font-size: 1rem;
}

#buttonLogIn:hover {
    background-color: #56aadebe;
    cursor: pointer;
}

#buttonSignUp:hover {
    cursor: pointer;
}

#buttonSignUp {
    background-color: white;
    border: 1px solid #3BA9EE;
    color: black;
    padding: 10px;
    border-radius: 50px;
    font-size: 1rem;
    margin-left: 1rem;
}

#containerTexteBanner {
    margin-left: 25%;
}

#blueBanner {
    width: 100%;
    height: 5rem;
    background-color: #3BA9EE;
    position: fixed;
    z-index: 999;
    bottom: 0px;
    left: 0px;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

#title {
    font-size: 1.5rem;
}</style>