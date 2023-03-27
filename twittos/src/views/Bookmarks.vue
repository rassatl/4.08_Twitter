<script>
export default {
  mounted() {
    document.title = 'Bookmars / Twitter';
  },
};
</script>
<template>
  <div class="bookmarks">
    <h1>This is an bookmarks page</h1>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .bookmarks {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>