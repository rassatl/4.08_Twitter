<script setup>
import ItemWhoToFollow from './WhoToFollowItem.vue'
</script>

<template>
    <ItemWhoToFollow>
        <template #followerAvatar>
            <img src="../assets/avatar1.jpg" alt="avatar1" class="imgAvatar" >
        </template>
        <template #followerName>
            Colver
        </template>
        <template #followerRealName>
            @ColverLeVrai
        </template>
        <template #followerButton></template>
    </ItemWhoToFollow>
    <ItemWhoToFollow>
        <template #followerAvatar>
            <img src="../assets/avatar2.jpg" alt="avatar2" class="imgAvatar" >
        </template>
        <template #followerName>
            Le T
        </template>
        <template #followerRealName>
            @letdefornite
        </template>
        <template #followerButton></template>
    </ItemWhoToFollow>
    <ItemWhoToFollow>
        <template #followerAvatar>
            <img src="../assets/avatar3.jpg" alt="avatar3" class="imgAvatar" >
        </template>
        <template #followerName>
            Cyborg
        </template>
        <template #followerRealName>
            @IronMan
        </template>
        <template #followerButton></template>
    </ItemWhoToFollow>
</template>

<style>
.imgAvatar {
    width: 70px;
    height: 70px;
    border-radius: 50px;
}

</style>