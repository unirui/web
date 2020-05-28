<template>
  <div class="v-main-wrapper">
    <keep-alive>
      <router-view></router-view>
      <v-catalog />
    </keep-alive>
  </div>
</template>

<script>
import vCatalog from "@/components/v-catalog";
import { mapActions, mapGetters } from "vuex";
export default {
  name: "v-main-wrapper",
  components: {
    vCatalog
  },
  props: {},
  data() {
    return {};
  },
  computed: {},
  methods: {},
  watch: {}
};
</script>

<style>
.v-main-wrapper {
  margin: 0 auto;
}
</style>
