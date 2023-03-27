<template>
  <div class="lists">
    <h1>This is an lists page</h1>
  </div>
</template>

<script>
export default {
  mounted() {
    document.title = 'Lists / Twitter';
  },
};
</script>

<style>
@media (min-width: 1024px) {
  .lists {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>