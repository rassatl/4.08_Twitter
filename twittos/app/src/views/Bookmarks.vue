<script>
export default {
  mounted() {
    document.title = 'Bookmars / Twitter';
  },
};
</script>
<template>
  <div class="bookmarks">
    <h1>Bookmarks</h1>
    <p>@Louuleloup</p>
    <div id="bgItemsBookmarks">
      <img src="../assets/bgBookmarks.jpg" alt="bgBookmarks">
      <h2>Save Tweets for later</h2>
      <p>Don’t let the good ones fly away! Bookmark Tweets to easily find them again in the future.</p>
    </div>
  </div>
</template>

<style>
.bookmarks {
  min-height: 100vh;
  padding: 1rem;
}

img {
  width: 25vw;
}

#bgItemsBookmarks {
  display: flex;
  flex-direction: column;
  text-align: center;
  align-items: center;
  justify-content: center;
}

#bgItemsBookmarks p{
  max-width: 330px;
}
</style>