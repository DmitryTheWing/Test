﻿#language: ru

@tree

Функционал: Проверка полей шапки заказа покупателя

Как Тестировщик я хочу
проверить работу полей шапки заказа покупателя
чтобы убедиться в корректной работе формы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _04_З1_01 Подготовительный (проверка заказа покупателя)
	Когда экспорт основных данных

Сценарий: _04_З1_02 Проверка полей шапки заказа покупателя
	* Выбор партнера с одним соглашением
		И я закрываю все окна клиентского приложения
		Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		И я нажимаю на кнопку 'Создать'
		И я нажимаю кнопку выбора у поля "Партнер"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'            |
			| 'Клиент 1 (1 соглашение)' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы с именем "LegalName" стал равен 'Клиент 1'
		Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'
		И элемент формы "Контрагент" доступен
	* Выбор партнера с несколькими соглашениями
		И я нажимаю кнопку выбора у поля "Партнер"
		И в таблице "List" я перехожу к строке:
			| 'Наименование'            |
			| 'Клиент 2 (2 соглашения)' |
		И в таблице "List" я выбираю текущую строку
		Тогда элемент формы с именем "LegalName" стал равен 'Клиент 2'
		Тогда элемент формы с именем "Agreement" стал равен ''
		И элемент формы "Контрагент" доступен
	* Проверка доступности поля Контрагент при пустом партнере
		И я нажимаю кнопку очистить у поля "Партнер"
		И элемент формы "Контрагент" не доступен
