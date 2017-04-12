# Thread dumps

The following commands can be used to request the Java Virtual Machine to make a thread dump. By default the JVM reacts to this signal by writing a thread dump to the console log.

`kill -3 <pid>`

`kill -QUIT <pid>`

# Heap dumps

`jmap -dump:format=b,file=/mydirectory/memorydump.hprof [PID]`

# Loaded classes

`jmap -histo:live [PID] > /mydirectory/loaded-classes.out`

# Thread dump analyzers

* [Thread Dump Analyzer (TDA)](https://github.com/irockel/tda/): 
