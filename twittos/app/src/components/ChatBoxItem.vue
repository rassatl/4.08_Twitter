<script setup>
import SearchBar from './SearchBar.vue'
import axios from 'axios'
import { userAuth } from '../stores/AuthStore'
import { ref } from 'vue'

const emit = defineEmits(['closePageMessages'])

const authStore = userAuth();
//idSender,idRecever,msg, obj,aEnvoye, dateMp
const message = ref({
    idSender: 0,
    idRecever: 2,// à changer !!!
    msg: '',
    obj: '',
    aEnvoye: 1
})
function callFunctionInsertMessage() {
    message.value.idSender = authStore.user.idProfil;
    axios.post('http://localhost:3000/mpspv', message.value)
        .then(response => {
            console.log(response);
            message.value.msg = '';
        })
        .catch(error => {
            console.error(error);
        });
}
</script>

<template>
    <div class="chat">
        <div id="containerData">
            <div id="boutonClose" @click="emit('closePageMessages', false);">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 512 512">
                    <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"
                        d="M368 368L144 144M368 144L144 368" />
                </svg>
            </div>
            <div class="chatUserData">
                <p>
                    <slot name="avatar"></slot>
                </p>
                <div>
                    <slot name="name"></slot>
                </div>
                <p>
                    <slot name="arobase"></slot>
                </p>
            </div>
            <div class="chatData">
                <p>
                    <slot name="whenJoin"></slot>
                </p>
                <p>
                    <slot name="followingData"></slot>
                </p>
            </div>
        </div>
        <div id="chatBox">
            <div class="msg">
                <p>
                    <slot name="myMsg"></slot>
                </p>
            </div>
        </div>
        <div id="containerIconTweetButton">
            <div id="containerIcons">
                <div id="bgIcons">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M3 5.5C3 4.119 4.119 3 5.5 3h13C19.881 3 21 4.119 21 5.5v13c0 1.381-1.119 2.5-2.5 2.5h-13C4.119 21 3 19.881 3 18.5v-13zM5.5 5c-.276 0-.5.224-.5.5v9.086l3-3 3 3 5-5 3 3V5.5c0-.276-.224-.5-.5-.5h-13zM19 15.414l-3-3-5 5-3-3-3 3V18.5c0 .276.224.5.5.5h13c.276 0 .5-.224.5-.5v-3.086zM9.75 7C8.784 7 8 7.784 8 8.75s.784 1.75 1.75 1.75 1.75-.784 1.75-1.75S10.716 7 9.75 7z"
                                style="fill:#3BA9EE;"></path>
                        </g>
                    </svg>
                </div>
                <div id="bgIcons">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M3 5.5C3 4.119 4.12 3 5.5 3h13C19.88 3 21 4.119 21 5.5v13c0 1.381-1.12 2.5-2.5 2.5h-13C4.12 21 3 19.881 3 18.5v-13zM5.5 5c-.28 0-.5.224-.5.5v13c0 .276.22.5.5.5h13c.28 0 .5-.224.5-.5v-13c0-.276-.22-.5-.5-.5h-13zM18 10.711V9.25h-3.74v5.5h1.44v-1.719h1.7V11.57h-1.7v-.859H18zM11.79 9.25h1.44v5.5h-1.44v-5.5zm-3.07 1.375c.34 0 .77.172 1.02.43l1.03-.86c-.51-.601-1.28-.945-2.05-.945C7.19 9.25 6 10.453 6 12s1.19 2.75 2.72 2.75c.85 0 1.54-.344 2.05-.945v-2.149H8.38v1.032H9.4v.515c-.17.086-.42.172-.68.172-.76 0-1.36-.602-1.36-1.375 0-.688.6-1.375 1.36-1.375z"
                                style="fill:#3BA9EE;"></path>
                        </g>
                    </svg>
                </div>
                <div id="bgIcons">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M8 9.5C8 8.119 8.672 7 9.5 7S11 8.119 11 9.5 10.328 12 9.5 12 8 10.881 8 9.5zm6.5 2.5c.828 0 1.5-1.119 1.5-2.5S15.328 7 14.5 7 13 8.119 13 9.5s.672 2.5 1.5 2.5zM12 16c-2.224 0-3.021-2.227-3.051-2.316l-1.897.633c.05.15 1.271 3.684 4.949 3.684s4.898-3.533 4.949-3.684l-1.896-.638c-.033.095-.83 2.322-3.053 2.322zm10.25-4.001c0 5.652-4.598 10.25-10.25 10.25S1.75 17.652 1.75 12 6.348 1.75 12 1.75 22.25 6.348 22.25 12zm-2 0c0-4.549-3.701-8.25-8.25-8.25S3.75 7.451 3.75 12s3.701 8.25 8.25 8.25 8.25-3.701 8.25-8.25z"
                                style="fill:#3BA9EE;"></path>
                        </g>
                    </svg>
                </div>
            </div>
            <div id="searchBarContainer">
                <div class="search-container">
                    <div class="search-bar">
                        <i class="fa fa-search"></i>
                        <input type="text" placeholder="Start a new message" v-model="message.msg">
                    </div>
                </div>
            </div>
            <div id="containerSendButton" @click="callFunctionInsertMessage()">
                <div id="bgIcons">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M2.504 21.866l.526-2.108C3.04 19.719 4 15.823 4 12s-.96-7.719-.97-7.757l-.527-2.109L22.236 12 2.504 21.866zM5.981 13c-.072 1.962-.34 3.833-.583 5.183L17.764 12 5.398 5.818c.242 1.349.51 3.221.583 5.183H10v2H5.981z"
                                style="fill:#3BA9EE;">
                            </path>
                        </g>
                    </svg>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.search-container {
    display: flex;
    align-items: center;
    z-index: 999;
    width: 100%;
    flex: 1;
}


.search-bar {
    display: flex;
    align-items: center;
    background-color: #f5f8fa;
    border-radius: 30px;
    padding: 5px 1px;
    flex: 1;
}

.fa-search {
    font-size: 20px;
    margin-right: 5px;
    color: #aab8c2
}

input[type="text"] {
    border: none;
    outline: none;
    background-color: transparent;
    font-size: 16px;
    color: Black;
    width: 100%;
    padding: 0 10px;
}

#containerIcons {
    margin-left: 0px;
}

#boutonClose {
    position: absolute;
    top: 10px;
    left: 10px;
    border-radius: 50%;
    width: 2rem;
    height: 2rem;
    display: flex;
    align-items: center;
    justify-content: center;
}

#boutonClose:hover {
    background-color: rgb(221, 221, 221);
}

#searchBarContainer {
    width: 100%;
    display: flex;
}

.search {
    flex: 1;
    color: black
}

#containerIconTweetButton {
    position: fixed;
    bottom: 0;
}

#containerData {
    background-color: white;
    display: flex;
    flex-direction: column;
    text-align: center;
    align-items: center;
    justify-content: center;
    width: 100%;
    padding: 2rem;
    padding-bottom: 1rem;
}

#chatBox {
    padding: 10px;
}

.chatUserData div {
    font-weight: bold;
}

#containerData:hover {
    cursor: pointer;
    background-color: rgb(239, 243, 244, 0.7);
}

.chatData {
    padding-top: 1rem;
    padding-bottom: 0.5rem;
}
</style>
