<script setup>
import { RouterLink, RouterView, useRoute } from 'vue-router'
import TrendComponent from './components/TrendComponent.vue'
import WhoToFollowComponent from './components/WhoToFollowComponent.vue'
import SearchBar from './components/SearchBar.vue'
import NavBar from './components/NavBar.vue'
import MessageBox from './components/MessageBox.vue'
import AuthBanner from './components/Auth/AuthBanner.vue'
import { userAuth } from './stores/AuthStore'
const route = useRoute();
const authStore = userAuth();
userAuth();

</script>

<template>
  <SearchBar id="searchBarApp" v-if="route.name != 'messages'" />

  <div id="trends" v-if="route.name != 'messages'">
    <h3>Trends for you</h3>
    <TrendComponent />
    <a href="/explore">
      <div id="buttonTwitter">Show More</div>
    </a>
  </div>
  <div id="follows" v-if="route.name != 'messages'">
    <h3>Who to follow</h3>
    <WhoToFollowComponent />
    <a href="/explore">
      <div id="buttonTwitter">Show More</div>
    </a>
  </div>

  <div id="terms" v-if="route.name != 'messages'">
    <p>
      Terms of Service Privacy Policy Cookie Policy Accessibility Ads info More © 2023 Twitter, Inc.
    </p>
  </div>

  <header>
    <NavBar />
  </header>
  <RouterView class="flux" />
  <div id="blocDataCompte" v-if="authStore.user">
    <div id="containerData">
      <img id="avatar" src="./assets/avatar.jpg" alt="">
      <div id="containerDataUser">
        <div>{{ authStore.user.fullname }}</div>
        <P>@{{ authStore.user.username }}</P>
      </div>
    </div>
    <div id="dots">...</div>
  </div>
  <MessageBox v-if="route.name != 'messages'" />
  <AuthBanner />
</template>

<style scoped>
#dots {
  font-size: 2.5rem;
  padding-bottom: 3vh;
  width: 2vw;
}

#containerData {
  display: flex;
}

#blocDataCompte {
  bottom: 1rem;
  left: 9rem;
  min-width: 15rem;
  width: 10vw;
  height: 5rem;
  border-radius: 50px;
  background-color: white;
  position: fixed;
  display: flex;
  align-items: center;
  padding: 1rem;
  justify-content: space-between;
  cursor: pointer;
}

#blocDataCompte:hover {
  background-color: rgb(201, 201, 201);
}

#containerDataUser {
  width: fit-content;
  font-size: 1rem;
  margin-left: 0.5rem;
}

#avatar {
  background-size: cover;
  border-radius: 100%;
  width: 3.5rem;
  height: 3.5rem;
}


#terms {
  background-color: none;
  color: Black;
  width: 20vw;
  padding: 10px;
  border-radius: 13px;
  position: fixed;
  right: 13rem;
  top: 45rem;
  z-index: 600;
}

#follows {
  background-color: #eaecec;
  color: Black;
  width: 20vw;
  padding: 10px;
  border-radius: 13px;
  position: fixed;
  right: 13rem;
  top: 23.5rem;
  z-index: 600;
}

#follows h3 {
  font-weight: bold;
  margin-bottom: 10px;
}

#follows #buttonTwitter {
  background-color: transparent;
  color: #1DA1F2;
  text-align: center;

}

#follows #buttonTwitter:hover {
  background-color: rgb(201, 201, 201);
}

#searchBarApp {
  color: Black;
  width: 21vw;
  padding: 10px;
  border-radius: 13px;
  position: fixed;
  top: 0.5rem;
  right: 13rem;
  z-index: 600;
}

#trends {
  background-color: #eaecec;
  color: Black;
  width: 20vw;
  padding: 10px;
  border-radius: 13px;
  position: fixed;
  top: 3.5rem;
  right: 13rem;
  z-index: 600;
}

#trends h3 {
  font-weight: bold;
  margin-bottom: 5px;
}

#trends #buttonTwitter {
  background-color: transparent;
  color: #1DA1F2;
  margin-top: 5px;
  text-align: center;
}

#trends #buttonTwitter:hover {
  background-color: rgb(201, 201, 201);
}

.flux {
  width: 40vw;
  position: absolute;
  top: 98px;
  left: 25%;
  box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}
</style>
