<template>
  <div class="flex">
    <div class="block border border-gray-400 rounded bg-gray-100 p-3 shadow-xl" style="width: 33%">
      <h2 class="text-blue-800 text-2xl text-center">Bulletin Board</h2>
      <button
        v-if="$store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID === 1"
        class="block w-full text-left bg-white border border-gray-400 rounded text-gray-700 p-2 mb-2"
        @click="createNew = true">
        New Bulletin Post</button>
      <BulletinSummary class="mb-2" v-for="post in $store.bulletinPosts" :selectPost="selectPost" :bulletinPost="post" :key="post.BulletinPostID" />
    </div>
    <div v-if="!createNew" class="block border border-gray-400 rounded bg-gray-100 p-3 shadow-xl" style="width: 66%">
      <BulletinPost v-if="sPost" class="mb-2" :bulletinPost="sPost" :key="sPost.BulletinPostID" />
      <form @submit.prevent="addComment">
        <textarea v-model="newCommentText" type="text" class="p-1 block w-full border border-gray-400 rounded bg-white h-full" placeholder="Write comment here" />
        <button class="w-full bg-white mt-2 border border-gray-400 rounded p-1">Submit Comment</button>
      </form>
      <!--
      <form v-if="$store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID === 1" @submit.prevent="addBulletin">
        <textarea v-model="newPost" type="text" class="p-1 block w-full border border-gray-300 rounded" placeholder="New Bulletin Post" />
        <button class="w-full border border-gray-300 rounded">Submit Post</button>
      </form>
      -->
    </div>
    <div v-else class="block border border-gray-400 rounded bg-gray-100 p-3 shadow-xl" style="width: 66%">
      <form  @submit.prevent="addBulletin">
        <textarea v-model="newPost" type="text" class="p-1 block w-full border border-gray-400 rounded bg-white h-100" placeholder="New Bulletin Post" />
        <button class="w-full bg-white mt-2 border border-gray-400 rounded p-1">Submit Post</button>
      </form>
    </div>
  </div>
</template>

<script>
import BulletinPost from './Components/BulletinPost.vue'
import BulletinSummary from './Components/BulletinSummary.vue'
import axios from 'axios'

export default {
  name: 'BulletinPage',
  data() {
    return {
      newPost: '',
      selectedPost: 1,
      createNew: false,
      newCommentText: '',
    }
  },
  computed: {
    sPost() {
      return this.$store.bulletinPosts.find(b => b.BulletinPostID == this.selectedPost)
    }
  },
  components: {
    BulletinPost,
    BulletinSummary
  },
  methods: {
    addBulletin() {
      console.log('here', this.$store.user)
      axios.post('/bulletinPosts', { Text: this.newPost, Employeeid: this.$store.user.EmployeeID })
      .then(res => {
        this.$store.bulletinPosts.push(res.data[0])
      })
    },
    addComment() {
      axios.post('/bulletinComments', { Text: this.newCommentText, EmployeeID: this.$store.user.EmployeeID, BulletinPostID: this.selectedPost })
      .then(res => {
        this.$store.bulletinComments.push(res.data[0])
      })
    },
    selectPost(id) {
      this.selectedPost = id
    }
  }
}
</script>