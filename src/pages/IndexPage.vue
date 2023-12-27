<script setup>
const props = defineProps(["foo"]);
</script>
<template>
  <div class="text-red">{{ props.foo }}</div>
</template>
