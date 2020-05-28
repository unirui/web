<template>
<div id="form">
	<form @submit.prevent="onSubmit">
      <label for="fio">Ф.И.О.</label>
      <input type="text" v-model="fio"  >
      <br>
      <label for="dataZP">Дата выдачи зарплаты</label>
      <input type="date" v-model="dataZP" >
      <br>
      <label for="days">Количество отработанных дней</label>
      <input type="text" v-model="days" >
      <br>
      <label for="size">Размер заработной платы</label>
      <input type="text" v-model="size"  >
  		<button type="submit">Добавить</button>
		<h5 v-if="notFilled">не все поля заполнены</h5>
		
	</form>
	
	</div>
</template>

<script>
export default {

	data() {
		return {
			fio: '',
			dataZP: '',
			days: '',
			size: '',
			sizeV: '',
			notFilled: false
		}
	},

	methods: {
		onSubmit() {
			if(this.fio.trim() && this.dataZP.trim() && this.days.trim() && this.size.trim()) {
				const newProduct = {
					id: Date.now(),
					fio: this.fio,
					dataZP: this.dataZP,
					days: this.days,
					size: this.size,
					sizeV: this.size-this.size*0.15
				}

				this.fio = '';
				this.dataZP = '';
				this.days = '';
				this.size = '';

				this.notFilled = false;

				this.$emit('addItem', newProduct)
			}
			else
				this.notFilled = true;}
	}

}
</script>

<style scoped>
	#form {
		margin: 20px auto;
  		max-width: 700px;
	}

	input {
  font-size: 15px;
  border: 1px double rgb(102, 97, 96) ;
  border-radius: 4px;
}

	button {
  font-size: 16px;
  background: silver;
  padding: 0.4rem 1.3rem;
  text-align: center;
  border: none;
  cursor: pointer;
  border-radius: 4px;
  margin: 10px;
}
	label {
		display: block;
  margin: 20px 0 10px;
	}
</style>