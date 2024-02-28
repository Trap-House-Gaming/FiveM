<template>
    <RouterLink
        :to="
            $route.query.tier
                ? `?tier=${$route.query.tier}&item=${data.name}`
                : `?item=${data.name}`
        "
        class="p-[2px] bg-gradient-to-b from-[#1F2737] rounded-md"
    >
        <div
            class="relative p-5 flex items-center gap-4 bg-[#0C1321] rounded-t-[4px] overflow-hidden"
        >
            <div class="absolute -bottom-96 left-0 w-full flex justify-center">
                <div
                    :style="{
                        backgroundColor:
                            data.tier == 1
                                ? 'rgb(61, 187, 81)'
                                : data.tier == 2
                                ? 'rgb(61, 142, 187)'
                                : 'rgb(187, 61, 67)'
                    }"
                    class="h-96 w-96 rounded-full blur-3xl"
                ></div>
            </div>
            <div
                :style="{
                    backgroundImage: `url(${data.image})`
                }"
                class="h-[3.5rem] w-[3.5rem] bg-cover bg-center z-10"
            ></div>
            <div class="flex-1 flex flex-col gap-1 z-10">
                <div class="flex items-center gap-3">
                    <h1 class="flex-1 text-white font-medium truncate">{{ data.label }}</h1>
                    <span
                        :style="{
                            backgroundColor:
                                data.tier == 1
                                    ? 'rgba(61, 187, 81, 0.2)'
                                    : data.tier == 2
                                    ? 'rgba(61, 142, 187, 0.2)'
                                    : 'rgb(187, 61, 67, 0.2)'
                        }"
                        class="py-1 px-2 rounded"
                    >
                        <h1
                            :style="{
                                color:
                                    data.tier == 1
                                        ? 'rgb(61, 187, 81)'
                                        : data.tier == 2
                                        ? 'rgb(61, 142, 187)'
                                        : 'rgb(187, 61, 67)'
                            }"
                            class="text-xs"
                        >
                            {{ locale.tier }} {{ data.tier }}
                        </h1>
                    </span>
                </div>
                <p class="text-sm text-white/50">{{ data.description }}</p>
            </div>
        </div>
        <div
            :style="{
                backgroundColor:
                    data.tier == 1
                        ? 'rgb(61, 187, 81)'
                        : data.tier == 2
                        ? 'rgb(61, 142, 187)'
                        : 'rgb(187, 61, 67)'
            }"
            class="h-1 rounded-b-[4px]"
        ></div>
    </RouterLink>
</template>

<script lang="ts" setup>
const props = defineProps(['locale', 'data'])
</script>
