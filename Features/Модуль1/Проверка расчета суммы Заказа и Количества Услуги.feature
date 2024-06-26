﻿#language: ru

@tree

Функционал: <описание фичи>

Как Администратор я хочу
создать документ Заказ
чтобы проверить корректность заполнения суммы заказа  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка суммы Заказа
* Создание документа Заказ
	И В командном интерфейсе я выбираю "Продажи" "Заказ"
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Розничная"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Строящийся склад"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
* Заполнение табличной части Товары
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000031" | "Босоножки"    |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
* Проверка расчеты суммы после ввода Количества	
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда таблица 'Товары' стала равной:
		| "Товар"     | "Цена"     | "Количество" | "Сумма"    |
		| "Босоножки" | "2 200,00" | "3"          | "6 600,00" |					
* Проверка расчета суммы при вводе Цены	
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "1 000,00"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда таблица 'Товары' стала равной:
		| "Товар"     | "Цена"     | "Количество" | "Сумма"    |
		| "Босоножки" | "1 000,00" | "3"          | "3 000,00" |		
* Проведение документа
	Когда открылось окно "Заказ (создание) *"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ (создание) *" в течение 20 секунд
		
Сценарий: Проверка ввода Количества Услуги в документе Заказ
* Создание документа Заказ
	И В командном интерфейсе я выбираю "Продажи" "Заказ"
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа	
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
	И из выпадающего списка с именем 'Валюта' я выбираю точное значение "Рубли"
* Выбор услуги в табличной части документа
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| 'Код'       | "Наименование" |
		| '000000037' | "Доставка"     |
* Заполнение поля Количество
//тест		
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ (создание) *"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в текущее поле я ввожу текст "2"
	И в таблице 'Товары' я завершаю редактирование строки
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ (создание) *" в течение 20 секунд
