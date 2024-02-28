<template>
    <div class="h-screen w-full flex items-center justify-center">
        <div class="h-3/5 w-3/5 flex">
            <div class="w-96 py-6 px-8 flex flex-col gap-3 bg-[#0C1321] rounded-l-3xl">
                <div>
                    <h1 class="text-4xl text-white font-medium font-drunk">
                        {{ locale.research_items }}
                    </h1>
                    <p class="flex-1 text-sm text-white/20 font-light">
                        {{ locale.item_researching }}
                    </p>
                </div>
                <div class="p-1 flex items-center gap-2 rounded-md border-2 border-white/5">
                    <div class="h-6 w-6 flex items-center justify-center bg-white/5 rounded-sm">
                        <i class="text-sm text-white/30 fa-light fa-magnifying-glass"></i>
                    </div>
                    <input
                        v-model="filterText"
                        type="text"
                        placeholder="Search by item name"
                        class="outline-none flex-1 text-sm text-white/70 placeholder:text-white/25 bg-transparent"
                    />
                </div>
                <div class="flex-1 pr-2 flex flex-col gap-2 overflow-y-scroll">
                    <ItemCard
                        v-if="filteredItems[0]"
                        v-for="(item, index) in filteredItems"
                        :key="index"
                        :data="item"
                        :locale="locale"
                    />
                    <div v-else class="h-full flex flex-col items-center justify-center gap-2">
                        <span class="text-4xl text-gray-700">
                            <i class="fa-light fa-magnifying-glass"></i>
                        </span>
                        <h1 class="text-gray-700 font-semibold">{{ locale.item_not_found }}</h1>
                    </div>
                </div>
            </div>
            <div
                v-if="$route.query.item"
                class="flex-1 p-10 flex flex-col gap-8 bg-[#080D17] rounded-r-3xl"
            >
                <div class="flex-1 flex gap-8">
                    <div class="flex-1 flex flex-col gap-8">
                        <div
                            class="flex-1 flex items-center justify-center circle bg-contain bg-no-repeat bg-center"
                        >
                            <div
                                :style="{
                                    backgroundImage: `url(${getSelectedItem?.image})`
                                }"
                                class="h-64 w-64 bg-contain bg-no-repeat bg-center z-10"
                            ></div>
                        </div>
                        <div class="flex flex-col gap-2">
                            <h1 class="text-lg text-white">{{ locale.item_need_researching }}</h1>
                            <div class="flex flex-wrap gap-y-2 gap-x-4">
                                <div
                                    v-for="(item, index) in getSelectedItem.researchCost"
                                    :key="index"
                                    class="flex"
                                >
                                    <div
                                        :class="item.has ? 'bg-white/5' : 'bg-red-500/20'"
                                        class="py-1 px-2 rounded-l"
                                    >
                                        <h1
                                            :class="item.has ? 'text-[#CECECE]' : 'text-[#bb3d43]'"
                                            class="text-sm"
                                        >
                                            X{{ item.amount }}
                                        </h1>
                                    </div>
                                    <div
                                        :class="item.has ? 'bg-black/30' : 'bg-[#bb3d43]/10'"
                                        class="py-1 px-2 rounded-r"
                                    >
                                        <h1
                                            :class="item.has ? 'text-[#CECECE]' : 'text-[#bb3d43]'"
                                            class="text-sm"
                                        >
                                            {{ item.label }}
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-64 flex flex-col justify-between gap-8">
                        <div class="flex flex-col justify-center gap-1">
                            <div class="flex items-start gap-3">
                                <h1 class="text-4xl text-white font-medium font-drunk uppercase">
                                    {{ getSelectedItem.label }}
                                </h1>
                                <span
                                    :style="{
                                        backgroundColor:
                                            getSelectedItem.tier == 1
                                                ? 'rgba(61, 187, 81, 0.2)'
                                                : getSelectedItem.tier == 2
                                                ? 'rgba(61, 142, 187, 0.2)'
                                                : 'rgba(187, 61, 67, 0.2)'
                                    }"
                                    class="mt-1.5 py-1 px-2 bg-[#BB3D43]/20 rounded"
                                >
                                    <h1
                                        :style="{
                                            color:
                                                getSelectedItem.tier == 1
                                                    ? 'rgb(61, 187, 81)'
                                                    : getSelectedItem.tier == 2
                                                    ? 'rgb(61, 142, 187)'
                                                    : 'rgb(187, 61, 67)'
                                        }"
                                        class="text-xs text-[#BB3D43]"
                                    >
                                        {{ locale.tier }} {{ getSelectedItem.tier }}
                                    </h1>
                                </span>
                            </div>
                            <p class="text-white/30">
                                {{ getSelectedItem.description }}
                            </p>
                        </div>
                        <div
                            v-if="getSelectedItem.researched"
                            class="py-4 px-5 flex items-center gap-5 bg-[#BB3D43]/20 rounded-md"
                        >
                            <span class="text-2xl text-[#BB3D43]">
                                <i class="fa-light fa-triangle-exclamation"></i>
                            </span>
                            <p class="text-[#BB3D43]">{{ locale.already_researched }}</p>
                        </div>
                        <div
                            v-else
                            class="py-4 px-5 flex items-center gap-5 bg-[#BB3D43]/20 rounded-md"
                        >
                            <span class="text-2xl text-[#BB3D43]">
                                <i class="fa-light fa-triangle-exclamation"></i>
                            </span>
                            <p class="text-[#BB3D43]">
                                You need a tier {{ getSelectedItem.tier }} workbench to craft this
                                item.
                            </p>
                        </div>
                    </div>
                </div>
                <ConfirmButton
                    :label="locale.research"
                    :data="getSelectedItem"
                    :handler="handleConfirm"
                    :disabled="!getSelectedItem.researchable"
                />
            </div>
            <div
                v-else
                class="flex-1 p-10 flex flex-col items-center justify-center gap-2 bg-[#080D17] rounded-r-3xl"
            >
                <span class="text-6xl text-gray-700">
                    <i class="fa-solid fa-face-sleeping"></i>
                </span>
                <h1 class="text-lg text-gray-700 font-semibold">
                    {{ locale.choose_item }}
                </h1>
            </div>
        </div>
    </div>
