#language: ru

@tree

Функционал: Проверка отображения возвратов в отчете по продажам

Как Тестировщик я хочу
проверить отчет
чтобы убедиться, что он работает корректно

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _04_З2_01 подготовительный (проверка возвратов)
	И я закрываю все окна клиентского приложения
	Когда экспорт основных данных
	Когда Экспорт документов заказов, продажи и возвратов
	И я выполняю код встроенного языка на сервере
		| 'Документы.SalesOrder.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
		| 'Документы.SalesInvoice.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |
		| 'Документы.SalesReturn.НайтиПоНомеру(1).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);' |

Сценарий: Проверка отображения возвратов в отчете по продажам
	* Открытие и настройка отчета
		И я закрываю все окна клиентского приложения
		Дано Я открываю навигационную ссылку "e1cib/app/Report.D2001_Sales"
		И я нажимаю на кнопку 'Изменить вариант...'
		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета' |
			| 'Таблица'          |
		И в таблице "SettingsComposerSettings" я устанавливаю флаг с именем 'SettingsComposerSettingsUse'
		И в таблице "SettingsComposerSettings" я завершаю редактирование строки
		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета' |
			| 'Период, месяц'    |
		И в таблице "SettingsComposerSettings" я устанавливаю флаг с именем 'SettingsComposerSettingsUse'
		И в таблице "SettingsComposerSettings" я завершаю редактирование строки
		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета' |
			| 'Номенклатура'     |
		И в таблице "SettingsComposerSettings" я устанавливаю флаг с именем 'SettingsComposerSettingsUse'
		И в таблице "SettingsComposerSettings" я завершаю редактирование строки
		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета' |
			| 'Характеристика'   |
		И в таблице "SettingsComposerSettings" я устанавливаю флаг с именем 'SettingsComposerSettingsUse'
		И в таблице "SettingsComposerSettings" я завершаю редактирование строки
		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета'   |
			| '<Детальные записи>' |
		И в таблице "SettingsComposerSettings" я устанавливаю флаг с именем 'SettingsComposerSettingsUse'
		И в таблице "SettingsComposerSettings" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsDataParameters" я перехожу к строке:
			| 'Параметр' |
			| 'Период'   |
		И в таблице "SettingsComposerSettingsDataParameters" я снимаю флаг 'Использование'
		И в таблице "SettingsComposerSettingsDataParameters" я завершаю редактирование строки

		И в таблице "SettingsComposerSettings" я перехожу к строке:
			| 'Структура отчета' |
			| 'Отчет'            |
		И я перехожу к закладке "Поля"

		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'                      |
			| 'Структурное подразделение' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'        |
			| 'Организация' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'   |
			| 'Валюты' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'                         |
			| 'Вид мультивалютной аналитики' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'         |
			| 'Период, день' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'   |
			| 'Инвойс' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'         |
			| 'Номенклатура' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'           |
			| 'Характеристика' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'          |
			| 'Период, месяц' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'        |
			| 'Регистратор' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'   |
			| 'Период' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'           |
			| 'Период, неделя' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'        |
			| 'Период, год' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'       |
			| 'Количество' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'  |
			| 'Сумма' |
		И в таблице "SettingsComposerSettingsSelection" я устанавливаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'              |
			| 'Сумма без налогов' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И в таблице "SettingsComposerSettingsSelection" я перехожу к строке:
			| 'Поле'         |
			| 'Сумма скидки' |
		И в таблице "SettingsComposerSettingsSelection" я снимаю флаг с именем 'SettingsComposerSettingsSelectionUse'
		И в таблице "SettingsComposerSettingsSelection" я завершаю редактирование строки
		И я нажимаю на кнопку 'Завершить редактирование'
		
	* Формирование отчета
		И я нажимаю на кнопку 'Сформировать'
		Тогда табличный документ "Result" содержит строки по шаблону:
			| 'Структурное подразделение' | 'Организация'            | 'Валюты' | 'Инвойс'                            | 'Регистратор'                          | 'Количество' | 'Сумма'    |
			| 'Товар с характеристиками'  | ''                       | ''       | ''                                  | ''                                     | '1,000'      | '200,00'   |
			| 'XS/Черный'                 | ''                       | ''       | ''                                  | ''                                     | '1,000'      | '200,00'   |
			| ''                          | 'Собственная компания 1' | 'USD'    | 'Реализация товаров и услуг 1 от *' | 'Реализация товаров и услуг 1 от *'    | '2,000'      | '400,00'   |
			| ''                          | 'Собственная компания 1' | 'USD'    | 'Реализация товаров и услуг 1 от *' | 'Возврат товаров от покупателя 1 от *' | '-1,000'     | '-200,00'  |
			| 'Товар без характеристик'   | ''                       | ''       | ''                                  | ''                                     | '4,000'      | '1 800,00' |
			| ''                          | 'Собственная компания 1' | 'USD'    | 'Реализация товаров и услуг 1 от *' | 'Реализация товаров и услуг 1 от *'    | '5,000'      | '2 250,00' |
			| ''                          | 'Собственная компания 1' | 'USD'    | 'Реализация товаров и услуг 1 от *' | 'Возврат товаров от покупателя 1 от *' | '-1,000'     | '-450,00'  |
				