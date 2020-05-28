<template>
  <div class="v-catalog">
    <router-link :to="{ name: 'cart', params: { cart_data: CART } }">
      <div class="v-catalog__link_to_cart">Корзина: {{ CART.length }}</div>
    </router-link>
    <h1>Каталог товаров</h1>
    <div class="v-catalog__list">
      <v-catalog-item
        v-for="product in PRODUCTS"
        :key="product.article"
        :product_data="product"
        @addToCart="addToCart"
      />
    </div>
  </div>
</template>

<script>
import vCatalogItem from "./v-catalog-item";
import { mapActions, mapGetters } from "vuex";

export default {
  name: "v-catalog",
  components: {
    vCatalogItem,
  },
  props: {},
  data() {
    return {};
  },
  computed: {
    ...mapGetters(["PRODUCTS", "CART"]),
  },
  methods: {
    ...mapActions(["GET_PRODUCTS_FROM_API", "ADD_TO_CART"]),
    productClick(article) {
      this.$router.push({ name: "product", query: { product: article } });
    },

    addToCart(data) {
      this.ADD_TO_CART(data).then(() => {
        let timeStamp = Date.now().toLocaleString();
        this.messages.unshift({
          id: timeStamp,
        });
      });
    },
  },
  mounted() {
    this.GET_PRODUCTS_FROM_API().then((response) => {
      if (response.data) {
        this.sortByCategories();
        this.sortProductsBySearchValue(this.SEARCH_VALUE);
      }
    });
  },
};
</script>

<style lang="scss">
.v-catalog {
  &__list {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
  }

  &__link_to_cart {
    position: fixed;
    top: 80px;
    right: 10px;
    display: inline-block;
    padding: 0.5em 3em;
    border: 0.16em solid #d4a7a7;
    margin: 0 0.3em 0.3em 0;
    box-sizing: border-box;
    text-decoration: none;
    text-transform: uppercase;
    font-family: "Roboto", sans-serif;
    font-weight: 400;
    color: #332727;
    text-align: center;
    transition: all 0.15s;
    &:hover {
      color: #332727;
      border-color: #7c5959;
    }
  }
}
</style>
