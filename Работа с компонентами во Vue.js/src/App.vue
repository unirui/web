<template>
  <div id="app">
    <h1>Учет заработной платы сотрудников</h1>
    <hr>
    <h3>Заполните данные о сотруднике</h3>
    
    <AddItem
      @addItem="addItem"
    />

    <List 
      v-bind:items="items"
      @remove-item="removeItem"
    />

    <h3 v-if="items.length == 0">Список сотрудников</h3>


    <table class="table">
  <tbody>
    <tr>
      <td>Всего дней:{{ this.daysum }}</td>
      <td>Сумма всех заработных плат без налога:{{ this.sizesum }}</td>
      <td>Сумма всех заработных плат с налогом: {{ this.sizeVsum }}</td>
    </tr>
  </tbody>
</table>


  </div>
</template>

<script>
import AddItem from '@/components/workers.vue'
import List from '@/components/list.vue'

export default {
  name: 'App',

  data() {
    return {
      items: [],
      daysum: 0,
      sizesum: 0,
      sizeVsum:0
    }
  },

  components: {
    List, AddItem
  },

  methods: {
    addItem(newItem) {
      this.items.push(newItem)
      this.daysum += parseInt(newItem.days)
      this.sizesum += parseInt(newItem.size)
      this.sizeVsum += parseInt(newItem.sizeV)
    },

    removeItem(item) {
      this.items = this.items.filter(t => t.id !== item.id)
      this.daysum -= parseInt(item.days)
      this.sizesum -= parseInt(item.size)
      this.sizeVsum -= parseInt(item.sizeV)
    }
  }

}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
th {
  font-weight: normal;
  color: #039;
  padding: 10px 15px;
}
td {
  color: #669;
  border-top: 1px solid #e8edff;
  padding: 10px 15px;
}
tr:hover td {background: #e8edff;}
</style>
