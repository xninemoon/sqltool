@echo off

if '%1%'=='' (
    goto caseA_hsql
) else (
    goto caseA_%1
)

:caseA_hsql
    set DRIVER_CLASS=org.hsqldb.jdbcDriver
    goto caseA_end
:caseA_h2
    set DRIVER_CLASS=org.h2.Driver
    goto caseA_end
:caseA_mysql
    set DRIVER_CLASS=com.mysql.cj.jdbc.Driver
    goto caseA_end
:caseA_pgsql
    set DRIVER_CLASS=org.postgresql.Driver
    goto caseA_end
:caseA_end

echo DRIVER CLASS: %DRIVER_CLASS%
java -Djava.ext.dirs=%~dp0/libs/ -jar %~dp0/libs/sqltool.jar --driver %DRIVER_CLASS%

@echo on