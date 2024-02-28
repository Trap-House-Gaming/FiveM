<template>
    <button
        v-if="process == 100"
        @click="handleConfirm"
        class="h-12 bg-[#3DBB51]/60 rounded-md disabled:opacity-70"
        :disabled="disabled"
    >
        <h1 class="text-lg text-white font-medium">{{ label }}</h1>
    </button>
    <button v-else class="h-12 bg-gray-900 rounded-md overflow-hidden" disabled>
        <div
            :style="{
                width: `${process * 1.15}%`,
                transition: 'width 1000ms linear'
            }"
            class="h-full bg-gray-800"
        ></div>
    </button>
</template>

<script lang="ts" setup>
import { ref } from 'vue'
import { Howl } from 'howler'

const process = ref(100)
const props = defineProps(['label', 'data', 'handler', 'disabled'])

const handleConfirm = () => {
    process.value = 0
    new Howl({
        src: [
            'https://cdn.discordapp.com/attachments/569978689241088109/1110658049896632360/reserch.mp3'
        ]
    })
        .volume(0.3)
        .play()
    const interval = setInterval(() => {
        if (100 > process.value) process.value += 1
        if (100 == process.value) {
            props.handler()
            clearInterval(interval)
        }
    }, 100)
}
</script>
