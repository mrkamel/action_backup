
# ActionBackup

ActionBackup is a small framework for managing a large number of backup tasks,
which run one after another. ActionBackup ships with a tiny library of methods.
Just take a look into the <tt>lib</tt> directory. ActionBackup is written in
ruby and expects the backup tasks to be as well written in ruby.

## State

This software has been used for a long time without any issues.
However, we of course don't give any warranty.

## Install 

Installing the dependencies.

Install ruby and rubygems.
Afterwards, install bundler via:

```
$ gem install bundler
```

Finally, bundle:

```
$ cd /path/to/action_backup && bundle
```

If you're on a debian squeeze machine, you maybe have to bundle via:

```
$ /var/lib/gems/1.8/bin/bundle
```

After you've added your first backup task run

```
/path/to/action_backup/bin/backup
```

to start ActionBackup and your tasks.

## Email config

ActionBackup will send out a report when all backup tasks have been finished.
However, it requires a valid email configuration (sendmail, smtp, etc.).
To add your configuration, edit <tt>config/mailer.rb</tt>

## Tasks

ActionBackup offers three categories for backup tasks.
Tasks required for initializing certain things should be placed under the <tt>backup/up</tt> directory.
They are executed first. The main backup tasks have to be placed under the <tt>backup/run</tt> directory.
Finally, ruby files in <tt>down</tt> are executed to clean up, shutdown the machine or something similar. 

ActionBackup loads and executes the backup tasks in lexical order. In case one or a few backup tasks
fail with an error, these errors won't effect your other backup tasks. However, the report will include
the full output of the failed report as well as the output of all successful tasks.

Warning: <b>All</b> files having a <tt>.rb</tt> suffix are called, so be carefull.

