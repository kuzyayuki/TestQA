﻿#language: ru

@tree

Функционал: создание и запись документа РасходТовара

Как Тестировщик я хочу
проверить заполнение и сохранение нового документа продажи
чтобы убедиться в отсутствии ошибок 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _011 подготовительный сценарий
	Когда загрузка основных данных
	Когда создание документа Поступление товаров
Сценарий: _012 создание и сохранение документа Расход товара
	И я закрываю все окна клиентского приложения
* Открытие формы для добаления документа
	И В командном интерфейсе я выбираю "Продажи" "Продажи"
	Тогда открылось окно "Продажи товара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'	
* Заполнение шапки документа
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Товары"'
	И я нажимаю кнопку выбора у поля с именем 'Покупатель'
	И в таблице 'Список' я перехожу к строке:
		| "Наименование"       |
		| 'Магазин "Продукты"' |
	И в таблице 'Список' я выбираю текущую строку

	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"	
* Заполнение табличной части документа
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	И в таблице 'Список' я перехожу к строке:
		| "Наименование" |
		| "Торт "        |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3,00"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка заполнения табличной части
	Тогда таблица 'Товары' стала равной:
		| "Товар" | "Цена"   | "Количество" | "Сумма"  |
		| "Торт " | "200,00" | "3,00"       | "600,00" |
* Сохранение документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем 'Номер' как '$$Номер$$'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер'     |
		| '$$Номер$$' |