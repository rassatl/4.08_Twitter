<template>
    <div class="item">
        <div class="infos">
            <i>
                <slot name="avatar"></slot>
            </i>
            <h1 class="nom">
                <slot name="name"></slot>
            </h1>
        </div>
        <div class="text">
            <p>
                <slot name="contentText"></slot>
            </p>
        </div>
        <div class="content">
            <slot name="contentObj"></slot>
        </div>
    </div>
</template>



<style scoped>
.item{
    padding-bottom: 0.3rem;
}


i {
    margin-top: 1rem;
    margin-left: 1rem;
}

.infos {
    display: flex;
}

.nom {
    height: fit-content;
    margin-top: 1rem;
}

.text {
    margin-left: 6rem;
    margin-top: -3rem;
    height: 100%;
}

.content {
    background-color: red;
    display: flex;
    justify-content:center;
    margin-left: 35%;
    margin-right: 35%;
}


</style>
  