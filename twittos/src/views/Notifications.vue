<template>
  <div class="notifications">
    <h1>This is an notifications page</h1>
  </div>
</template>

<script>
export default {
  mounted() {
    document.title = 'Notifications / Twitter';
  },
};
</script>

<style>
@media (min-width: 1024px) {
  .notifications {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>