﻿#language: ru

@tree

Функционал: Тестирование заказа покупателя 5.2

Как Тестировщик я хочу
проверить заполнение организации
чтобы выполнить практическое задание 2 модуля 5

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _05_З2_01 Подготовительный (проверка заказа покупателя)
	Когда экспорт основных данных

Сценарий: _05_З2_02 Тестирование заказа покупателя 5
	* Выбор партнера, с которым организация не будет заполнена
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
		И я нажимаю на кнопку 'Создать'
		И я нажимаю кнопку выбора у поля "Партнер"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'       |
			| '12'  | 'Розничный клиент 1' |
		И в таблице "List" я выбираю текущую строку
	* Проверка и дозаполнение организации
		Если элемент формы с именем "Company" стал равен '' Тогда
			И я нажимаю кнопку выбора у поля "Организация"
			И в таблице "List" я перехожу к строке:
				| 'Наименование'           |
				| 'Собственная компания 1' |
			И в таблице "List" я выбираю текущую строку
