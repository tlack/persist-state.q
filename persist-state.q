restore:{@[{`. set get `:lastsess.qdb};1;0]};
oldzexit:@[get;`.z.exit;{}];
.z.exit:{`:lastsess.qdb set get `.;oldzexit[]};
/ uncomment to have your last session automatically restored when you load this
/ (such as in q.q)
restore[]

