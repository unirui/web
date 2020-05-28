/* Задача 4. Сделайте функцию getNum, которая возвращает промис, который с задержкой в 3 секунды выведет случайное число от 1 до 5.
       Создайте async функцию, которая с помощью await будет дожидаться результата getNum, 
       затем возводить его в квадрат и выводить на экран.*/


function generate(number) {
    return Math.floor(Math.random() * number);

}

function getNum() {
    return new Promise((resolve, reject) => {
        var rand = generate(5);
        setTimeout(() =>
            resolve(rand), 3000);

    });
};

async function F() {
    var result = await getNum();
    var result2 = result * result;
    console.log('Задание 4.');
    console.log('число: ' + result);
    console.log(result2);
};

F();
