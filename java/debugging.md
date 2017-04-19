# Server parameters

```
-Djava.compiler=NONE 
-Xdebug 
-Xnoagent 
-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000
```
## Tanuki wrapper

```
wrapper.java.additional.45=-Xdebug -Xnoagent -Djava.compiler=NONE
wrapper.java.additional.46=-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000
```
