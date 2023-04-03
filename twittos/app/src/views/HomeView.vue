<script setup>
import HomeComponent from '../components/HomeComponent.vue';
</script>
<script>
export default {
  mounted() {
    document.title = 'Home / Twitter';
  },
};
</script>
<template>
  <main>
    <HomeComponent/>
  </main>
</template>
