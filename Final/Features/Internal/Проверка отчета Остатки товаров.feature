﻿#language: ru

@tree

Функционал: Проверка отчета Остатки товаров

Как Тестировщик я хочу
проверить работоспособность отчета Остатки товаров
чтобы убедиться в работоспособности нового функционала

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Ф2 Проверка отчета Остатки товаров
	* Предварительно
		И я закрываю все окна клиентского приложения
	* Открытие отчета
		И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
		И я нажимаю на кнопку с именем 'ФормаНастройкиОтчета'
		И я перехожу к закладке с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1"
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я перехожу к строке:
			| 'Использование' | 'Поле'  |
			| 'Да'            | 'Товар' |
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1ВыборИспользование'
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я завершаю редактирование строки
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я перехожу к строке:
			| 'Использование' | 'Поле'               |
			| 'Да'            | 'Количество Остаток' |
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1ВыборИспользование'
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я завершаю редактирование строки
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я перехожу к строке:
			| 'Использование' | 'Поле'      |
			| 'Да'            | 'Товар.Вес' |
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1ВыборИспользование'
		И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Выбор" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		Тогда табличный документ "Результат" содержит строки по шаблону:
			| 'Товар' | 'Вес' | 'Количество Остаток' |
			| 'Итого' | ''    | '*'                  |
	* Заключительно
		И я закрываю все окна клиентского приложения
