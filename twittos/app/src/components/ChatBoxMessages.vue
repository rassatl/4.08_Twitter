<script setup>
import { defineProps } from 'vue'
import { userAuth } from '../stores/AuthStore'

const authStore = userAuth()

const props = defineProps({
    idMp: {
        type: String,
        default: '',
    },
    idSender: {
        type: String,
        default: '',
    },
    fullname: {
        type: String,
        default: '',
    },
    username: {
        type: String,
        default: '',
    },
    idRecever: {
        type: String,
        default: '',
    },
    msg: {
        type: String,
        default: '',
    },
    obj: {
        type: String,
        default: '',
    },
    aEnvoye: {
        type: String,
        default: '',
    },
    dateMp: {
        type: String,
        default: '',
    },
})
</script>

<template>
    <div :class="[idSender === authStore.user.idProfil ? 'me' : 'friend']">
        {{ msg }}
    </div>
</template>
  
<style scoped>
.me {
    background-color: rgba(29, 156, 240, 0.836);
    padding: 1rem;
    border-radius: 30px;
    border-bottom-right-radius: 4px;
    width: fit-content;
    color: white;
    max-width: 20rem;
    font-family: arial;
    margin-left: auto;
    margin-top: 5px;
}

.friend {
    background-color: rgb(245, 245, 245);
    padding: 1rem;
    border-radius: 30px;
    border-bottom-left-radius: 4px;
    width: fit-content;
    max-width: 20rem;
    color: black;
    font-family: arial;
    margin-right: auto;
    margin-top: 5px;

}
</style>
  