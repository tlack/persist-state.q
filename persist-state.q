restore:{@[{`. set get `:lastsess.qdb};1;0]};
/
	attempt to load the last session state from lastsess.qdb in current folder;
	use protected evaluatation @[func;arg;failval] to avoid throwing an error 
	when lastsess.qdb doesn't exist
\

oldzexit:@[get;`.z.exit;{}];
/ store a copy of the current .z.exit handler so we can call it from our handler

.z.exit:{`:lastsess.qdb set get `.;oldzexit[]};
/ on exit, save the current state of the main workspace -- get `. -- in lastsess.qdb

restore[]
/ uncomment to have your last session automatically restored when you load this
/ (such as in q.q)

