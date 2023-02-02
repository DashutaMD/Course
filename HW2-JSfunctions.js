// 1) Сделать функцию которая при вызове напишет в консоль сумму 2-х переданных в неё чисел
function f1(p1,p2){
    let sum_p1_p2 = p1 + p2
    console.log("Sum of numbers = ", sum_p1_p2)
}
f1(2,105);

// 2) Сделать функцию которая вернёт в консоль квадрат переданного числа
function f2(p1){
    let Square_p1 = p1 * p1
    console.log("Square of number = ", Square_p1)
}
f2(8);

// 3) Сделать функцию. На вход принимет 3 параметра (Ф,И,О). Вернёт JSON {"name":И, "surname":Ф, "middlename":О}
function f3(name,surname,middlename){

    console.log(JSON.stringify({name,surname,middlename}))

    }
f3("Darya", "Mikhalevich", "Mikhailovna")

// 4) вывести в консоль переменную-массив в которой будут все чётные числа. Переменную возвращяет функция которая на вход принимает массив чисел. Если чётных чисел не нашлось, то функция вернёт текст "No even numbers"

function even(arr, func) {
    let result = [];
  
    for (let i = 0; i < arr.length; i++) {
      let val = arr[i];
      if (func(val)) {
        result.push(val);
      }
    }
  
    return result;
  }
  
  let arr = [1,7,4,18,5,2,99,100];
  
  console.log(even(arr, function(a) {
    return a % 2 == 0;}));



// 5) Сделать функцию которая вернёт количество букв 'a' в переданном в неё слове. Алфавит Eng. Если нету букв 'а', то вернтуть текст "No a characters".

function f4(word){
    let a = word.match(/a/gi)
            if (a != null)
            {console.log(a.length)}
            else(console.log("No a characters"))
}
f4("Darya")

//6) Написать функцию которая выдаст список тестов для переданного в неё web-ui элемента
//Элементы: Phone number field, CheckBox, SignIn Button.

function f6(element) {
  switch (element) {
    case "Phone number field":
      return [
        "Check if field accepts only numbers",
        "Check if field accepts correct number of digits",
        "Check if field accepts international format"
      ];
    case "CheckBox":
      return [
        "Check if checkbox is selectable",
        "Check if checkbox is deselectable",
        "Check if checkbox state is saved after page refresh"
      ];
    case "SignIn Button":
      return [
        "Check if button is clickable",
        "Check if button redirects to correct page",
        "Check if button is disabled when form is not filled correctly"
      ];
    default:
      return "Invalid element";
  }
}

console.log(f6("Phone number field"));
console.log(f6("CheckBox"));
console.log(f6("SignIn Button"));

//7) Написать функцию которая на вход получает JSON а возвращяет XML
function f7(json_obj) {
  let xml = '<root>';
  for(let key in json_obj) {
      if(json_obj.hasOwnProperty(key)) {
          xml += '<' + key + '>' + json_obj[key] + '</' + key + '>';
      }
  }
  xml += '</root>';
  return xml;
}

let json_to_xml = f7({
  name: 'Dasha',
  surname: 'Mikhalevich',
  city: 'Minsk'
});
console.log(json_to_xml);