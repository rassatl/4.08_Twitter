import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import AboutView from '../views/AboutView.vue'
import ExploreView from '../views/Explore.vue'
import NotificationView from '../views/Notifications.vue'
import MessageView from '../views/Messages.vue'
import BookmarksView from '../views/Bookmarks.vue'
import ListsView from '../views/Lists.vue'
import ProfileView from '../views/Profile.vue'
import MoreView from '../views/More.vue'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/about',
      name: 'about',
      component: AboutView
    },
    {
      path: '/explore',
      name: 'explore',
      component: ExploreView
    },
    {
      path: '/notifications',
      name: 'notifications',
      component: NotificationView
    },
    {
      path: '/messages',
      name: 'messages',
      component: MessageView
    },
    {
      path: '/bookmarks',
      name: 'bookmarks',
      component: BookmarksView
    },
    {
      path: '/lists',
      name: 'lists',
      component: ListsView
    },
    {
      path: '/profile',
      name: 'profile',
      component: ProfileView
    },
    {
      path: '/more',
      name: 'more',
      component: MoreView
    }
  ]
})

export default router
