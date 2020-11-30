# README

# This Project is basically used for learning purpose.

## Consider the following covered:

### Action Text

Action Text brings rich text content and editing to Rails via Trix editor.
The rich text content is saved in its own model that's associated with any existing Active Record model in the application.

### Consider the steps below for integration:

1. bin/rails action_text:install

> The above command creates a necessary migration and adds the Yarn Package

2. Add - has_rich_text :content

> add rich text field to an existing model,

3. Than, in the form use

> <%= form.label :content %>

> <%= form.rich_text_area :content %>

4. The above creates a editable text field in the form

> sql = "Select * from action_text_rich_texts" // To verify the content created:

> ActiveRecord::Base.connection.execute(sql)

It will show up the content created with the attributes - id, name, body, record_type, record_id etc. *Polymorphic Association*

### Action MailBox

Action Mailbox routes incoming emails to controller-like mailboxes.

It ships with ingresses for Mailgun, Mandrill, Postmark, and SendGrid.

#### Consider the steps below for integration:

1. rails action_mailbox:install

Above command generates two migrations for action_mailbox and active_storgage. And it also creates application_mailbox.

action_mailbox table’s schema contains the following columns
> status,
> message_id,
> message_checksum,
> status can be pending, processing, finished or bounced.

message_id and message_checksum are there to avoid duplication.


2. In the ApplicationMailbox class, define the route for emails

> routing  :all => :inbox

3. Now, let’s create InboxMailbox

> rails g mailbox inbox

4. Testing on Development Environment

http://localhost:3000/rails/conductor/action_mailbox/inbound_emails/new

deliver an inbound email. Based on the to email, it’ll route to mailbox and process the email.

5. After creating the action_mailbox_inbound_emails, verify the same using the query below:

> sql = "Select * from action_mailbox_inbound_emails"

> ActiveRecord::Base.connection.execute(sql)

### Multiple Databases

1. Automatic connection switching for the model you're working with

2. Automatic swapping between the primary and replica depending on the HTTP verb and recent writes1.


Limitations

1. Sharding

2. Joining across clusters

3. Load balancing replicas

#### Set up

> Login to the database as a root user and create a readonly user

> CREATE USER 'root_readonly' IDENTIFIED BY 'test';

> GRANT SELECT ON *.* TO 'root_readonly';

> Now try to login into the system

> update database.yml with the configuration below:

*development:
  primary:
    database: my_primary_database
    user: root
    adapter: sqlite3
  primary_replica:
    database: my_primary_database
    user: root_readonly
    adapter: sqlite3
    replica: true
  animals:
    database: my_animals_database
    user: animals_root
    adapter: sqlite3
    migrations_paths: db/animals_migrate
  animals_replica:
    database: my_animals_database
    user: animals_readonly
    adapter: sqlite3
    replica: true*


> https://dev.to/fedeagripa/rails-6-multiple-databases-337k

> rake db:rollback with the database name or with Version


### OverCommit

Using Git hooks to control code quality. Consider the advantages below:

1. It maintains code consistency

2. It helps catch unnecessary code

3. It helps avoid conflicts between developers and also to remember about the conventions

4. It helps optimize performance and avoid problems with security

In order to integrate, consider the commands below:

> gem 'overcommit'

> touch .overcommit.yml

*And override default configuration under your needs.*

> overcommit --install

> overcommit --sign
