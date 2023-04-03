<script setup>
import ItemChatBox from './ChatBoxItem.vue'
import { ref } from 'vue'
import axios from 'axios'

import { userAuth } from '../stores/AuthStore'
const authStore = userAuth();

const props = defineProps({
    idMp: {
        type: String,
        default: ""
    },
    idSender: {
        type: String,
        default: ""
    },
    fullname: {
        type: String,
        default: ""
    },
    username: {
        type: String,
        default: ""
    },
    idRecever: {
        type: String,
        default: ""
    },
    msg: {
        type: String,
        default: ""
    },
    obj: {
        type: String,
        default: ""
    },
    aEnvoye: {
        type: String,
        default: ""
    },
    dateMp: {
        type: String,
        default: ""
    }
})
</script>

<template>
    <div v-if="idSender">
        <!-- <div v-if="idSender == authStore.user.idProfil ? 'droite' : 'gauche'">
                                <div class="bgli">
                                    <p v-if="idSender == authStore.user.idProfil ? 'me' : 'friend'">{{ msg }}</p>
                                </div>
                            </div> -->
        <div v-if="idSender == authStore.user.idProfil ? 'gauche' : 'droite'">
            <div class="bgli">
                <div v-if="idSender == authStore.user.idProfil" id="me">
                    {{msg}}
                </div>
                <div v-else id="friend">
                    {{msg}}
                </div>
            </div>
        </div>
    </div>
    <div v-else>
        <p>Object not received!</p>
    </div>
</template>


<style scoped>
#me {
    background-color: rgb(29, 155, 240);
    padding: 1rem;
    border-radius: 30px;
    border-bottom-right-radius: 4px;
    color: white;
    font-family: arial;
}

#friend {
    background-color: rgb(29, 155, 240);
    padding: 1rem;
    border-radius: 30px;
    border-bottom-left-radius: 4px;
    color: black;
    font-family: arial;
}

#droite {
    color: black;
    float: right;
    display: flex;
    justify-content: flex-end;
    width: 100%;
    background-color: red;
}

#gauche {
    color: black;
    float: left;
    display: flex;
    width: 100%;
    margin-left: -40px;
    background-color: blue;
}

.bgli {
    padding: 10px 20px;
    border-radius: 10px;
}
</style>