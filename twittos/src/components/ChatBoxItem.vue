<template>
    <div class="chat">
        <div id="containerData">
            <div class="chatUserData">
                <p>
                    <slot name="avatar"></slot>
                </p>
                <div>
                    <slot name="name"></slot>
                </div>
                <p>
                    <slot name="arobase"></slot>
                </p>
            </div>
            <div class="chatData">
                <p>
                    <slot name="whenJoin"></slot>
                </p>
                <p>
                    <slot name="followingData"></slot>
                </p>
            </div>
        </div>
        <div id="chatBox">
            <div class="msg">
                <p>
                    <slot name="myMsg"></slot>
                </p>
            </div>
        </div>
    </div>
</template>

<style scoped>
#containerData {
    background-color: grey;
    display: flex;
    flex-direction: column;
    text-align: center;
    align-items: center;
    justify-content: center;
    width: 35vw;
    padding: 2rem;
    padding-bottom: 1rem;
}

#chatBox {
    background-color: green;
}

.chatUserData div {
    font-weight: bold;
}

.chatData {
    padding-top: 1rem;
    padding-bottom: 0.5rem;
}

</style>
