# JSP-Janiak-Hamczyk
README

JSP_Projekt

1. Aby Web Servis działał poprawnie należy, przede wszystkim skonfigurować połączenie do bazy HSQLDB.
   W projekcie została użyta wersja bazy danych HSQLDB w wersjii 2.3.2
   Można ją pobrać ze strony:
   http://sourceforge.net/projects/hsqldb/files/hsqldb/hsqldb_2_3/

2. Po pobraniu należy rozpakować zawartosć folderu do dowolnej lokacji, a następnie uruchomić serwer
   dwukrotnie klikając na plik wsadowy w lokalizacji:
   "lokalizacja w krórej wypakujemy zawartosć hsqldb-232.zip"\hsqldb-2.3.2\hsqldb\bin\runServer.bat

3. Gdy mamy już uruchomiony serwer należy zaimportować projekt do środowiska ECLIPSE.
   Aby wprowadzić dane testowe zaleca sie przełączenie perspektywy widoku na Database DEvelopment
   Następnie stworzenie nowego połączenia do bazy danych z kreatora wybieramy bazę danych HSQLDB
   W następnym kroku musimy zdefiniować sterownik JDBC do bazy danych. Znajduje się on w katalogu lib
   "lokalizacja w krórej wypakujemy zawartosć hsqldb-232.zip"\hsqldb-2.3.2\hsqldb\lib\hsqlbd.jar

4. W zakładce general należy podać odpowiednie wartości:
   Database: SAMPLE
   Database location: MyDB
   User name: sa
   Password: 

   W tym kroku możemy sprawdzić czy połączenie zostało poprawnie skonfigurowane przyciskiem Test Connection
   Po poprawnym teście ping można zakończyć Tworzenie połączenia do bazy danych.

5. Następnie należy zasilić bazę danych próbką danych testowych.
   Kliknięcie prawym przyciskiem myszy na nazwie połaczenia do bazy danych oraz kliknięcie opcji OPEN SQL Scrapbook
   Następnym krokiem będzie przekopiowanie zawartości pliku "InsertyDB" umieszczonego w projekcie.
   
   Należy pamiętać o wyborze Opcji w Connection profile w SQL Scrapbook
   Name: HSQLDB
   Database: PUBLIC
   Type: HSQLDB_1.8

6. Po zasileniu bazy danych można zmienić perspektywę i uruchomić projekt za pomocą polecenia Run On Server


