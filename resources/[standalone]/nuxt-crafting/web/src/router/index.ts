import { createRouter, createWebHistory } from 'vue-router'

const router = createRouter({
    history: createWebHistory(import.meta.env.BASE_URL),
    routes: [
        {
            path: '/crafting',
            component: () => import('../views/CraftingView.vue')
        },
        {
            path: '/research',
            component: () => import('../views/ResearchView.vue')
        }
    ]
})

export default router
