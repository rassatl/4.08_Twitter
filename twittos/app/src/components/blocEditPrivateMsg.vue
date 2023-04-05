<script setup>
</script>

<template>
    <div id="containerBox">
        <div class="containerOptions" id="itemTop">
            <div>
                <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                    <g>
                        <path
                            d="M17 9.76V4.5C17 3.12 15.88 2 14.5 2h-5C8.12 2 7 3.12 7 4.5v5.26L3.88 16H11v5l1 2 1-2v-5h7.12L17 9.76zM7.12 14L9 10.24V4.5c0-.28.22-.5.5-.5h5c.28 0 .5.22.5.5v5.74L16.88 14H7.12z">
                        </path>
                    </g>
                </svg>
            </div>
            <div>Pin conversation</div>
        </div>
        <div class="containerOptions" id="itemCenter">
            <div>
                <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                    <g>
                        <path
                            d="M20.29 2.29l-2.34 2.34C16.47 3.01 14.34 2 12 2 7.93 2 4.51 5.02 4 9.05L2.87 18h1.72l-2.3 2.29 1.42 1.42 18-18-1.42-1.42zM6.59 16H5.13l.85-6.7C6.36 6.27 8.94 4 12 4c1.79 0 3.42.78 4.54 2.05L6.59 16zM12 22c-1.57 0-2.98-.73-3.89-1.86l1.42-1.43c.55.78 1.45 1.29 2.47 1.29 1.31 0 2.42-.83 2.83-2H12v-2h6.86l-.74-5.87 1.76-1.76c.05.22.08.44.11.67L21.14 18H16.9c-.46 2.28-2.48 4-4.9 4z">
                        </path>
                    </g>
                </svg>
            </div>
            <div>Snooze conversation</div>
        </div>
        <div class="containerOptions" id="itemCenter">
            <div>
                <svg viewBox="0 0 24 24" aria-hidden="true" class="icon">
                    <g>
                        <path d="M3 2h18.61l-3.5 7 3.5 7H5v6H3V2zm2 12h13.38l-2.5-5 2.5-5H5v10z"></path>
                    </g>
                </svg>
            </div>
            <div>Report conversation</div>
        </div>
        <div class="containerOptions" id="itemBottom">
            <div>
                <svg viewBox="0 0 32 32" aria-hidden="true"
                    class="icon">
                    <g>
                        <path
                            d="M20 23h-2v-8h2v8zm-6-8h-2v8h2v-8zm14-5h-1.713l-1.111 15.577C25.038 27.496 23.424 29 21.5 29H10.486c-1.915 0-3.522-1.496-3.66-3.405L5.699 10H4V8h7V6c0-1.654 1.346-3 3-3h4c1.654 0 3 1.346 3 3v2h7v2zM13 8h6V6c0-.551-.449-1-1-1h-4c-.551 0-1 .449-1 1v2zm11.281 2H7.705l1.117 15.451c.062.869.793 1.549 1.665 1.549H21.5c.88 0 1.619-.688 1.681-1.565L24.282 10z" style="fill:#f7230c;">
                        </path>
                    </g>
                </svg>
            </div>
            <div id="red">Delete conversations</div>
        </div>
</div></template>


<style scoped>
#itemTop{
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    border: 1px solid black;
}
#itemBottom{
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
    border: 1px solid black;
}
#red{
    color:red;
}
#itemCenter{
    border: 0.1px solid black;
}
.containerOptions{
    display: flex;
    align-items: center;
    cursor: pointer;
    padding: 2px;
}
.containerOptions:hover{
    background-color: rgb(214, 209, 209);
}
#containerBox{
    width: fit-content;
    font-size: 1rem; 
}

</style>