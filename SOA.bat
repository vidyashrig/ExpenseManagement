@echo off

set MVNCONF=C:\MyLaptopBack\CodeBase\flatmaven\FlatManagementSystemMaven\settings.xml
set MAVEN_HOME=C:\MyLaptopBack\Softwares\apache-maven-3.1.1
set JAVA_HOME=C:\Oracle\Middleware\jdk160_29
set CLASSPATH=%MAVEN_HOME%\bin;%MAVEN_HOME%\lib;%CLASSPATH%;
set PATH=%MAVEN_HOME%\bin\mvn;%PATH%
set PATH=%JAVA_HOME%\bin;.;%PATH%
Set MAVEN_OPTS= -Xms1024m -Xmx1024m -XX:MaxPermSize=256m

echo ================================================================
echo Building Service Platform
echo ================================================================
call %MAVEN_HOME%\bin\mvn -e -gs %MVNCONF% clean install
@rem call %MAVEN_HOME%\bin\mvn -gs %MVNCONF% clean
echo ================================================================
echo Service Platform compilation Completed
echo ================================================================


cmd