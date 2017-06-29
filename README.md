macsvcs
=======


This script disables (or enables) unneeded macOS services. It was derived from the work
of [pwnsdx](https://gist.github.com/pwnsdx/d87b034c4c0210b988040ad2f85a68d3). The agents and daemons
used in the original script are used as-is.

This script needs to have
macOS’s
[System Integrity Protection (SIP)](https://en.wikipedia.org/wiki/System_Integrity_Protection)
disabled, in order for all the settings to take effect. Additionally, it requires that the user who
is going to run this script must be an administrator.


Prerequisites
-------------

We need to disable SIP, first. To do that, boot into recovery mode, then press and hold `⌘ + r` while the
system is booting. When the recovery system loads, click `Utilities > Terminal`. Then, run:

```bash
csrutil disable
reboot
```

After the system boots, login to your account.


Installation
------------

You may clone the entire repository with:

```bash
git clone https://github.com/ebzzry/macsvcs
```

Or, you may get just the script:

```bash
curl -sSLO https://raw.githubusercontent.com/ebzzry/macsvcs/master/macsvcs
```

Then, don’t forget to make it executable:

```bash
chmod +x macsvcs
```


Usage
-----

To disable the unneeded agents and daemon on your macOS system:

```bash
./macsvcs unload
```

To enable them back:

```bash
./macsvcs load
```

To list the agents and daemons to be configured:

```bash
./macsvcs list-agents
./macsvcs list-daemons
```

To display warnings for either the `unload` or `load` commands:

```bash
./macsvcs -w unload
./macsvcs -w load
```


Closing remarks
---------------

Should you wish to re-enable SIP, boot into recovery mode just like above. Open the Terminal application then, run:

```bash
csrutil enable
reboot
```
