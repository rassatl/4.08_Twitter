<script setup>
import axios from 'axios'
import { defineComponent, reactive, ref } from 'vue'

const tweets = ref([])
const mps = ref([])
const profiles = ref([])


axios.get('http://localhost:3000/tweet')
  .then(response => {
    tweets.value = response.data;
  })
  .catch(error => {
    console.error(error);
});

axios.get('http://localhost:3000/mp')
  .then(response => {
    mps.value = response.data;
  })
  .catch(error => {
    console.error(error);
});

axios.get('http://localhost:3000/profil')
  .then(response => {
    profiles.value = response.data;
  })
  .catch(error => {
    console.error(error);
});

</script>

<template>
  <div class="notifications">
    <h1>Tweet</h1>
    <ul v-if="tweets.length > 0">
      <li v-for="tweet in tweets" :key="tweet.idTweet">{{ tweet.msg }}{{  tweet.idProfil }}</li>
    </ul>
    <p v-else>Loading tweets ...</p>

    <h1>MP</h1>
    <ul v-if="mps.length > 0">
      <li v-for="mp in mps" :key="mp.idMessage">{{ mp.msg }}</li>
    </ul>
    <p v-else>Loading mp...</p>

    <h1>Profile</h1>
    <ul v-if="profiles.length > 0">
      <li v-for="profile in profiles" :key="profile.idProfil">{{ profile.pseudo }}</li>
    </ul>
    <p v-else>Loading mp...</p>
  </div>
</template>

<style>
.notifications {
  min-height: 100vh;
}
</style>