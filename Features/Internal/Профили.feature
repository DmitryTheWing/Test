﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И я подключаю профиль TestClient "Менеджер по закупкам"
И я подключаю TestClient "Менеджер по продажам" логин "Менеджер по продажам" пароль ""
И я закрываю сеанс текущего клиента тестирования
