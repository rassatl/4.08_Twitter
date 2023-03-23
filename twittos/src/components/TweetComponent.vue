<script setup>
import ItemTweet from './TweetItem.vue'
</script>


<template>
    <div class="theTweet">
        <ItemTweet>
            <template #avatar>
                <img src="../assets/avatar.jpg" alt="Avatar" class="imgAvatar" />
            </template>
            <template #name>
                <h5>Thoomas</h5>
            </template>
            <template #contentText>Fornite 2023.....</template>
            <template #contentObj>
                <video width="320" height="240" controls>
                    <source src=”../assets/contentPost1.ogg type=video/ogg>
                    <source src="../assets/contentPost1.mp4" type=video/mp4>
                </video>
            </template>
        </ItemTweet>
    </div>
</template>

<style scoped>
.imgAvatar {
    width: 100px;
    height: 100px;
    border-radius: 50px;
}
.theTweet{
    background-color: red;
}
</style>