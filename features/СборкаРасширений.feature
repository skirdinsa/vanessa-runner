# language: ru

Функционал: Сборка расширений конфигурации
    Как разработчик
    Я хочу иметь возможность собрать расширения конфигурации из исходников и подключить к нужной конфигурации
    Чтобы выполнять коллективную разработку проекта 1С

Контекст:
    Допустим я подготовил репозиторий и рабочий каталог проекта
    Допустим я подготовил рабочую базу проекта "./build/ib" по умолчанию 

    И Я копирую каталог "cfe" из каталога "tests/fixtures" проекта в рабочий каталог

Сценарий: Сборка одного расширения с явно заданной базой
    
    Допустим каталог "epf" не существует
    Когда Я выполняю команду "oscript" c параметрами "<КаталогПроекта>/src/main.os compileext cfe РасширениеНовое1 --ibname /F./build/ib"
    Тогда Я сообщаю вывод команды "oscript"
    Тогда Код возврата команды "oscript" равен 0
  
    Тогда Вывод команды "oscript" содержит
    """
        Список расширений конфигурации:
        РасширениеНовое1    
    """

# TODO Сценарий: Сборка каталога расширений с явно заданной базой
