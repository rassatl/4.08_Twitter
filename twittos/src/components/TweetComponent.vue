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
                <h6>Thoomas <g>@Thoomas · 3min</g>
                </h6>
            </template>
            <template #contentText>Fornite 2023.....
                <br>
                <div id="hashtag">
                    <p>#fortnite</p>
                    <p>#games</p>
                    <p>#oldtime</p>
                </div>
            </template>
            <template #contentObj>
                <video id="vod" width="380" height="214" controls>
                    <source src=”../assets/contentPost1V2.ogg class="vod" type=video/ogg>
                    <source src="../assets/contentPost1V2.mp4" class="vod" type=video/mp4>
                </video>
            </template>
        </ItemTweet>
    </div>
</template>

<style scoped>
.imgAvatar {
    width: 70px;
    height: 70px;
    border-radius: 50px;
}

g {
    color: rgb(83, 100, 113)
}

p {
    font-size: 1rem;
    margin-right: 0.3rem;
    color: rgb(59, 169, 238);
}

p:hover {
    cursor: pointer;
    text-decoration: underline;
}

#hashtag {
    display: flex;
}

.theTweet {
    background-color: none;
}


#vod {
    border-radius: 15px;
}


</style>