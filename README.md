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

### Consider the steps below for integration:

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
