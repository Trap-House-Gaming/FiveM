<template>
    <RouterView v-slot="{ Component }">
        <Transition>
            <component v-show="show" :is="Component" :locale="locale" />
        </Transition>
    </RouterView>
</template>

<script lang="ts" setup>
import { ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import isEnvBrowser from './utils/isEnvBrowser'
import useNuiEvent from './utils/useNuiEvent'
import fetchNui from './utils/fetchNui'

const router = useRouter()
const show = ref(false)
const locale = ref({})

onMounted(() => {
    if (isEnvBrowser()) {
        document.body.style.backgroundColor = '#111827'
        show.value = true
    }

    useNuiEvent(({ data }: any) => {
        switch (data.action) {
            case 'research':
                router.push('/research')
                show.value = true
                break
            case 'craft':
                router.push(`/crafting?tier=${data.data.tier}`)
                show.value = true
                break
            case 'locale':
                locale.value = data.data.locale
                break
        }
    })

    document.addEventListener('keydown', function (event) {
        switch (event.keyCode) {
            case 27:
                fetchNui('close').then(() => {
                    router.push('/')
                    show.value = false
                })
                break
        }
    })
})
</script>
