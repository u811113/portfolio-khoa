<script setup>
import { ref, watch } from "vue";
import IndexPage from "../pages/IndexPage.vue";
import NavBar from "src/pages/NavBar.vue";
import AboutMe from "src/pages/AboutMe.vue";
import SkillSet from "src/pages/SkillSet.vue";
import MyExperience from "src/pages/MyExperience.vue";
import MyProject from "src/pages/MyProject.vue";
import MyConnect from "src/pages/MyConnect.vue";

const navVal = ref("");
</script>
<template>
  <div class="p-[20px]">
    <NavBar v-model:val="navVal" />
    <AboutMe />
    <MyExperience />
    <MyProject />
    <SkillSet />
    <MyConnect />
  </div>
</template>
