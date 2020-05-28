/*Задача 3. Сделайте 3 промиса, в каждом из которых расположена функция setTimeout со случайно задержкой от 1 до 5 секунд.
        Пусть каждый промис своим результатом возвращает эту задержку.
        С помощью Promise.all получите массив результатов, найдите его сумму, выведите на экран. */


function generate(number) {
    return Math.floor(Math.random() * number);

}

var array = [

    //1
    promise = new Promise((resolve, reject) => {
        var rand = generate(5);
        setTimeout(() =>
            resolve(rand), rand * 1000);
    }),

    //2
    promise = new Promise((resolve, reject) => {
        var rand = generate(5);
        setTimeout(() =>
            resolve(rand), rand * 1000);
    }),

    //3
    promise = new Promise((resolve, reject) => {
        var rand = generate(5);
        setTimeout(() =>
            resolve(rand), rand * 1000);
    })];

Promise.all(array).then(
    result => console.log('Задание 3: ' +(result[0] + result[1] + result[2]))
);