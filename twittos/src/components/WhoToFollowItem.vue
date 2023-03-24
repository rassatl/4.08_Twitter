<template>
    <div class="follows">
        <div class="followerData">
            <p>
                <slot name="followerName"></slot>
            </p>
        </div>
        <div class="followerArobase">
            <p>
                <slot name="followerRealName"></slot>
            </p>
        </div>
        <button>
            <slot name="followerButton"></slot>
        </button>
     </div>
</template>



<style scoped>
.followerData p{
    font-weight: bold;
}
button{
    background-color: black;
    width: 100px;
    height: 50px;
    border-radius: 25px;
}
</style>
  