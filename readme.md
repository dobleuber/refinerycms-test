README
============

**Maintainers**
* Wbert Adrian Castro Vera (primary) wbert.castro@staunchrobots.com
* Derek Scruggs derek.scruggs@staunchrobots.com
* Gideon Chiaet gideon@metronome3.com

Management
====
Pivotal Tracker project - https://www.pivotaltracker.com/n/projects/1167140

Basecamp project - https://basecamp.com/1892469/projects/7075811

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

**Ruby versions**
* ruby 1.9.3
* rails 4.1.1

**System dependencies**
* postgres
* image-magic -> Installation instructions are at http://www.imagemagick.org/script/binary-releases.php

Database set up
====

**Setting up Postgres**
* Create a Postgres user for the Rails app. To do this, switch into the Postgres user:
<pre><code>su - postgres.</code></pre>
* Then create a role (User):
<pre><code> create role nativefoods_user login createdb </code></pre>
* Copy the file config/database.yml.postgresql to database.yml and set the username in that file to nativefoods_user
* You can then run:
<pre><code> rake db:setup </code></pre>
	
Amazon S3 Setup or Rackspace setup
==

You are free to use Aws amazon or Rackspace

In your config directory is a file called `application.yml.example`

Copy this file to `application.yml` and edit the values found there to match your Amazon s3 credentials or Rackspace.

If you need an s3 account, you can create a free one at http://aws.amazon.com/s3
If you prefer to use rackspace, you can create your account at http://www.rackspace.com/

Refinery Cms Backend
====

You can access to the refinery administrator at http://localhost:3000/refinery/
The default user is:

email: nativefoodsapp@staunchrobots.com

password: corellian
