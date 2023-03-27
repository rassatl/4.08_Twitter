<script setup>
import ItemFriendMessage from './FriendMessageItem.vue'
</script>


<template>
    <ItemFriendMessage>
        <template #avatar>
            <img src="../assets/avatar4.jpg" alt="avatar4" class="imgAvatar" >
        </template>
        <template #name>
            JulsSil
        </template>
        <template #msgUserArobase>
            @JulesSil1 · Mar 24
        </template>
        <template #lastMessage>
            test
        </template>
    </ItemFriendMessage>
</template>