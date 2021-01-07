<template>
  <div class="container">
    <div>
      <h1 class="title">playground-env</h1>
      <span>on</span>
      <h2>{{ env }}</h2>
      <hr />
      <a href="/next">Next with SSR</a>
      <span> / </span>
      <NuxtLink to="/next">Next with CSR</NuxtLink>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import { Context } from '@nuxt/types'

export default Vue.extend({
  data(ctx: Context) {
    return {
      env: ctx.$config.env,
    }
  },
})
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  color: #35495e;
  margin: 1em 0;
  letter-spacing: 1px;
}

hr {
  margin: 1em 0;
}
</style>
