﻿#language: ru

@tree

Функционал: проверка отчета Остатка товаров

Как Тестировщик я хочу
проверить новый отчет Остатки
чтобы убедиться в его корректной работе   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _001 Подготовительный этап
	Когда Загрузка основных данных
	Когда Загрузка документа Поступления товара и Продажи
//	Дано Я открываю навигационную ссылку "e1cib/list/Документ.ПриходТовара"
//	И в таблице 'Список' я разворачиваю текущую строку
//	И в таблице 'Список' я перехожу к строке:
//		| "Номер"     |
//		| "000000039" |
//	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем 'Список'
//
//	Дано Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
//	И в таблице 'Список' я перехожу к строке:
//		| "Номер"     |
//		| "000000110" |
//	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюПровести' на элементе формы с именем 'Список'

	И я выполняю код встроенного языка на сервере
	| 'Документы.ПриходТовара.НайтиПоНомеру("000000039").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
	| 'Документы.РасходТовара.НайтиПоНомеру("000000110").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'   |
Сценарий: _002 Формирование отчета Остатки
	* Открытие отчета Остатков
		И В командном интерфейсе я выбираю "Товарные запасы" "Остатки товаров"
		И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице 'Список' я перехожу к строке:
			| "Код"       | "Наименование" |
			| "000000034" | "Veko876N"     |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'				
//		И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент6Использование'	
		Если флаг 'Разворот по складу' равен 'Нет' Тогда
			И я устанавливаю флаг 'Разворот по складу'	
	* Выбор Основного варианта отчета
		И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
		И в таблице 'СписокНастроек' я перехожу к строке: 
			| "Представление" |
			| "Основной"      |
		И в таблице 'СписокНастроек' я выбираю текущую строку
		И я нажимаю на кнопку с именем 'ФормаСформировать'
	* Проверка формирования отчета
		И я жду когда в табличном документе "Результат" заполнится ячейка "R6C2" в течение 20 секунд				
		Дано Табличный документ "Результат" равен макету "ОстаткиТоваров" по шаблону
				