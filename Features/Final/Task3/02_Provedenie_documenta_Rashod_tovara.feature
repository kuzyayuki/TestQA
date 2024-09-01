﻿#language: ru

@tree

Функционал: проведение документа РасходТовара

Как Тестировщик я хочу
проверить движения документа Расхода товаров
чтобы убедиться в корректности движений по регистрам  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _021 проведение документа РасходТовара
	* Проведение документа Расход товара
		Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
		И в таблице "Список" я перехожу к строке
		| 'Номер'     |
		| '$$Номер$$' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно "Продажа * от *"
		И я нажимаю на кнопку с именем 'ФормаПровести'

	* Проводки по регистрам	
		И В текущем окне я нажимаю кнопку командного интерфейса "Регистр взаиморасчетов с контрагентами"
		Тогда таблица 'Список' стала равной:
			| "Номер строки" | "Контрагент"         | "Сумма"  | "Валюта" |
			| "1"            | 'Магазин "Продукты"' | "600,00" | "Рубли"  |
				
		И В текущем окне я нажимаю кнопку командного интерфейса "Регистр продаж"
		Тогда таблица 'Список' стала равной:
			| "Номер строки" | "Покупатель"         | "Товар" | "Количество" | "Сумма"  |
			| "1"            | 'Магазин "Продукты"' | "Торт " | "3,00"       | "600,00" |
				
		И В текущем окне я нажимаю кнопку командного интерфейса "Регистр товарных запасов"
		Тогда таблица 'Список' стала равной:
			| "Номер строки" | "Товар" | "Склад" | "Количество" |
			| "1"            | "Торт " | "Малый" | "3,00"       |
								
Сценарий: _022 формирование печатной формы
	*Открытие формы документа
		Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
		И в таблице "Список" я перехожу к строке
		| 'Номер'     |
		| '$$Номер$$' |
		И в таблице "Список" я выбираю текущую строку
	*Формирование отчета	
		И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R11C2"

		
