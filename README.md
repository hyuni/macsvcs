macsvcs
=======

This tiny script disables (or enables) unneeded macOS services. It was derived from the work
of [pwnsdx](https://gist.github.com/pwnsdx/d87b034c4c0210b988040ad2f85a68d3). The agents and daemons
used in the original script are used as-is.


System Integrity Protection
---------------------------

macOS’s [System Integrity Protection](https://en.wikipedia.org/wiki/System_Integrity_Protection)
must be disabled to enable this script to make all the changes.

To check if SIP is enabled, run:

```
ls -lO /System
```

If the text `restricted` appears in the `Library` directory, then SIP is enabled.

To disable SIP, boot into recovery mode—press and hold `⌘ + r` when the system is booting, prior to
the Apple logo display. Click Utilities > Terminal. Then, run:

```
csrutil disable
```

Then, restart your Mac and login to your regular account.  To verify that SIP is disabled, run the
SIP check command from above and check that `restricted` text no longer appears.


Services
--------

To disable the unneeded agents and daemon on your macOS system, run:

```
./macsvcs -d
```

To enable them:

```
./macsvcs -e
```

To list the agents and daemons to be configured:

```
./macsvcs -l
```


Notes
-----

I wanted to use GNU getopt, so that I can use long flags, but GNU getopt is available as third party
software, and the benefits that it would yield are too trivial for the purposes that this script
will serve.
