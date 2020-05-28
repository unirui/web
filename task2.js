/*    Задача 2. Сделайте цепочку из трех промисов. Пусть первый промис возвращает число.
         Сделайте так, чтобы каждый последующий промис через 3 секунды возводил в квадрат результат предыдущего промиса.
         После окончания манипуляций выведите число алертом на экран.*/


var promise = new Promise((resolve, reject) => {
    setTimeout(() =>
        resolve(2), 3000);
});
promise.then(
    (result) =>
        new Promise((resolve, reject) =>
            setTimeout(() => {
                resolve(result * result);
            }, 3000)
        )
).then(
    (result) =>
        new Promise((resolve, reject) =>
            setTimeout(() => {
                resolve(result * result);
            }, 3000)
        )
).then(
    (result) =>
        alert('Задание 2: '+ result)
);
