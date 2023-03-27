<script>
export default {
  mounted() {
    document.title = 'More / Twitter';
  },
};
</script>
<template>
  <div class="more">
    <h1>This is an more page</h1>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .more {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
