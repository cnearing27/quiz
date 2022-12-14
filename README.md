# Викторина

Консольная викторина, написана на языке Ruby.

Цель игры - правильно ответить на как можно большее число вопросов.

Учебный проект, демонстрирующий навыки работы с чтением файлов в формате `.xml`.

## Установка и настройка

Склонируйте репозиторий:

    git@github.com:cnearing27/quiz.git

Перейдите в корень проекта

    cd quiz
    
Вы можете добавить свои вопросы в викторину: [инструкция](https://github.com/cnearing27/quiz#%D0%B4%D0%BE%D0%B1%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2%D0%BE%D0%BF%D1%80%D0%BE%D1%81%D0%BE%D0%B2)

Для начала викторины введите

    ruby main.rb
    
## Игровая механика

**Внимание!** Каждый вопрос имеет ограничение по времени для ответа. По истечении указанного времени игра завершится

Введите цифру 1-4, соответствующую выбранному варианту ответа и нажмите клавишу Enter

```
Мини-викторина. Ответьте на вопросы.

Сколько миллиметров в дециметре? - 1 б. (8 секунд на ответ)
1. 100
2. 1000
3. 10
4. 1
```

Сразу после ответа на вопрос Вы узнаете, верно ли вы ответили

    Верный ответ!
    
или

    Неправильно. Правильный ответ: 875

По окончании игровых вопросов или игрового времени, Вы увидите результат:

```
> Время на ответ вышло! Игра окончена
Правильных ответов: 1 из 6
Набрано баллов: 3
```

## Добавление вопросов

Для добавления вопросов в викторину, редактируйте файл `quiz.xml` внутри каталога `data`. В конце файла, внутри тега `quiz` добавьте свой вопрос по шаблону. Обратите внимание, что каждый вложенный элемент смещается от предыдущего вправо на два пробела (так, например, в шаблоне элемент `text` вложен в элемент `question`)

```
<question>
  <text>Тело вопроса</text>
  <right_answer>Правильный вариант ответа</right_answer>
  <wrong_answer>Неправильный вариант ответа</wrong_answer>
  <wrong_answer>Неправильный вариант ответа</wrong_answer>
  <wrong_answer>Неправильный вариант ответа</wrong_answer>
  <points>Число баллов за правильный ответ</points>
  <time>Время на ответ (в секундах)</time>
</question>
```
