<script setup>
import ItemFriendMessage from './FriendMessageItem.vue'
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
    <ItemFriendMessage v-if="idSender == authStore.user.idProfil">
        <template #avatar>
            <img src="../assets/avatar4.jpg" alt="avatar4" class="imgAvatar" >
        </template>
        <template #name>
            {{ fullname }}
            <p>Receiver : {{ idRecever }}</p>
        </template>
        <template #msgUserArobase>
            @{{ username }}
        </template>
    </ItemFriendMessage>
    <!-- <ItemFriendMessage>
        <template #avatar>
            <img src="../assets/avatar2.jpg" alt="avatar2" class="imgAvatar" >
        </template>
        <template #name>
            Billy
        </template>
        <template #msgUserArobase>
            @BillyBoy · Mer 25
        </template>
        <template #lastMessage>
            Quoicoubeh
        </template>
    </ItemFriendMessage> -->
</template>