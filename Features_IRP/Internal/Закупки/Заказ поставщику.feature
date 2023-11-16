﻿#language: ru

@tree

Функционал: Заказ поставщику

Как Менеджер по закупкам я хочу
зафиксировать заказанный поставщику товар
чтобы проанализировать разницу между тем, что былоа заказано, и тем, что было фактически доставлено

Контекст:
	Дано Я открыл новый сеанс TesnClient или подключил уже существующий

Сценарий: _0401 подготовительный сценарий (заказ поставщику)
	Когда экспорт основных данных

Сценарий: _0402 проверка заполнения цены из соглащения
	* Заполнение документа заказ поставщику
		Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
		И я нажимаю на кнопку с именем 'FormCreate'
		И я нажимаю кнопку выбора у поля "Партнер"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'               |
			| 'Поставщик 1 (1 соглашение)' |
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
		И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
		И в таблице "ItemList" я активизирую поле "Номенклатура"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Номенклатура"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'            | 'Ссылка'                  |
			| '2'   | 'Товар без характеристик' | 'Товар без характеристик' |
		И в таблице "List" я активизирую поле "Наименование"
		И в таблице "List" я выбираю текущую строку
		И в таблице "ItemList" я завершаю редактирование строки
	* Проверка заполнения цены из соглашения
		Тогда таблица "ItemList" стала равной:
			| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Ед. изм.' | 'Вид цены'          | 'Цена'   |
			| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'шт'       | 'Цена поставщика 1' | '150,00' |
	* Изменение вида цен и проверка его перезаполнения при выборе соглашения
		И в таблице "ItemList" я выбираю текущую строку
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Вид цены"
		И в таблице "List" я перехожу к строке:
			| 'Валюта' | 'Код' | 'Наименование'      | 'Ссылка'            |
			| 'USD'    | '4'   | 'Цена поставщика 2' | 'Цена поставщика 2' |
		И в таблице "List" я выбираю текущую строку
		Тогда таблица "ItemList" содержит строки:
			| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Ед. изм.' | 'Вид цены'          | 'Цена' |
			| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'шт'       | 'Цена поставщика 2' | ''     |
		И я нажимаю кнопку выбора у поля "Соглашение"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'               |
			| 'Соглашение с поставщиком 1' |
		И в таблице "List" я выбираю текущую строку
		Тогда открылось окно 'Табличная часть товаров будет обновлена'
		И я нажимаю на кнопку 'ОК'
		Тогда таблица "ItemList" стала равной:
			| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Ед. изм.' | 'Вид цены'          | 'Цена'   |
			| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'шт'       | 'Цена поставщика 1' | '150,00' |
		И я закрываю все окна клиентского приложения

//Сценарий: тест
//	И я закрыл все окна клиентского приложения
//	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
//	И я нажимаю на кнопку с именем 'FormCreate'
//	И я нажимаю кнопку выбора у поля "Партнер"
//	И в таблице "List" я перехожу к строке:
//			| 'Наименование'               |
//			| 'Поставщик 1 (1 соглашение)' |
//	И в таблице "List" я выбираю текущую строку
//	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
//	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
//	И я нажимаю сочетание клавиш "Enter"
//	И в таблице "ItemList" из выпадающего списка "Номенклатура" я выбираю по строке 'товар без характеристик'
//	И я нажимаю сочетание клавиш "F9"
//	И в таблице "ItemList" я перехожу к следующей ячейке
//	И в таблице "ItemList" я устанавливаю флаг "Отмена"
//	И Проверяю шаги на Исключение:
//			|'И в таблице "ItemList" я нажимаю кнопку выбора у реквизита "Номенклатура"'|
//	Тогда таблица "ItemList" содержит строки:
//		| 'Сумма без налогов' | 'Сумма скидки' | 'N' | 'Номенклатура'            | 'Не рассчитывать строки' | 'Характеристика'          | 'Сумма налогов' | 'Серии номенклатуры' | 'Количество' | 'Заказ поставщику'                          | 'Ед. изм.' | 'НДС' | 'Заказ покупателя' | 'Общая сумма' | 'Дата выполнения' | 'Склад'                         | 'Вид цены'          | 'Статья расходов' | 'Центр прибыли/убытков' | 'Цена'   | 'Дополнительная аналитика' | 'Заявка на обеспечение товара' | 'Используется приходная товарная накладная' | 'Комментарий' |
//		| '125,00'            | ''             | '1' | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '25,00'         | ''                   | '1,000'      | 'Заказ поставщику 1 от 03.11.2023 15:39:46' | 'шт'       | '20%' | ''                 | '150,00'      | ''                | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                         | ''                             | 'Да'                                        | ''            |
//		| '250,00'            | ''             | '2' | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '50,00'         | ''                   | '2,000'      | 'Заказ поставщику 1 от 03.11.2023 15:39:46' | 'шт'       | '20%' | ''                 | '300,00'      | ''                | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                         | ''                             | 'Да'                                        | ''            |
//	Тогда в таблице "ItemList" количество строк "равно" 2
//	И в таблице "ItemList" я активизирую поле "Количество"
//	И в таблице "ItemList" я нажимаю на кнопку 'Сортировать по убыванию'
//	И в таблице "List" текущего окна я устанавливаю сортировку по колонке "Partner" по возрастанию (расширение)
//	И таблица "List" содержит строки из макета "Макет" по шаблону
