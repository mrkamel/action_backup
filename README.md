
# action_backup

## State

This software has been used for a long time without any issues.
However, we of course don't give any warranty.

## Install 

1. Install dependencies.

Install ruby and rubygems.
Afterwards, install bundler via:

<pre>
$ gem install bundler
</pre>

Finally, bundle:

<pre>
$ cd /path/to/action_backup && bundle
</pre>

If you're on a debian squeeze machine, you maybe have to bundle via:

<pre>
$ /var/lib/gems/1.8/bin/bundle
</pre>

## Email config

Edit <tt>config/mailer.rb</tt>

## Tasks

Tasks required for initializing certain things should be placed under the <tt>up</tt> directory. They are executed at first.
Backup tasks have to be placed under the <tt>run</tt> directory.
Finally, ruby files in <tt>down</tt> are executed to clean up, shutdown the machine or something similar. 

Warning: <b>All</b> files having a <tt>.rb</tt> suffix are called, so be carefull.

