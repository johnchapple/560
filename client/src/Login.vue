<template>
  <div class="mx-auto w-full my-auto inline-block p-6 bg-gray-100 border border-gray-400 rounded">
    <label class="text-gray-800 text-xl mb-2 w-full" for="username">Username
      <input v-model="username"  class="w-full block rounded border-2 p-1" type="text" name="username" max="32" />
    </label>
    <label class="text-gray-800 text-xl w-full" for="password">Password
      <input v-model="password" class="w-full block rounded border-2 p-1" type="password" name="password" max="32" />
    </label>
    <button type="button" @click="login" class="w-full block mt-4 text-center text-xl bg-white hover:border-gray-500 border-2 border-gray-300 rounded p-2">
      Login
    </button>
    <p class="bg-red-100 mt-2 border-red-300 rounded border p-2 text-red-800" v-if="error.length">{{ error }}</p>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      username: '',
      password: '',
      error: '',
    }
  },
  methods: {
    login() {
      axios.post('/login', {username: this.username, password: this.password})
      .then(res => {
        this.$store.user = res.data
        this.$router.push('/bulletin')
      })
      .catch(res => {
        console.log(res)
        this.error = res.response.data.message
      })
    }
  }
}
</script>