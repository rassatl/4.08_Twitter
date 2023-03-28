<script setup>
import ItemChatBox from './ChatBoxItem.vue'

var arraySil = {
    messages: [
        { commentaire: "Bonjour", sender: true },
        { commentaire: "Comment ça va ?", sender: false },
        { commentaire: "Très bien, merci !", sender: true },
        { commentaire: "Et toi ?", sender: false },
        { commentaire: "Je vais bien aussi, merci !", sender: true },
    ]
};
</script>



<template>
    <ItemChatBox>
        <template #avatar>
            <img src="../assets/avatar4.jpg" alt="avatar4" class="imgAvatar">
        </template>
        <template #name>
            JulsSil
        </template>
        <template #arobase>
            @JulesSil1
        </template>
        <template #whenJoin>
            Joined April 2020 · 3 Followers
        </template>
        <template #followingData>
            Not followed by anyone you re following
        </template>
        <template #myMsg>
            <div v-if="!arraySil.messages.sender">
                <ul>
                    <li v-for="msg in arraySil.messages" :id="msg.sender ? 'me' : 'friend'">
                        <div id="bgli">
                            {{ msg.commentaire }}
                        </div>
                    </li>
                </ul>
            </div>
            <div v-else>
                <p>Object not received!</p>
            </div>
        </template>
        <template #friendMsg>
            test
        </template>
    </ItemChatBox>
</template>


<style scoped>
#me {
    color: black;
    float: right;
    display: flex;
    justify-content: flex-end;
    width: 100%;
}

#friend {
    color: black;
    float: left;
    display: flex;
    width: 100%;
}
#bgli{
    background-color: red;
    padding: 10px 20px;
    border-radius: 10px;
}
ul {
    list-style: none;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    position: relative;
}

ul li {
    width: fit-content;
}
</style>