</template>

<script lang="ts" setup>
import { ref, watch, computed, onMounted } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import isEnvBrowser from '../utils/isEnvBrowser'
import ItemCard from '../components/ItemCard.vue'
import ConfirmButton from '../components/ConfirmButton.vue'
import fetchNui from '../utils/fetchNui'

const props = defineProps(['locale'])

const route = useRoute()
const router = useRouter()

const items: any = ref([])
const filteredItems: any = ref([])
const filterText = ref('')

const handleConfirm = () => {
    if (isEnvBrowser()) console.log(31)
    else {
        fetchNui('researchItem', {
            item: items.value.find((item: any) => item.name === route.query.item)
        }).then(() => updateItems())
    }
}

const updateItems = () =>
    fetchNui('getResearchableItems').then((data: any) => {
        items.value = data
    })

watch(items, (newValue, oldValue) => {
    filteredItems.value = newValue
})

watch(filterText, (newValue, oldValue) => {
    filteredItems.value = items.value.filter((item: any) =>
        item.label.toLowerCase().includes(newValue.toLowerCase())
    )
})

const getSelectedItem = computed(() =>
    items.value.find((item: any) => item.name === route.query.item)
)

if (isEnvBrowser()) {
    items.value = [
        {
            name: 'bandage',
            label: 'Bandage',
            description: 'Lorem ipsum, dolor sit amet consectetur.',
            image: './bandage.png',
            tier: 1,
            researchRequired: false,
            researchCost: [
                {
                    name: 'heavypistol',
                    label: 'Heavy Pistol',
                    amount: 1
                },
                {
                    name: 'scrap',
                    label: 'Scrap',
                    amount: 125
                }
            ],
            craftingCost: [
                {
                    name: 'metal_spring',
                    label: 'Metal Spring',
                    amount: 1
                },
                {
                    name: 'metal_pipe',
                    label: 'Metal Pipe',
                    amount: 1
                }
            ]
        },
        {
            name: 'hammer',
            label: 'Hammer',
            description: 'Lorem ipsum, dolor sit amet consectetur.',
            image: './hammer.png',
            tier: 1,
            researchRequired: false,
            researchCost: [
                {
                    name: 'heavypistol',
                    label: 'Heavy Pistol',
                    amount: 1
                },
                {
                    name: 'scrap',
                    label: 'Scrap',
                    amount: 125
                }
            ],
            craftingCost: [
                {
                    name: 'metal_spring',
                    label: 'Metal Spring',
                    amount: 1
                },
                {
                    name: 'metal_pipe',
                    label: 'Metal Pipe',
                    amount: 1
                }
            ]
        },
        {
            name: 'heavypistol',
            label: 'Heavy Pistol',
            description: 'Lorem ipsum, dolor sit amet consectetur.',
            image: './heavypistol.png',
            tier: 3,
            researchRequired: false,
            researchCost: [
                {
                    name: 'heavypistol',
                    label: 'Heavy Pistol',
                    amount: 1
                },
                {
                    name: 'scrap',
                    label: 'Scrap',
                    amount: 125
                }
            ],
            craftingCost: [
                {
                    name: 'metal_spring',
                    label: 'Metal Spring',
                    amount: 1
                },
                {
                    name: 'metal_pipe',
                    label: 'Metal Pipe',
                    amount: 1
                }
            ]
        },
        {
            name: 'medikit',
            label: 'Medical Kit',
            description: 'Lorem ipsum, dolor sit amet consectetur.',
            image: './medikit.png',
            tier: 2,
            researchRequired: false,
            researchCost: [
                {
                    name: 'heavypistol',
                    label: 'Heavy Pistol',
                    amount: 1
                },
                {
                    name: 'scrap',
                    label: 'Scrap',
                    amount: 125
                }
            ],
            craftingCost: [
                {
                    name: 'metal_spring',
                    label: 'Metal Spring',
                    amount: 1
                },
                {
                    name: 'metal_pipe',
                    label: 'Metal Pipe',
                    amount: 1
                }
            ]
        }
    ]
}

onMounted(() => {
    updateItems()
})
</script>
