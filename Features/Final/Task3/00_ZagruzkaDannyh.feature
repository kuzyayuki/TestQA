﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: загрузка данных для Расхода Товаров  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: загрузка основных данных

	// Справочник.Валюты

	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'False'           | '000000003' | 'EUR'          | 'евро'                       | 'евроцент'                    |

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 'False'           | '000000010' | 'Закупочная'   |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'           | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'  | 'Улица'        | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'    | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000012' | 'Мосхлеб ОАО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '456789' | 'Россия' | 'Москва' | 'Петровка'     | '12'  | '+7(999)234-78-64' | 'mh@hleb.ru'          | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'Поставка хлеба'           | 'Громышева П.Р.' | 55.762744 | 37.618102 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000016' | 'Магазин "Мясная лавка"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '235489' | 'Россия' | 'Москва' | 'Селезневская' | '10'  | '+7(999)256-99-33' | 'korovin@myasnoya.ru' | '+7(999)256-99-32' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Коровин С. П.'  | 55.78081  | 37.608828 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'             | ''                                                                   | ''       | ''       | ''       | ''             | ''    | ''                 | ''                    | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'             | ''                                                                   | ''       | ''       | ''       | ''             | ''    | ''                 | ''                    | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8e0a000d8843cd1b11de0ed853793994' | 'False'           | '000000005' | 'Строящийся склад'    | 'True'           |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'False'           | '000000001' | 'Малый'               | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'             | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'             | 'False'          |
	

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'     | '000000032' | 'Торт '        | 'Т78'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'Enum.ВидыТоваров.Товар' | ''         |            |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''         | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла' | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eb43bdcf26e' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | '000000012' | 'Торт '        | 'ValueStorage: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' | 'Торт.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

	// РегистрСведений.Характеристики

	И я проверяю или создаю для регистра сведений "Характеристики" записи:
		| 'Объект'                                                            | 'ВидХарактеристики'                                                                        | 'Номер' | 'Значение'                                                                         |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'e1cib/data/ПланВидовХарактеристик.ВидыХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008b' |         | 'e1cib/data/Справочник.ЗначенияХарактеристик?ref=8ca0000d8843cd1b11dc8d043d71008d' |

	// РегистрСведений.ЦеныТоваров

	И я проверяю или создаю для регистра сведений "ЦеныТоваров" записи:
		| 'Период'             | 'Товар'                                                             | 'ВидЦен'                                                             | 'Цена' |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | 150    |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 300    |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 250    |
		| '27.08.2019 0:00:00' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 200    |

Сценарий: создание документа Поступление товаров

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=abd05443c29b7b0311ef689525242912' | 'False'           | '000000040' | '01.09.2024 22:05:26' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bdc1aadc2' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=abd05443c29b7b0311ef689525242912' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eb360f70b4d' | 150    | 50           | 7500    |
