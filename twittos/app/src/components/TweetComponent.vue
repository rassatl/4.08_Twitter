<script setup>
import ItemTweet from './TweetItem.vue'
import axios from 'axios'
import { userAuth } from '../stores/AuthStore'
import { ref } from 'vue'

const authStore = userAuth();

const tweets = ref([])
axios.get('http://localhost:3000/tweet')
    .then(response => {
        tweets.value = response.data;
    })
    .catch(error => {
        console.error(error);
    });

</script>


<template>
    <ul v-if="tweets.length > 0">
        <li v-for="tweet in tweets" :key="tweet.idTweet">
        <div class="theTweet">
            <ItemTweet>
                <template #avatar>
                    <img src="../assets/avatar3.jpg" alt="Avatar" class="imgAvatar" />
                </template>
                <template #name>
                    <h6>{{ authStore.user.fullname }}<g>@{{ authStore.user.username }} · 3min</g>
                    </h6>
                </template>
                <template #contentText> {{ tweet.msg }}

                </template>
            </ItemTweet>
        </div>
    </li>
</ul>
<p v-else>Loading tweets ...</p>


<!--     
    <div class="theTweet">
        <ItemTweet>
            <template #avatar>
            <img src="../assets/avatar3.jpg" alt="Avatar" class="imgAvatar" />
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
            </template>
        </ItemTweet>
    </div>

    <div class="theTweet">
        <ItemTweet>
            <template #avatar>
            <img src="../assets/avatar1.jpg" alt="Avatar" class="imgAvatar" />
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
            </template>
        </ItemTweet>
    </div>

    <div class="theTweet">
        <ItemTweet>
            <template #avatar>
            <img src="../assets/avatar2.jpg" alt="Avatar" class="imgAvatar" />
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
            </template>
        </ItemTweet>
    </div>
    <div class="theTweet">
        <ItemTweet>
            <template #avatar>
            <img src="../assets/avatar3.jpg" alt="Avatar" class="imgAvatar" />
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
            </template>
        </ItemTweet>
    </div>
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
            </template>
        </ItemTweet>
    </div>
    <div class="theTweet">
                            <ItemTweet>
                                <template #avatar>
                                <img src="../assets/avatar1.jpg" alt="Avatar" class="imgAvatar" />
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
                                </template>
                            </ItemTweet>
                        </div> -->
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