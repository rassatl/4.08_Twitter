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
        <div class="details">
            <h3>
                <slot name="contentText"></slot>
            </h3>
        </div>
        <div class="content">
            <slot name="contentObj"></slot>
        </div>
    </div>
</template>
  
<style scoped>
.infos{
    display: flex;
}
.item {
    margin-top: 2rem;
    display: flex;
}


.details {
    flex: 1;
    margin-left: 1rem;
}

h3 {
    font-size: 1.2rem;
    font-weight: 100;
    margin-bottom: 0.4rem;
    color: var(--color-heading);
}

.content {
    width: 100px;
    height: 100px;
}
</style>
  