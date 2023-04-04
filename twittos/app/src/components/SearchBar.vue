<template>
    <div class="search-container">
        <div class="search-bar">
            <i class="fa fa-search"></i>
            <input type="text" :placeholder="placeholder">
        </div>
    </div>
</template>
  
<style>
.search-container {
    display: flex;
    align-items: center;
    z-index: 999;
    width: 100%;
    flex: 1;
}


.search-bar {
    display: flex;
    align-items: center;
    background-color: #f5f8fa;
    border-radius: 30px;
    padding: 5px 1px;
    flex: 1;
}

.fa-search {
    font-size: 20px;
    margin-right: 5px;
    color: #aab8c2
}

input[type="text"] {
    border: none;
    outline: none;
    background-color: transparent;
    font-size: 16px;
    color: Black;
    width: 100%;
    padding: 0 10px;
}
</style>
  
<script setup>
const props = defineProps({
    placeholder: {
        default: "Search Twitter",
        required: false,
    }
});
</script>
