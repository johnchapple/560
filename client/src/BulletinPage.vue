<template>
  <div class="border border-gray-400 rounded bg-gray-100 p-3 shadow-xl">
    <h2 class="text-blue-800 text-2xl text-center">Bulletin Board</h2>
    <BulletinPost class="mb-2" v-for="post in $store.bulletinPosts" :bulletinPost="post" :key="post.BulletinPostID" />
    <form v-if="$store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID === 1" @submit.prevent="addBulletin">
      <textarea v-model="newPost" type="text" class="p-1 block w-full border border-gray-300 rounded" placeholder="New Bulletin Post" />
      <button class="w-full border border-gray-300 rounded">Submit Post</button>
    </form>
  </div>
</template>

<script>
import BulletinPost from './Components/BulletinPost.vue'
import axios from 'axios'

export default {
  name: 'BulletinPage',
  data() {
    return {
      newPost: '',
    }
  },
  components: {
    BulletinPost
  },
  methods: {
    addBulletin() {
      console.log('here', this.$store.user)
      axios.post('/bulletinPosts', { Text: this.newPost, Employeeid: this.$store.user.EmployeeID })
      .then(res => {
        this.$store.bulletinPosts.push(res.data[0])
      })
    },
  }
}
</script>