<template>
    <div class="follows">
        <div id="containerAll">
            <div class="follower">
                <div class="followerData">
                    <slot name="followerAvatar"></slot>
                </div>
                <div class="followerArobase">
                    <p>
                        <slot name="followerName"></slot>
                    </p>
                    <container>
                        <slot name="followerRealName"></slot>
                    </container>
                </div>
            </div>
            <button>
                <slot name="followerButton">Follow</slot>
            </button>
        </div>
    </div>
</template>



<style scoped>

#containerAll{
    display: flex;
    justify-content: space-between;
    margin-bottom: 2px;
}
.followerArobase p {
    font-weight: bold;
}
.followerArobase {
    padding-top: 10px;
    padding-left: 5px;
}
.follower {
    display: flex;
}
button {
    background-color: black;
    color: white;
    width: 100px;
    height: 50px;
    border-radius: 25px;
    margin-top: 15px;
}
button:hover{
    background-color: rgb(29, 29, 29);
    cursor: pointer;
}
</style>
  