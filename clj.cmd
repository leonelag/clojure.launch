@echo off

setLocal EnableExtensions EnableDelayedExpansion

::
:: FIXME - Assumes Clojure exists in local Maven repo. Find some way to make it more generic.
::
set CLOJURE_VERSION=1.8.0
set CLOJURE_JAR=%USERPROFILE%\.m2\repository\org\clojure\clojure\!CLOJURE_VERSION!\clojure-!CLOJURE_VERSION!.jar

set CLASSPATH=!CLOJURE_JAR!

::
:: Read contents of file .classpath into env variable CLASSPATH
::
if exist "%CD%\.classpath" (
   echo Found file %CD%\.classpath
   FOR /F %%i IN (%CD%\.classpath) DO @set CLASSPATH=!CLASSPATH!;%%i
)

%JAVA_HOME%\bin\java.exe -classpath !CLASSPATH! ^
			 clojure.main ^
			 %*
