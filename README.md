# README

# This Project is basically used for learning purpose.

## Consider the following covered:

* Action Text

Action Text brings rich text content and editing to Rails via Trix editor.
The rich text content is saved in its own model that's associated with any existing Active Record model in the application.

### Consider the steps below for integration:

1. bin/rails action_text:install
The above command creates a necessary migration and adds the Yarn Package

2. Add - has_rich_text :content
a rich text field to an existing model, 

3. Than, in the form use

<%= form.label :content %>
<%= form.rich_text_area :content %>

4. This is create a editable text field in the form
