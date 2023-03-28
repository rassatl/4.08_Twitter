<template>
    <div class="search-container">
        <div class="search-bar">
            <i class="fa fa-search"></i>
            <input type="text" placeholder="Search Twitter">
        </div>
    </div>
</template>
  
<style>
.search-container {
  display: flex;
  position: fixed;
  right: 13rem;
  align-items: center;
  z-index: 999;
  width: 20vw;
}


.search-bar {
    display: flex;
    align-items: center;
    background-color: #f5f8fa;
    border-radius: 30px;
    padding: 5px 1px;
    padding-right: 100px;
}

.fa-search {
    font-size: 20px;
    margin-right: 5px;
    color: #aab8c2;
}

input[type="text"] {
    border: none;
    outline: none;
    background-color: transparent;
    font-size: 16px;
    color: #1da1f2;
    width: 100%;
    padding: 0 10px;
}
</style>
  
<script>
export default {
    name: "SearchBar",
};
</script>
