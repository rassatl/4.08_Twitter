import { defineStore } from "pinia";
import { useStorage, StorageSerializers } from '@vueuse/core';
import axios from 'axios'

export const userAuth = defineStore("Auth", {
    state: () => ({
        userLogin: useStorage('user', null, localStorage, {serializer: StorageSerializers.object}),
    }),
    getters: {
        isLoggedIn: (state) => state.userLogin != null,
        user: (state) => state.userLogin
    },
    actions: {
        async login(username, pwd) {
            return new Promise((resolve, reject) => {
                axios.post('http://localhost:3000/login', {username, pwd})
                .then(response => {
                    this.userLogin = response.data[0];
                    resolve(true);
                })
                .catch(error => {
                    console.log(error);
                    resolve(false);
                });
            })
        },
        async logout(){
            this.userLogin = null;
        }
    },
});