<template>
	<li>
		<span>

<table class="table">
  <thead>
    <tr>
      <th>Сотрудник номер</th>
      <th>Ф.И.О:</th>
      <th>Дата выдачи зарплаты:</th>
      <th>Отработанных дней:</th>
	  <th>Размер заработной платы без налогов:</th>
	  <th>Размер заработной платы с налогами:</th>
	  
    </tr>
  </thead>
  <tbody>
    <tr >
      <td>{{ index + 1 }}</td>
      <td>{{ newWorker.fio }}</td>
      <td>{{ newWorker.dataZP }}</td>
      <td>{{ newWorker.days }}</td>
	  <td>{{ newWorker.size }}</td>
	  <td>{{ newWorker.sizeV }}</td>
    </tr>
  </tbody>
</table>		
		</span>
		<button class="btn_remove" v-on:click="$emit('remove-item', newWorker)">Удалить</button>
	</li>
</template>

<script>
export default {
	props: {
		newWorker: {
			type: Object,
			required: true
		},

		index: Number
	}
}
</script>

<style scoped>
	li {
		border: 1px solid gray;
		display: flex;
		justify-content: right;
		padding: .5rem 2rem;
		margin-bottom: 1rem;
	}

	strong {
		padding-right: 0.5rem;
	}

	.btn_remove {
		font-size: 16px;
  	background: grey;
  	padding: 0.4rem 1.3rem;
  	text-align: center;
  	border: grey;
  	cursor: pointer;
  	border-radius: 4px;
  	margin: 10px;
	}

	

</style>