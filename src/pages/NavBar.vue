<script setup>
import { onMounted, watch, ref } from "vue";
import { useRouter } from "vue-router";

const navBar = [
  "Home",
  "About",
  "Experiences",
  "Skillset",
  "Weather",
  "Contact",
];
const router = useRouter();

const props = defineProps(["val"]);
const emit = defineEmits(["update:val"]);

const scroll = ref();
const isScroll = ref(false);

watch(
  () => scroll.value,
  () => {
    if (scroll.value > 30) {
      isScroll.value = true;
    } else {
      isScroll.value = false;
    }
  }
);

onMounted(() => {
  window.addEventListener("scroll", () => {
    scroll.value = window.scrollY;
  });
  console.log(router.currentRoute.value.hash);
});
</script>
<template>
  <img
    class="absolute left-0 top-0 z-[1]"
    src="https://www.miraya.tech/assets/gradient-625d94e6.webp"
    alt=""
  />
  <div class="mb-[20px] flex justify-center h-[80px]">
    <div
      :class="
        isScroll &&
        ' bg-shadow-gray border-[1px] border-solid border-[#404040b5] text-white'
      "
      class="z-10 fixed backdrop-blur-[10px] flex justify-center w-7/8 rounded-[40px] md:w-3/4 lg:w-5/6 xl:w-5/8"
    >
      <q-btn
        v-for="item in navBar"
        :key="item"
        class="m-[5px] text-[10px] px-[5px] py-[5px] sm:text-[14px] md:text-[16px] lg:mx-[10px] lg:text-[18px] lg:px-[20px] lg:py-[8px]"
        :class="
          router.currentRoute.value.hash.replace('#', '') == item &&
          'bg-shadow-gray-cover'
        "
        flat
        rounded
        no-caps
        @click="emit('update:val', item)"
      >
        <router-link :to="`#${item}`">{{ item }}</router-link>
      </q-btn>
    </div>
  </div>
</template>
