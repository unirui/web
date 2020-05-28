/* Задача 1. Сделайте функцию, которая будет генерировать случайные числа от 1 до 10.
         Сделайте так, чтобы сгенерированное число было задержкой функции setTimeout в секундах. 
         Оберните все это в промис.
          Пусть промис выполнится успешно, если сгенерировано число от 1 до 5, и с ошибкой - если от 6 до 10. */


function generate(number) {
    return Math.floor(Math.random() * number);

}

var promise = new Promise((resolve, reject) => {
    var rand = generate(10);
    setTimeout(() => {
        if (rand >= 1 && rand <= 5)
            resolve('result')
        else if (rand >= 6 && rand <= 10)
            reject('error');
    }, 3000);
    console.log('Задание 1.');
    console.log('число:' + rand);
});

promise.then(
    result => console.log('успех!'),
    error => console.log('неудача...')
);