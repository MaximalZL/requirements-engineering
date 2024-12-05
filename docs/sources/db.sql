-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/IOIpYS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Пользователи` (
    `ID` int  NOT NULL ,
    `Email` string  NOT NULL ,
    `Пароль` string  NOT NULL ,
    `Имя` string  NOT NULL ,
    `Фамилия` string  NULL ,
    `Отчество` string  NULL ,
    `Дата_рождения` Date  NULL ,
    `Пол` enum  NULL ,
    `Дата_регистрации` Date  NOT NULL ,
    `Фото` string  NULL ,
    -- Перечисление cтатусов профиля
    `Статус` profile_status  NOT NULL ,
    -- Перечисление ролей
    `Роль` role_enym  NOT NULL ,
    PRIMARY KEY (
        `ID`
    ),
    CONSTRAINT `uc_Пользователи_Email` UNIQUE (
        `Email`
    )
);

CREATE TABLE `Контакты` (
    `ID` int  NOT NULL ,
    `ID_пользователя` int  NOT NULL ,
    -- Перечисление ролей
    `Тип` contact_enym  NOT NULL ,
    `Контакт` string  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

CREATE TABLE `Питомцы` (
    `ID` int  NOT NULL ,
    `Имя` string  NOT NULL ,
    `Возраст` int  NOT NULL ,
    -- Перечисление пола питомцев
    `Пол` pet_gender_enym  NOT NULL ,
    `Фото` string  NULL ,
    `Порода` string  NULL ,
    -- Перечисление пород питомцев
    `Вид` pet_breed_enym  NOT NULL ,
    `ID_владельца` int  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

CREATE TABLE `Документы` (
    `ID` int  NOT NULL ,
    `Тип` string  NOT NULL ,
    `Дата_выдачи` Date  NOT NULL ,
    `Дата_окончания` Date  NULL ,
    `Описание` string  NOT NULL ,
    `Фото` string  NOT NULL ,
    `ID_питомца` int  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

CREATE TABLE `Объявления` (
    `ID` int  NOT NULL ,
    `ID_пользователя(Продавца)` int  NOT NULL ,
    `ID_питомца` int  NOT NULL ,
    `Описание` longtext  NULL ,
    `Цена` int  NOT NULL ,
    `Дата_создания` Date  NOT NULL ,
    `Дата_закрытия` Date  NULL ,
    -- Cтатус объявления о продаже
    `Статус` advertisement_status  NOT NULL ,
    -- Тип отметки на карте
    `Метка` MapType  NULL ,
    PRIMARY KEY (
        `ID`
    ),
    CONSTRAINT `uc_Объявления_ID_питомца` UNIQUE (
        `ID_питомца`
    )
);

CREATE TABLE `История сделок` (
    `ID` int  NOT NULL ,
    `ID_объявления` int  NOT NULL ,
    `ID_пользователя(Продавец)` int  NOT NULL ,
    `ID_пользователя(Покупатель)` int  NOT NULL ,
    `Дата_сделки` Date  NOT NULL ,
    `Сумма` int  NOT NULL ,
    `Способ_оплаты` string  NOT NULL ,
    -- Cтатус оплаты
    `Статус_сделки` payment_status  NOT NULL ,
    PRIMARY KEY (
        `ID`
    )
);

CREATE TABLE `Сообщения` (
    `ID` int  NOT NULL ,
    -- Пользователь, отправивший сообщение
    `ID_отправителя` int  NOT NULL ,
    -- Пользователь, получивший сообщение
    `ID_получателя` int  NOT NULL ,
    -- Содержимое сообщения
    `Текст` string  NOT NULL ,
    -- Дата и время отправки сообщения
    `Дата_отправки` DateTime  NOT NULL ,
    -- Перечисление статусов сообщения (например, "Прочитано", "Не прочитано")
    `Статус` message_status  NOT NULL ,
    -- (опционально) ID объявления, к которому относится сообщение
    `ID_объявления` int  NULL ,
    PRIMARY KEY (
        `ID`
    )
);

ALTER TABLE `Контакты` ADD CONSTRAINT `fk_Контакты_ID_пользователя` FOREIGN KEY(`ID_пользователя`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Питомцы` ADD CONSTRAINT `fk_Питомцы_ID_владельца` FOREIGN KEY(`ID_владельца`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Документы` ADD CONSTRAINT `fk_Документы_ID_питомца` FOREIGN KEY(`ID_питомца`)
REFERENCES `Питомцы` (`ID`);

ALTER TABLE `Объявления` ADD CONSTRAINT `fk_Объявления_ID_пользователя(Продавца)` FOREIGN KEY(`ID_пользователя(Продавца)`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Объявления` ADD CONSTRAINT `fk_Объявления_ID_питомца` FOREIGN KEY(`ID_питомца`)
REFERENCES `Питомцы` (`ID`);

ALTER TABLE `История сделок` ADD CONSTRAINT `fk_История сделок_ID_объявления` FOREIGN KEY(`ID_объявления`)
REFERENCES `Объявления` (`ID`);

ALTER TABLE `История сделок` ADD CONSTRAINT `fk_История сделок_ID_пользователя(Продавец)` FOREIGN KEY(`ID_пользователя(Продавец)`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `История сделок` ADD CONSTRAINT `fk_История сделок_ID_пользователя(Покупатель)` FOREIGN KEY(`ID_пользователя(Покупатель)`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Сообщения` ADD CONSTRAINT `fk_Сообщения_ID_отправителя` FOREIGN KEY(`ID_отправителя`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Сообщения` ADD CONSTRAINT `fk_Сообщения_ID_получателя` FOREIGN KEY(`ID_получателя`)
REFERENCES `Пользователи` (`ID`);

ALTER TABLE `Сообщения` ADD CONSTRAINT `fk_Сообщения_ID_объявления` FOREIGN KEY(`ID_объявления`)
REFERENCES `Объявления` (`ID`);

