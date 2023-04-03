<template>
    <div class="trend">
        <div class="trendingInfo">
            <p>
                <slot name="trending"></slot>
            </p>
        </div>
        <div class="trendingTitle">
            <p>
                <slot name="trendingName"></slot>
            </p>
        </div>
        <div>
            <slot name="trendingNb"></slot>
        </div>
     </div>
</template>



<style scoped>
.trendingTitle p{
    font-weight: bold;
}
.trend{
    margin-left: -10px;
    margin-right: -10px;
    padding-left: 10px;
    padding-top: 2px;
    padding-bottom: 2px;
}
.trend:hover{
  background-color: rgb(201, 201, 201);
}

</style>
  