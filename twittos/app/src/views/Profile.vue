<script setup>
import TrendComponent from '../components/TrendComponent.vue'
import { userAuth } from '../stores/AuthStore'
const authStore = userAuth();
document.title = 'Profile / Twitter';
</script>

<template>
  <div class="profile">
    <header>
      <div id="componentHeader">
        <div id="imgComponent">
          <RouterLink to="/" class="routerLink">
            <div id="img">
              <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                <g>
                  <path
                    d="M13,26a1,1,0,0,1-.71-.29l-9-9a1,1,0,0,1,0-1.42l9-9a1,1,0,1,1,1.42,1.42L5.41,16l8.3,8.29a1,1,0,0,1,0,1.42A1,1,0,0,1,13,26Z" />
                  <path d="M28,17H4a1,1,0,0,1,0-2H28a1,1,0,0,1,0,2Z" />
                </g>
              </svg>
            </div>
          </RouterLink>
        </div>
        <div id="headerInfo">
          <h3>{{ authStore.user.fullname }}</h3>
          <p>0 Tweets</p>
        </div>
      </div>
    </header>
    <main>
      <div id="bgHeader">
        <img src="../assets/avatar1.jpg" alt="Avatar" id="imgPro"/>
      </div>
      <div id="blocButtonEditProfil">
        <div id="buttonEditProfil">
          <p>Edit Profile</p>
        </div>
      </div>
      <div id="infoProfile">
        <div id="nom">{{ authStore.user.fullname }}</div>
        <p>@{{ authStore.user.username }}</p>
        <div id="containerJoinDate">
          <div class="iconsProfile">
            <svg>
              <g>
                <path
                  d="M7 4V3h2v1h6V3h2v1h1.5C19.89 4 21 5.12 21 6.5v12c0 1.38-1.11 2.5-2.5 2.5h-13C4.12 21 3 19.88 3 18.5v-12C3 5.12 4.12 4 5.5 4H7zm0 2H5.5c-.27 0-.5.22-.5.5v12c0 .28.23.5.5.5h13c.28 0 .5-.22.5-.5v-12c0-.28-.22-.5-.5-.5H17v1h-2V6H9v1H7V6zm0 6h2v-2H7v2zm0 4h2v-2H7v2zm4-4h2v-2h-2v2zm0 4h2v-2h-2v2zm4-4h2v-2h-2v2z">
                </path>
              </g>
            </svg>
          </div>
          <p>Joined March 2023</p>
        </div>
        <div class="containerNbFollow">
          <div class="containerNbFollow">
            <div>2</div>
            <p>Following</p>
          </div>
          <div class="containerNbFollow">
            <div>1</div>
            <p>Follower</p>
          </div>
        </div>
      </div>

      <div id="navBarProfil">
        <ul>
          <li>Tweets</li>
          <li>Replies</li>
          <li>Media</li>
          <li>Likes</li>
        </ul>
      </div>
      <div id="trends">
        <h3>Trends for you</h3>
        <TrendComponent />
        <a href="/explore">
          <div id="buttonTwitter">Show More</div>
        </a>
      </div>
    </main>
  </div>
</template>


<style scoped>
.routerLink {
  background-color: white;
}

#navBarProfil {
  margin-top: 1rem;
}

#navBarProfil ul {
  list-style-type: none;
  display: flex;
  margin: 0;
  padding: 0;
}

#navBarProfil li {
  font-weight: bold;
  font-size: 20px;
  height: 3rem;
  width: 100%;
  display: flex;
  text-align: center;
  align-items: center;
  justify-content: center;
}

#navBarProfil li:hover {
  background-color: rgba(207, 217, 222, 255);
  cursor: pointer;
}

#infoProfile #nom {
  font-weight: bold;
}

#infoProfile {
  margin-left: 1.3rem;
}

#buttonEditProfil {
  background-color: white;
  color: black;
  width: fit-content;
  height: fit-content;
  border-radius: 25px;
  padding: 5px;
  padding-left: 15px;
  padding-right: 15px;
  display: flex;
  text-align: center;
  align-items: center;
  right: 5px;
  border: 0.01px rgba(174, 174, 221, 0.425) solid;
}

#blocButtonEditProfil {
  display: flex;
  justify-content: end;
  margin: 1rem;
}

#buttonEditProfil p {
  font-weight: bold;
}

#buttonEditProfil:hover {
  background-color: rgba(207, 217, 222, 255);
  cursor: pointer;
}

.containerNbFollow {
  display: flex;
  margin-right: 12px;
}

.containerNbFollow div {
  font-weight: bold;
}

.containerNbFollow p {
  padding-left: 5px;
}

#containerJoinDate {
  display: flex;
  margin-top: 1rem;
}

#containerJoinDate p {
  padding-left: 8px;
}

.iconsProfile {
  width: 1.5rem;
  height: 1.5rem;
}

#bgHeader {
  width: 100%;
  height: 15rem;
  background-color: rgba(207, 217, 222, 255);
}
#imgPro {
    width: 150px;
    height: 150px;
    border-radius: 100%;
    top:150px;
    left: 30px;
    border: 5px white solid;
}

#imgComponent {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px;
}

#componentHeader {
  position: fixed;
  top: 0px;
  width: 40%;
  z-index: 999;
  height: 50px;
  min-width: 500px;
  background-color: white;
  display: flex;
}


h3 {
  font-weight: bold;
}

#headerInfo {
  margin-left: 10px;
}

#img {
  width: 2rem;
  height: 2rem;
  border-radius: 25px;
  padding: 2px
}

#img:hover {
  background-color: rgba(207, 217, 222, 255);
  cursor: pointer;
}

.profile {
  top: -80px;
  height: 100vh;
}</style>