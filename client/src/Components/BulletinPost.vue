<template>
  <div>
    <div class="text-left bg-white border border-gray-400 rounded">
      <p class="flex p-2 mx-auto w-100 justify-between border-b-2 border-gray-400">
        {{ bulletinPost.Text }}
      </p>
      <p class="text-gray-700 p-2 flex justify-between">
        <span>posted by <strong>{{ $store.employees.find(e => bulletinPost.EmployeeID === e.EmployeeID).FirstName }}</strong> {{ distance(bulletinPost.Created) }}</span>
        <button @click="deleteBulletin()" v-if="$store.user.EmployeeID === bulletinPost.EmployeeID"><trash-icon /></button>
      </p>

    </div>
    <div class="flex p-2 mx-auto w-100 justify-between border-b-2 border-gray-400" v-for="comment in bulletinCommentsList" :key="comment.BulletinCommentID">
      <p>{{ comment.Text }}</p>
      <p>from {{ $store.employees.find(e => comment.EmployeeID == e.EmployeeID).FirstName }}</p>
    </div>
  </div>
</template>

<script>
import { TrashIcon } from 'vue-feather-icons'
import axios from 'axios'
import { formatDistance } from 'date-fns'

export default {
  name: 'BulletinPost',
  components: { TrashIcon },
  created() {
    console.log(this.$store.user.EmployeeID, this.bulletinPost.employeeId)
  },
  props: {
    bulletinPost: {
      type: Object,
      required: true,
    }
  },
  computed: {
    bulletinCommentsList() {
      return this.$store.bulletinComments.filter(c => c.BulletinPostID == this.bulletinPost.BulletinPostID)
    }
  },
  methods: {
    deleteBulletin() {
      console.log('1', this.bulletinPost)
      console.log('2', this.bulletinPost.BulletinPostID)
      axios.post('/deleteBulletinPosts', { BulletinPostID: this.bulletinPost.BulletinPostID})
        .then(() => {
          this.$store.bulletinPosts = this.$store.bulletinPosts.filter(p => p.BulletinPostID != this.bulletinPost.BulletinPostID)
        })
    },
    distance(date) {
      return formatDistance(new Date(date), new Date(), { addSuffix: true })
    }
  }
}
</script>