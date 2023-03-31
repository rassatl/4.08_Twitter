<script>
import TrendComponent from '../components/TrendComponent.vue'
export default {
  mounted() {
    document.title = "Explore / Twitter";
  },
  components: { TrendComponent }
};
</script>

<template>
  <div class="explore">
    <h1>Trends for you</h1>
    <div id="trends">
      <TrendComponent />
      <a href="/explore">
        <div id="buttonTwitter">Show More</div>
      </a>
    </div>
  </div>
</template>

<style scoped>
.explore {
  min-height: 100vh;
}
.explore h1{
  font-weight: bold;
}
</style>
