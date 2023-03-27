<template>
    <div class="msg">
        <div class="msgUserName">
            <p>
                <slot name="name"></slot>
            </p>
            <p>
                <slot name="arobase"></slot>
            </p>
        </div>
        <div class="msgLastmsg">
            <p>
                <slot name="lastMessage"></slot>
            </p>
        </div>
     </div>
</template>