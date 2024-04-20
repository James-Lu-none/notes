# how to undo make install

If you're lucky, running make uninstall will work. It's up to the library's authors to provide that, however; some authors provide an uninstall target, others don't. If you got `make: *** No rule to make target 'uninstall'.  Stop.`, you'll have to manually uninstall it. Running make -n install can be helpful, since it will show the steps that the software would take to install itself. You can then manually reverse those steps.

## alternative install method for debian

instead of doing `make install`, we can build a .deb file using

```bash
sudo apt install checkinstall
sudo checkinstall
```

and at the time you want to remove it, just remove it using the system package manager *dpkg*

ref: <https://stackoverflow.com/questions/1439950/whats-the-opposite-of-make-install-i-e-how-do-you-uninstall-a-library-in-li>