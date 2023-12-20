﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение документа Расход товара тестовыми данными

Сценарий: Заполнение документа Расход товара тестовыми данными
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	// У продавца нет выпадающего списка
	//И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'              |
		| '000000014' | 'Магазин "Бытовая техника"' |
	И в таблице "Список" я выбираю текущую строку
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
	И я активизирую дополнение формы с именем "Дополнение1"
	И в дополнение формы с именем "Дополнение1" я ввожу текст 'торт'
	И я перехожу к следующему реквизиту
	// Почему-то иногда недостаточно просто выбрать текущую...
	И в таблице "СписокТоваров" я перехожу к строке
		| 'Наименование'                   |
		| '<b><colorstyle -46>Торт</></> ' |
	И в таблице "СписокТоваров" я выбираю текущую строку
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,00'
	И в таблице "Товары" я завершаю редактирование строки
	И я активизирую дополнение формы с именем "Дополнение1"
	И в дополнение формы с именем "Дополнение1" я ввожу текст 'молоко'
	И я перехожу к следующему реквизиту
	И в таблице "СписокТоваров" я выбираю текущую строку
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3,00'
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ОК'
