<template>
    <div class="msg">
        <div class="msgUserAvatar">
            <p>
                <slot name="avatar"></slot>
            </p>
        </div>
        <div id="box">
            <div class="msgInfo">
                <div id="containerName">
                    <div id="name">
                        <slot name="name"></slot>
                    </div>
                    <div id="arobase">
                        <slot name="msgUserArobase"></slot>
                    </div>
                </div>
                <p>
                    <slot name="lastMessage"></slot>
                </p>
            </div>
        </div>
        <div id="msgDots">
            <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                <g>
                    <path
                        d="M3 12c0-1.1.9-2 2-2s2 .9 2 2-.9 2-2 2-2-.9-2-2zm9 2c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm7 0c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z">
                    </path>
                </g>
            </svg>
        </div>
    </div>
</template>

<style scoped>
* {
    transition: all 120ms ease-in-out;
}

.msg {
    display: flex;
    font-size: 1rem;
    padding: 0.5rem;
    margin-left: auto;
}

.msg:hover {
    background-color: rgba(201, 201, 201, 0.253);
    cursor: pointer;
}

#box {
    display: flex;
    align-items: center;
    margin-right: 0;
    margin-left: 1rem;
}

#name {
    font-weight: bold;
    padding-right: 0.5rem;
}

#containerName {
    display: flex;
}

#msgDots {
    width: 3rem;
    height: 3rem;
    border-radius: 50px;
    background-color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-left: auto; /* ajout de la propriété */
    margin-right: 0.5rem;
    align-self: center;
}

#msgDots:hover {
    background-color: rgb(29, 155, 240, 0.15);
}

#msgDots:hover svg g path {
    fill: #0A78FF;
}
</style>