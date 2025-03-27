<template>
  <!-- <Transition name="fade">
    <div v-if="props.show"
      class="z-10 mt-[90px] sm:mt-0 sm:ml-[96px] fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity min-h-full overflow-y-auto overflow-x-auto">
      <div class="bg-white bg-opacity-80">
        <ais-instant-search index-name="projects" :search-client="algolia">
          <div class="p-3 flex flex-col sm:flex-row gap-2">
            <input type="search" v-model="searchQuery" placeholder="Search projects..."
              class="rounded-md sm:flex-1 border-gray-300 shadow focus:border-indigo-500 focus:ring-indigo-500 text-lg p-4 sm:p-6" />
            <div class="flex flex-row sm:hidden gap-2">
              <button type="button"
                class="rounded-md flex-1 border border-transparent bg-gray-500 px-6 py-3 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                @click="clear()">Clear</button>
              <button type="button"
                class="rounded-md flex-1  border border-transparent bg-gray-600 px-6 py-3 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                @click="close()">Close</button>
            </div>
            <button type="button"
              class="hidden sm:inline-flex items-center rounded-md border border-transparent bg-gray-500 px-6 py-3 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
              @click="clear()">Clear</button>
            <button type="button"
              class="hidden sm:inline-flex items-center rounded-md border border-transparent bg-gray-600 px-6 py-3 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
              @click="close()">Close</button>
          </div>
          <Transition name="fade">
            <div v-if="result && searchQuery.length > 0 && hasResults" class="flex flex-col">
              <div v-for="hit in result.hits" class="flex flex-col">
                <nuxt-link :to="`${hit.themes[0]}/${hit.objectID.replace('.md', '')}`" class="hover:bg-gray-300"
                  @click="close()">
                  <div class="flex flex-col sm:flex-row gap-4 p-4">
                    <nuxt-img :src="hit.image" class="sm:max-w-[25%] h-auto object-contain" />
                    <div class="prose">
                      <h2>{{ hit.title }} <span v-for="project_type in hit.project_types"
                          class="text-xs font-medium text-gray-800">({{
                            project_type
                          }})</span></h2>
                      <p>{{ hit.description }}</p>
                      <div v-for="theme in hit.themes">
                        <span
                          class="items-center rounded-full bg-gray-100 px-2.5 py-0.5 text-sm font-medium text-gray-800">{{
                            theme
                          }}</span>
                      </div>
                      <nuxt-link :to="`${hit.themes[0]}/${hit.objectID.replace('.md', '')}`" class="underline"
                        @click="close()">Read
                        →</nuxt-link>
                    </div>
                  </div>
                </nuxt-link>
              </div>
              <p class="text-center text-sm text-gray-600 p-4" v-if="result">{{ result.hits.length }} results</p>
            </div>
          </Transition>
        </ais-instant-search>
      </div>
    </div>
  </Transition> -->
</template>

<script setup lang="ts">
// import debounce from 'lodash.debounce'
// import { emit } from 'process';
// import { AisInstantSearch } from 'vue-instantsearch/vue3/es/index.js'

// const algolia = useAlgoliaRef()

// const emit = defineEmits(['close'])

// const props = defineProps<{
//   show: boolean
// }>()

// const { result, search } = useAlgoliaSearch('projects')

// const searchQuery = ref('')
// const hasResults = ref(false)

// const clear = () => {
//   searchQuery.value = ''
// }

// const close = () => {
//   clear()
//   emit('close')
// }

// const update = debounce(async () => {
//   if (searchQuery.value && searchQuery.value.length > 3) {
//     await search({ indexName: 'projects', query: searchQuery.value })
//     hasResults.value = true
//   }
// }, 500)


// watch(searchQuery, () => {
//   if (searchQuery.value.length == 0) {
//     hasResults.value = false
//   }
//   update()
// })

// onMounted(async () => {
// })

</script>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>