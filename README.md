# Проект "My Pet"

## Описание проекта

...

# Список участников

- Зорин Максим\* (@LuckyMIX)
- Овчинников Илья (@dimseon)
- Гвоздев Вячеслав (@sw129)
- Пигута Болеслав (@NBW_MrColteR)
- Копышев Илья (@Asmn01)
- Рудяков Анатолий (@incriz)
- Будылястов Аким (@akimburderluster)
- Заркуа Георгий (@giopioo)

# План выполнения работ

|   **Статус**   | **Задача**                                                                        |
| :------------: | :-------------------------------------------------------------------------------- |
| **Итерация 1** |
|       ✅       | Разбиться на относительно большие команды                                         |
|       ✅       | Сформировать репозиторий                                                          |
|       ✅       | Сформировать readme.md                                                            |
|       ✅       | Клонировать проект локально                                                       |
|       ✅       | Выбрать лидера команды                                                            |
|       ✅       | Научиться работать с markdown                                                     |
|       ✅       | Реализовывать совместную работу                                                   |
|       ✅       | Выбрать тему проекта и подготовить презентацию                                    |
| **Итерация 2** |
|       ✅       | Определить назначение системы                                                     |
|       ✅       | Определить цели, преследуемые созданием системы(продукта)                         |
|       ✅       | Определить список заинтересованных сторон и их потребностей                       |
|       ✅       | Определить список внешних систем, с которыми может взаимодействовать наша система |
| **Итерация 3** |
|       ✅       | Посмотреть результаты предыдущих итераций, доработать замечания и дополнения      |
|       ✅       | Выделить явных прямых пользователей системы, сформировать список                  |
|       ✅       | Выделить (явно) список внешних систем, с которыми взаимодействует наша система    |
|       ✅       | Построить диаграммы вариантов использования                                       |
|       ✅       | Составить беклог в виде user story при необходимости                              |
|       ✅       | Составить список атрибутов качества, ограничений, бизнес-правил                   |
| **Итерация 4** |
|       ✅       | Составить ER-диаграмму                                                            |

# Заинтересованные лица

| **Наименование**       |                                                          **Описание**                                                          |
| :--------------------- | :----------------------------------------------------------------------------------------------------------------------------: |
| Владельцы без питомцев |                         Пользователи различных возрастов, которые хотят выложить пост о своем питомце                          |
| Владельцы с питомцами  |                              Пользователи различных возрастов, которые хотят найти своего питомца                              |
| Сотрудники             | Проверка и редактирование обьявлений, связывает коммерческие/некоммерческие организации с нашей организацией по поводу рекламы |

# Внешние системы

| **Тип системы**           | **Пример системы** |             **Описание**             |                             **Пример использования** |
| :------------------------ | :----------------: | :----------------------------------: | ---------------------------------------------------: |
| Системы геолокации        |    Яндекс карты    |  Отображают адрес продавца на карте  |                          Поиск объявлений поблизости |
|                           |     Google map     |                                      |                         Отображение на карте адресов |
| Платежные системы         |        Мир         |         Обрабатывают платежи         |                             Оплата товаров или услуг |
|                           |        СБП         |                                      |                                                      |
|                           |       PayPal       |                                      |                                                      |
|                           |      WebMoney      |                                      |                                                      |
| Системы для авторизации   |     ВКонтакте      | Предоставляют данные для авторизации |                   Вход или регистрация через аккаунт |
|                           |       Google       |                                      |      Ссылки в профиле на привязанные социальные сети |
|                           |       Яндекс       |                                      |                                                      |
| Системы электронной почты |    Яндекс Почта    | Отправляют уведомления пользователям | Отправка уведомлений о новых сообщениях или событиях |
|                           |      Mail RU       |                                      |                                                      |
|                           |       Gmail        |                                      |                                                      |
| Рекламные системы         |   Google AdSense   |     Позволяют размещать рекламу      |              Монетизация сайта через рекламные блоки |
|                           |   Яндекс Директ    |                                      |                                                      |

# Use Cases

![use_cases](/docs/img/use_cases.png)

# User Stories

## Как не авторизированный пользователь я хочу:

1. Создавать учетную запись в приложении MyPets.
2. Просматривать объявления в приложении MyPets.
3. Просматривать профили продавцов в приложении MyPets.

## Как авторизированный пользователь я хочу:

1. Просматривать объявления о продажи животных в приложении MyPets.
2. Редактировать мой профиль в приложении MyPets.
3. Удалить мой профиль в приложении MyPets.
4. Просматривать профили продавцов в приложении MyPets.
5. Видеть историю сделок продавца.
6. Создавать объявление о продажи животных.
7. Добавлять в объявление о продажи медицинские документы.
8. Закрывать объявления о продажи животных.
9. Добавлять понравившееся объявление в избранное.

## Как администратор я хочу:

1. Просматривать объявления о продажи животных в приложении MyPets.
2. Просматривать профили продавцов.
3. Удалять неактуальные объявления о продажи животных в приложении MyPets.
4. Блокировать профили в приложении MyPets.

# Атрибуты качества

| **Атрибут качества**   |                              **Требование к системе**                              |
| :--------------------- | :--------------------------------------------------------------------------------: |
| Надежность             |            Обеспечение стабильной работы приложения без сбоев и ошибок             |
| Удобство использования | Способность приложения эффективно обрабатывать запросы и обеспечивать отзывчивость |
| Безопасность           |   Защита конфиденциальности данных и предотвращение несанкционированного доступа   |
| Производительность     |       Создание интуитивно понятного и удобного интерфейса для пользователей        |
| Сопровождаемость       |                 Легкость поддержки, обновлений и устранения ошибок                 |

# Атрибуты ограничений

| **Атрибут ограничений** |                         **Требования к системе**                         |
| :---------------------- | :----------------------------------------------------------------------: |
| Бюждет                  | Ограничения по финансовым ресурсам для разработки и поддержки приложения |
| Временные рамки         | Сроки, в которые необходимо завершить разработку и выпустить приложение  |
| Ограничения знаний      |                        У разработчиков мало опыта                        |

# Бизнес-правила

| **Бизнес-правило**                                                     |                                                                                                               **Требования к системе**                                                                                                               |
| :--------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: |
| Обеспечить надежность работы приложения в любых условиях.              |                       Разработать систему мониторинга производительности и доступности приложения, реализовать механизмы резервного копирования данных, проводить регулярные тесты на прочность и отказоустойчивость системы.                        |
| Поддерживать высокий уровень удобства использования для пользователей. | Реализовать простой и интуитивно понятный интерфейс приложения, обеспечивать быструю загрузку, минимизировать количество кликов для осуществления действий, проводить тестирование пользовательского опыта и учитывать обратную связь пользователей. |

<details>

<summary> # Дополнительные материалы </summary>

- [Презентация - 2 итерация](https://docs.google.com/presentation/d/1CKpK3zMH-2JOCmEP2eT4igdKhnbb5PSI/edit#slide=id.p1)
- [Презентация - 3 итерация](https://docs.google.com/presentation/d/1anC2PfXsj7O7-wJt82ZYhmWUuNbMYA4IsOIIubu5-Js/edit#slide=id.p1)

</details>

# ER-diagram

![ER diagram](/docs/img/ERdiagram.png)
