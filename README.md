persist-state.q
===============

Tiny snippet of code to save the state of your q session when you exit,
and restore it when you start again.

State is stored in lastsess.qdb

The code is just three lines. Read it!

Usage
-----

Add this to ~/q/q.q:

```
	\l /path/to/persist-state.q
```

Note on style
-------------

I'm going overboard on comments because Q is hard for new users to understand.
