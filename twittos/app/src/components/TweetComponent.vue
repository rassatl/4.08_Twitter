<script setup>
import ItemTweet from './TweetItem.vue'
import axios from 'axios'
import { userAuth } from '../stores/AuthStore'
import { ref, computed } from 'vue'

const props = defineProps({
    idTweet: {
        type: String,
        default: ""
    },
    idProfil: {
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
    isVerified: {
        type: String,
        default: ""
    },
    dateTweet: {
        type: String,
        default: ""
    },
    msg: {
        type: String,
        default: ""
    },
    reply: {
        type: String,
        default: ""
    },
    retweet: {
        type: String,
        default: ""
    },
    lik: {
        type: String,
        default: ""
    },
    view: {
        type: String,
        default: ""
    }
})
function addLike() {
    console.log(props.idTweet);
    console.log(props.lik)
}
// pour le timestamp de chaque tweet sur google : timesince js
</script>


<template>
    <div>
        <div class="theTweet">
            <ItemTweet>
                <template #avatar>
                    <img src="../assets/avatar3.jpg" alt="Avatar" class="imgAvatar" />
                </template>
                <template #name>
                    <h6>{{ fullname }} <img v-if="isVerified" src="../assets/logo.svg" class="icon" alt="">
                        <g>@{{ username }} · 3min</g>
                    </h6>
                </template>
                <template #contentText> {{ msg }}

                </template>
            </ItemTweet>
        </div>
        <div class="optionTweet">
            <div class="tweetOptions">
                <div class="optionsIconsBasic">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M1.751 10c0-4.42 3.584-8 8.005-8h4.366c4.49 0 8.129 3.64 8.129 8.13 0 2.96-1.607 5.68-4.196 7.11l-8.054 4.46v-3.69h-.067c-4.49.1-8.183-3.51-8.183-8.01zm8.005-6c-3.317 0-6.005 2.69-6.005 6 0 3.37 2.77 6.08 6.138 6.01l.351-.01h1.761v2.3l5.087-2.81c1.951-1.08 3.163-3.13 3.163-5.36 0-3.39-2.744-6.13-6.129-6.13H9.756z"
                                style: fill="#000000">
                            </path>
                        </g>
                    </svg>
                </div>
                <div class="nbParOptionBasic">
                    <p>{{ reply }}</p>
                </div>
            </div>
            <div class="tweetOptions">
                <div class="optionsIconsRetweeter">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M4.5 3.88l4.432 4.14-1.364 1.46L5.5 7.55V16c0 1.1.896 2 2 2H13v2H7.5c-2.209 0-4-1.79-4-4V7.55L1.432 9.48.068 8.02 4.5 3.88zM16.5 6H11V4h5.5c2.209 0 4 1.79 4 4v8.45l2.068-1.93 1.364 1.46-4.432 4.14-4.432-4.14 1.364-1.46 2.068 1.93V8c0-1.1-.896-2-2-2z">
                            </path>
                        </g>
                    </svg>
                </div>
                <div class="nbParOptionRetweeter">
                    <p>{{ retweet }}</p>
                </div>
            </div>

            <div class="tweetOptions" @click="addLike()">
                <div class="optionsIconsLike">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M16.697 5.5c-1.222-.06-2.679.51-3.89 2.16l-.805 1.09-.806-1.09C9.984 6.01 8.526 5.44 7.304 5.5c-1.243.07-2.349.78-2.91 1.91-.552 1.12-.633 2.78.479 4.82 1.074 1.97 3.257 4.27 7.129 6.61 3.87-2.34 6.052-4.64 7.126-6.61 1.111-2.04 1.03-3.7.477-4.82-.561-1.13-1.666-1.84-2.908-1.91zm4.187 7.69c-1.351 2.48-4.001 5.12-8.379 7.67l-.503.3-.504-.3c-4.379-2.55-7.029-5.19-8.382-7.67-1.36-2.5-1.41-4.86-.514-6.67.887-1.79 2.647-2.91 4.601-3.01 1.651-.09 3.368.56 4.798 2.01 1.429-1.45 3.146-2.1 4.796-2.01 1.954.1 3.714 1.22 4.601 3.01.896 1.81.846 4.17-.514 6.67z">
                            </path>
                        </g>
                    </svg>
                </div>
                <div class="nbParOptionLike">
                    <p>{{ lik }}</p>
                </div>
            </div>
            <div class="tweetOptions">
                <div class="optionsIconsBasic">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path d="M8.75 21V3h2v18h-2zM18 21V8.5h2V21h-2zM4 21l.004-10h2L6 21H4zm9.248 0v-7h2v7h-2z">
                            </path>
                        </g>
                    </svg>
                </div>
                <div class="nbParOptionBasic">
                    <p>{{ view }}</p>
                </div>
            </div>

            <div class="tweetOptions">
                <div class="optionsIconsBasic">
                    <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                        <g>
                            <path
                                d="M12 2.59l5.7 5.7-1.41 1.42L13 6.41V16h-2V6.41l-3.3 3.3-1.41-1.42L12 2.59zM21 15l-.02 3.51c0 1.38-1.12 2.49-2.5 2.49H5.5C4.11 21 3 19.88 3 18.5V15h2v3.5c0 .28.22.5.5.5h12.98c.28 0 .5-.22.5-.5L19 15h2z">
                            </path>
                        </g>
                    </svg>
                </div>
                <div class="heart"></div>
            </div>
        </div>
    </div>
</template>

<style scoped>
ul {
    list-style-type: none;
    margin-left: -2.5rem;
}

li {
    padding-bottom: 0.5rem;
}

li:hover {
    background-color: rgba(131, 131, 131, 0.226);
}

.imgAvatar {
    width: 70px;
    height: 70px;
    border-radius: 50px;
}

g {
    color: rgb(83, 100, 113);
    margin-left: 2px;
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



.optionTweet {
    display: flex;
    justify-content: space-between;
    margin-left: 6rem;
    margin-right: 6rem;
    margin-top: 0.5rem;
}

.optionTweet div {
    display: flex;
}

.tweetOptions p {
    margin-left: 15px;
    margin-top: 3px;
    color: rgb(83, 100, 113);
    font-size: 15px;
}

.optionsIconsBasic,
.optionsIconsRetweeter,
.optionsIconsLike {
    width: 2rem;
    height: 2rem;
    border-radius: 50px;
    padding-top: 4px;
    padding-left: 4px;
    cursor: pointer;
    transition: all 100ms ease-in-out;
}

.tweetOptions:hover .optionsIconsBasic {
    background-color: rgb(29, 155, 240, 0.5);
}

.tweetOptions:hover .optionsIconsBasic svg g path {
    fill: #0A78FF;
}

.tweetOptions:hover .nbParOptionBasic p {
    color: #0A78FF
}

.tweetOptions:hover .optionsIconsRetweeter {
    background-color: rgb(0, 186, 124, 0.5);
}

.tweetOptions:hover .optionsIconsRetweeter svg g path {
    fill: #009254
}

.tweetOptions:hover .nbParOptionRetweeter p {
    color: #009254
}

.tweetOptions:hover .optionsIconsLike {
    background-color: rgb(249, 24, 128, 0.5);
}

.tweetOptions:hover .optionsIconsLike svg g path {
    fill: #942e27
}

.tweetOptions:hover .nbParOptionLike p {
    color: #942e27
}

.theTweet h6 {
    display: flex;
    align-items: center;
}

.theTweet .icon {
    margin-top: 5px;
    margin-left: 5px;
    margin-right: 5px;
}
</style>