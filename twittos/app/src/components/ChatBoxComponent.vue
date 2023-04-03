<script setup>
import ItemChatBox from './ChatBoxItem.vue'
import { userAuth } from '../stores/AuthStore'
import ChatBoxMessages from '../components/ChatBoxMessages.vue'
import { ref } from 'vue'
import axios from 'axios'
const authStore = userAuth();

const chats = ref([])
setInterval(() => {
    axios.get('http://localhost:3000/mps',)
        .then(response => {
            chats.value = response.data;
        })
        .catch(error => {
            console.error(error);
        });
}, 1000);


</script>



<template>
    <ItemChatBox>
        <template #avatar>
            <img src="../assets/avatar4.jpg" alt="avatar4" class="imgAvatar">
        </template>
        <template #name>
            {{ fullname }}
        </template>
        <template #arobase>
            @{{ username }}
        </template>
        <template #whenJoin>
            Joined April 2020 · 3 Followers
        </template>
        <template #followingData>
            Not followed by anyone you re following
        </template>
        <template #myMsg>
            <ChatBoxMessages v-for="chat in chats" :key="chat.idMp" :id-mp="chat.idMp" :id-sender="chat.idSender"
                :id-recever="chat.idRecever" :msg="chat.msg" :obj="chat.obj" :a-envoye="chat.aEnvoye" :date-mp="chat.dateMp"
                :fullname="chat.fullname" :username="chat.username" />
        </template>
    </ItemChatBox>
</template>


<style scoped>
</style>