<script setup>
import { RouterLink, RouterView, useRoute } from 'vue-router'
import FriendMessageComponent from '../components/FriendMessageComponent.vue'
import ChatBoxComponent from '../components/ChatBoxComponent.vue'
import axios from 'axios'
import { ref } from 'vue'
function OpenMessageBox() {
    var msgBox = document.getElementById("boiteMessage");
    msgBox.style.height = "50rem";
    boolBoxMessage.value = true;
}
function CloseMessageBox() {
    var msgBox = document.getElementById("boiteMessage");
    msgBox.style.height = "25rem";
    boolBoxMessage.value = false;
}
const boolBoxMessage = ref(false);

const Friendsmessages = ref([])

setInterval(() => {
  axios.get('http://localhost:3000/mp')
    .then(response => {
      Friendsmessages.value = response.data;
    })
    .catch(error => {
      console.error(error);
    });
}, 200);

const emit = defineEmits(['valueIdChatBox'])
var idRecever = ''
var fullname = ''
var username = ''
var dateCreation = ''
const affichage = ref(false);
function sendIdChatBox(ref) {
  emit('valueIdChatBox', ref)
  console.log(ref)
  idRecever = ref.idRecever
  fullname = ref.fullname
  username = ref.username
  affichage.value = true;
}

</script>

<template>
    <div id="boiteMessage">
        <div id="bandeauMessage">
            <h1>Messages</h1>
            <div id="blocDroitMessage">
                <div id="blocSVG">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M1.998 5.5c0-1.381 1.119-2.5 2.5-2.5h15c1.381 0 2.5 1.119 2.5 2.5V12h-2v-1.537l-8 3.635-8-3.635V18.5c0 .276.224.5.5.5H13v2H4.498c-1.381 0-2.5-1.119-2.5-2.5v-13zm2 2.766l8 3.635 8-3.635V5.5c0-.276-.224-.5-.5-.5h-15c-.276 0-.5.224-.5.5v2.766zM19 18v-3h2v3h3v2h-3v3h-2v-3h-3v-2h3z">
                            </path>
                        </g>
                    </svg>
                    <div @click="OpenMessageBox();">
                        <svg viewBox="0 0 24 24" aria-hidden="true" v-if="!boolBoxMessage" class="icon">
                            <g>
                                <path
                                    d="M12 2.59l9.46 9.45-1.42 1.42L12 5.41l-8.04 8.05-1.42-1.42L12 2.59zm0 7l9.46 9.45-1.42 1.42L12 12.41l-8.04 8.05-1.42-1.42L12 9.59z">
                                </path>
                            </g>
                        </svg>
                    </div>
                    <div @click="CloseMessageBox();">
                        <svg viewBox="0 0 24 24" aria-hidden="true" v-if="boolBoxMessage" class="icon">
                            <g>
                                <path
                                    d="M12 11.59L3.96 3.54 2.54 4.96 12 14.41l9.46-9.45-1.42-1.42L12 11.59zm0 7l-8.04-8.05-1.42 1.42L12 21.41l9.46-9.45-1.42-1.42L12 18.59z">
                                </path>
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
        <FriendMessageComponent v-if="!affichage" @click="sendIdChatBox(msg)" v-for="msg in Friendsmessages"
          :key="msg.idMp" :id-mp="msg.idMp" :id-sender="msg.idSender" :id-recever="msg.idRecever" :msg="msg.msg"
          :obj="msg.obj" :a-envoye="msg.aEnvoye" :date-mp="msg.dateMp" :fullname="msg.fullname"
          :username="msg.username" />
          <div>
            <ChatBoxComponent v-if="affichage" @closePageMessages="(i) => affichage = i" :id-recever="idRecever" :fullname="fullname" :username="username"/>
          </div>
    </div>
</template>

<style>
* {
    transition: all 255ms ease-in-out;
}

#boiteMessage {
    width: 25%;
    height: 25rem;
    background-color: white;
    border-radius: 25px;
    bottom: -22rem;
    right: 5rem;
    z-index: 600;
    position: fixed;
    box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
}

#bandeauMessage {
    display: flex;
    text-align: center;
    align-items: center;
    margin: 1rem;
    margin-top: 0.1rem;
}

#blocDroitMessage {
    display: flex;
    align-items: center;
    justify-content: right;
    width: 100%;
}

#blocDroitMessage svg {
    margin-left: 1rem;
}

#blocDroitMessage svg:hover {
    cursor: pointer;
}

#blocSVG {
    display: flex;
    text-align: center;
    align-items: center;
    justify-content: center;
}
</style>