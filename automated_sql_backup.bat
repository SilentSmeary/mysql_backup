@echo off

for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set datestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%

cd /d "C:\xampp\mysql\bin"

@REM Change the username and database and the change the path
mysqldump -u username database_name > "C:\Users\Administrator\Desktop\New folder\SQL\%datestamp%_backup.sql"

if %ERRORLEVEL% EQU 0 (
    echo Backup completed successfully.

    cd /d "C:\Users\Administrator\Desktop\New folder\SQL\"

    if not exist ".git" (
        git init
    )

    @REM Needs to be the path where the file is created
    git add "%datestamp%_backup.sql"

    @REM Commit message that is stored
    git commit -m "Automatic created on %datestamp%_backup.sql"

    @REM 
    git push https://github.com/... --force
) else (
    echo Backup failed.
)