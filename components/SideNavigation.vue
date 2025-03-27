<template>
  <div>
    <nav class="side-menu top-0 h-screen fixed ease-in-out duration-300 z-30 flex flex-col sm:flex-row justify-between"
      :class="isOpen ? 'open' : 'close'">
      <div class="flex flex-col grow justify-center">
        <ul class="px-12 sm:px-20 my-3 text-center flex flex-col gap-6 sm:gap-6 sm:my-5 sm:text-left w-full">
          <nuxt-link to="/" @click.native="isOpen = false">
            <li class="text-4xl underline font-link sm:text-4xl">Home</li>
          </nuxt-link>
          <nuxt-link to="/about" @click.native="isOpen = false">
            <li class="text-4xl underline font-link sm:text-4xl">About</li>
          </nuxt-link>
          <!-- <li class="text-4xl underline font-link sm:text-4xl cursor-pointer"
            @click="[showSearch = !showSearch, isOpen = false]">
            Search</li> -->
        </ul>
      </div>
      <!-- side items -->
      <div
        class="flex w-full flex-row pl-5 sm:pl-0 sm:flex-col sm:w-24 sm:justify-start items-center justify-between border-b-slate-800 border-b-2 sm:border-b-0 sm:border-r-slate-800 sm:border-r-4 sm:border-l-slate-600 sm:border-l-2">
        <!-- hamburger -->
        <div class="m-8 sm:mt-8 order-last sm:order-first cursor-pointer" v-on:click="isOpen = !isOpen">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:cursor-pointer" fill="none" viewBox="0 0 24 24"
            stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </div>
        <!-- title -->
        <nuxt-link to="/" class="rotated-header ml-16 sm:ml-0 text-lg sm:text-2xl font-link">
          Not-Equal Archive
        </nuxt-link>
        <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" @click="showSearch = !showSearch"
          class="w-7 sm:w-10 bottom-8 absolute hover:text-indigo-800 cursor-pointer">
          <path fill="currentColor"
            d="M15.5 14h-.79l-.28-.27a6.5 6.5 0 0 0 1.48-5.34c-.47-2.78-2.79-5-5.59-5.34a6.505 6.505 0 0 0-7.27 7.27c.34 2.8 2.56 5.12 5.34 5.59a6.5 6.5 0 0 0 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0c.41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5S14 7.01 14 9.5S11.99 14 9.5 14z">
          </path>
        </svg> -->
      </div>
    </nav>
    <!-- <div class="mt-[90px] sm:mt-0 sm:ml-[96px] flex w-full">
      
    </div> -->
    <search-overlay :show="showSearch" @close="showSearch = false" />
  </div>
</template>

<script script="ts" setup>
const isOpen = ref(false)

const showSearch = ref(false)
const close = () => {
  showSearch.value = false
}
</script>

<style scoped>
.side-menu {
  background-color: #e1e1e1;
  background-image: url("~/assets/images/cardboard.png");
}

/* screen */
@media screen and (min-width: 650px) {
  .open {
    transform: translateY(0, 0);
    box-shadow: 0 0 25px rgba(0, 0, 0, 0.5);
    clip-path: inset(0px -60px 0px 0px);
  }

  .close {
    transform: translateX(calc(-100% + 96px));
  }
}

/* mobile */
@media (max-width: 649px) {
  .open {
    transform: translateY(0, 0);
    width: 100%;
  }

  .close {
    transform: translateY(calc(-100% + 90px));
    width: 100%;
  }
}
</style>
