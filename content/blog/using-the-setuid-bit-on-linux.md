---
title: "Using the Setuid Bit on Linux"
date: 2022-09-03T11:44:51-05:00
draft: true
---

> **NOTE**: I'm not entirely sure the statements made about how Setuid works towards the end of this article are correct. It looks like Setuid is more complicated than I first thought, and I'm not guaranteeing the accuracy of the staements in this article.

The Setuid bit makes a program get executed by whatever program **owns** a file, regardless of who is *executing* it.

Consider we have an executable named `task` that is owned by `root` with the Setuid bit set. If we run the program as `root`, it gets executed as `root` like you'd expect. The fun parts comes in when you execute it as a different user: if we execute it as a user such as `hunter`, it still gets ran as root!

## Understanding Setuid
First lets declare some basics you need to know so that we can understand Setuid usage better:

### UIDs
Each program run on your system is ran under a user, which has a corresponding user ID (a.k.a. UID). This user UID can easily be found inside of your shell:

```sh
echo "${UID}"
```

If you were to run this as root, you'd get the UID of `0`, the user ID set for the `root` user:

```sh
sudo su
echo "${UID}"
```

### EUIDs, and how they work with UIDs
An EUID (*effective* user ID) functions similarly to a UID. The UID simply states what user ID *launched* a program. The EUID is what determines what user is used for things like file permissions in the current [process](https://www.redhat.com/sysadmin/linux-command-basics-7-commands-process-management), as well as any subprocess that the current process creates.

> Like UIDs, you can find the EUID in your shell via the `"${EUID}"` variable.

Normally, the EUID is the same as the UID. The place where this may not apply is when you're using the Setuid bit (this explained more directly below).

## Setuid rules
The following rules apply when using the Setuid bit in your programs (I haven't fully verified these against any sort of official documentation, it's just what I've observed in my own testing):

### UIDs
The UID is set to the actual user who launched the program. So even if your Setuid program is owned by `root`, the UID will not be `0` (unless of course you launched the program as the `root` user itself).

Rules for changing the UID apply just like any normal program. If you launch the program as root, you can change your UID to any user. If you launch it as a normal user, you can not change the UID.

### EUIDs
The EUID is set to the UID of the user who owns the program. So if your Setuid program is owned by `root`, the EUID will always be `0`.

Rules for changing the EUID apply as if you were root. You can change this to any user as you'd like, and your permissions will be reflected as if you were that user.

## Setting the Setuid flag in your programs:
You can easily set the Setuid flag in your programs via the `+s` option of `chmod`:

```sh
chmod a+s 'name-of-program'
```

After such, all of the above features should start working in your program.

## Places where Setuid will not work
Setuid functionality will not work in any sort of script with a [shebang](https://linuxhandbook.com/shebang), such as the following:

```sh
#!/bin/bash
echo "${UID}"
echo "${EUID}"
```

In programs that start with these `#!` lines, Setuid functionality is determined by the permissions set on the shebang's executable (`/bin/bash` in this case). Since `/bin/bash` doesn't have the Setuid bit set, you don't get any Setuid functionality.
