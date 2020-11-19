<template>
  <div class="mx-auto w-full my-auto inline-block p-6 bg-gray-100 border border-gray-400 rounded">
     <label class="text-gray-800 text-xl w-full" for="password">First Name
      <input v-model="firstname" class="w-full block rounded border-2 p-1" type="text" name="firstName" max="32" />
    </label>
     <label class="text-gray-800 text-xl w-full" for="password">Last Name
      <input v-model="lastname" class="w-full block rounded border-2 p-1" type="text" name="lastName" max="32" />
    </label>
    <label class="text-gray-800 text-xl mb-2 w-full" for="username">Username
      <input v-model="username" class="w-full block rounded border-2 p-1" type="text" name="username" max="32" />
    </label>
    <label class="text-gray-800 text-xl w-full" for="password">Password
      <input v-model="password" class="w-full block rounded border-2 p-1" type="password" name="password" max="32" />
    </label>
     <label class="text-gray-800 text-xl w-full" for="password">Email
      <input v-model="email" class="w-full block rounded border-2 p-1" type="email" name="email" max="32" />
    </label>
     <label class="text-gray-800 text-xl w-full" for="password">Phone Number
      <input v-model="phoneNumber" class="w-full block rounded border-2 p-1" type="text" name="phonenumber" max="32" />
    </label>
<!--      <label class="text-gray-800 text-xl w-full" for="password">Role (Check box if you are a manager)
       <input type="radio" name="role" value="yes"> Manager
    </label> -->
    <button type="button" @click="signup" class="w-full block mt-4 text-center text-xl bg-white hover:border-gray-500 border-2 border-gray-300 rounded p-2">
      Signup
    </button>
    <p class="bg-red-100 mt-2 border-red-300 rounded border p-2 text-red-800" v-if="error.length">{{ error }}</p>

  </div>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      firstname: '',
      lastname: '',
      username: '',
      password: '',
      email: '',
      phoneNumber: '',
      error: ''
    }
  },
  methods: {
    signup() {
      axios.post('/signup', {firstname: this.firstname, lastname: this.lastname, username: this.username, password: this.password, email: this.email, phoneNumber: this.phoneNumber})
      .then(res => {
        this.$store.user = res.data
        this.$router.push('/bulletin') //go to login after signing up. To login with new credentials.
      })
      .catch(res => {
        console.log(res)
        this.error = res.response.data.message
      })
    }
  }
}
</script>