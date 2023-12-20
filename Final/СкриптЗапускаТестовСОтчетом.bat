@echo off
CHCP 65001
"C:\Program Files\1cv8\8.3.23.1865\bin\1cv8c" /N"Администратор" /TestManager /Execute "D:\1C\!VA\vanessa-automation\vanessa-automation.epf" /IBConnectionString "File=""D:\1C_\Platform8Demo"";" /C"StartFeaturePlayer;QuietInstallVanessaExt;VAParams=D:\GitHub\Test\Final\VAParams.json"
d:
cd D:\1C\!VA\allure-result
allure generate --clean D:\1C\!VA\allure-report && allure open