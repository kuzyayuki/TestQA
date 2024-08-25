﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: загрузка тестовых данных для отчета Остатков  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка основных данных

	И я перезаполняю константу "УчетПоСкладам" значением "True"

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c63' | 'False'           | '000000001' | 'ООО "Все для дома"' | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"'       | 'True'         |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |


	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | 'False'           | '000000003' | 'Мелкооптовая' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | 'False'           | '000000001' | 'Розничная'    |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'              | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'           | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'    | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо'  | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca1000d8843cd1b11dc8ea92d97a74a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000016' | 'Магазин "Мясная лавка"'    | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '235489' | 'Россия' | 'Москва'          | 'Селезневская'     | '10'  | '+7(999)256-99-33' | 'korovin@myasnoya.ru' | '+7(999)256-99-32' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Коровин С. П.'   | 55.78081  | 37.608828 |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'Магазин "Продукты"'        | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Москва'          | 'Электрозаводская' | '21'  | '+7(999)568-45-96' | 'smirnov@product.ru'  | '+7(999)568-45-97' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Смирнов А. Г.'   | 55.786113 | 37.70331  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007d' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000015' | 'Магазин "Обувь"'           | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '356895' | 'Россия' | 'Москва'          | 'Маросейка'        | '2'   | '+7(999)256-56-14' | 'kolodkin@obuv.ru'    | '+7(999)256-56-10' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Колодкин И. В.'  | 55.757689 | 37.63277  |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000014' | 'Магазин "Бытовая техника"' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | '256452' | 'Россия' | 'Санкт-Петербург' | 'Фонтанка'         | '14'  | '+7(999)528-96-21' | 'techno@techno.ru'    | '+7(999)528-96-22' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                         | 'Мерзликин А. О.' | 59.934113 | 30.366475 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'                | ''                                                                   | ''       | ''       | ''                | ''                 | ''    | ''                 | ''                    | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000011' | 'ЭлектроБыт ЗАО'            | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | ''       | 'Россия' | 'Екатеринбург'    | 'Лесная'           | '12'  | '+7(999)623-568'   | 'mak@jmail.ru'        | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4224' | ''                         | 'Мякиниа С. Р.'   | 56.869649 | 60.547212 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000006' | 'Пантера АО'                | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | '2222'   | 'Польша' | 'Варшава'         | 'Czolowa'          | '2'   | '+7(999)890-987'   | 'ff@jmail.ru'         | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Ковальски А.Р.'  | 52.331154 | 20.989486 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'                | ''                                                                   | ''       | ''       | ''                | ''                 | ''    | ''                 | ''                    | ''                 | ''        | ''                                                                   | ''                         | ''                | ''        | ''        |


	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование'    |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'          |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4230' | 'False'           | '000000002' | 'Санкт-Петербург' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4231' | 'False'           | '000000003' | 'Урал'            |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8e8bd1cb82a6' | 'False'           | '000000006' | 'Польша'          |



	И я проверяю или создаю для справочника "Валюты" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4222' | 'False'           | '000000002' | 'USD'          | 'доллар США'                 | 'цент'                        |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4c9d5c4223' | 'False'           | '000000003' | 'EUR'          | 'евро'                       | 'евроцент'                    |


	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8b8bee7616e1' | 'False'           | '000000002' | 'Большой'             | 'False'          |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |


// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование'  | 'Артикул' | 'Поставщик'                                                              | 'ФайлКартинки'                                                             | 'Вид'                    | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'     | '000000034' | 'Veko876N'      | '876N'    | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc9110bafbeebf' | 'Enum.ВидыТоваров.Товар' | ''         |            |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'     | '000000031' | 'Босоножки'     | 'Bos0009' | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8e8bd1cb82a7' | 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6cd' | 'Enum.ВидыТоваров.Товар' | ''         |            |          |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db97442336eb55' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'True'      | '000000014' | 'Пылесосы'      | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''                                                                  | 'True'      | '000000001' | 'Обувь'         | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''         | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db9743e844ecac' | 'False'           | ''                                                                  | 'True'      | '000000012' | 'Электротовары' | ''        | ''                                                                       | ''                                                                         | ''                       | ''         | ''         | ''       |

	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'      | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca2000d8843cd1b11dc9110bafbeebf' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | '000000015' | 'Veko876N'     | 'ValueStorage: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' | 'Пылесос1.jpg'  | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=8ca1000d8843cd1b11dc8eacd471d6cd' | 'False'           | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | '000000009' | 'Босоножки'    | 'ValueStorage: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' | 'Босоножки.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

Сценарий: Загрузка документа Поступления товара и Продажи
	// Документ.ПриходТовара

	И я проверяю или создаю для документа "ПриходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Поставщик'                                                              | 'Склад'                                                             | 'Валюта'                                                            | 'Организация'                                                            |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca2000d8843cd1b11dc910e5100d881' | 'False'           | '000000039' | '22.06.2024 22:35:41' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=a9d700179a069b1011dc44ecea1d4f5b' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.ПриходТовара?ref=8ca2000d8843cd1b11dc910e5100d881' | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | 5000   | 100          | 500000  |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'               | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=abc05443c29b7b0311ef58f8fb4671af' | 'False'           | '000000110' | '13.08.2024 1:56:17' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d71007a' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4226' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=abc05443c29b7b0311ef58f8fb4671af' | 'e1cib/data/Справочник.Товары?ref=8ca2000d8843cd1b11dc910e5100d880' | 6000   | 2            | 12000   |

