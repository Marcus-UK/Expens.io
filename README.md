# Expens.io

Expensio is a Rails application for storing and tracking user's expenses. The
ambition for this project is for commercial users to be able to accurately track
staff expenses.
The development of this project has been guided with BDD principles. In order
to meet specific requirements, the following user stories have been employed.

# User stories

```
As a user,
so that I can use Expens.io securely,
I want to be able to sign up for a account.

As a user,
so that I can keep my account secure,
I want to be able to log in and out of Expens.io.

As a user,
so that I can track my expenses,
I want to be able to add a record of an expense.

As a user,
so that I can accurately track my expenses,
I want to be able to record the type, amount and date of the expense.

As a user,
so that I can provide evidence of my expenses,
I want to be able to upload photos of my receipts.
```

# Getting started

To set up a localhost:

```
$ Clone this repo in to a local directory.
$ Run 'bundle' to install dependencies.
$ you will need to have postgres installed on your system. using the psql
  command, create expensio_development and expensio_test databases.
$ Run 'rake db:migrate db:test:prepare from your command line.
$ run 'rails server'
$ Visit 'localhost:3000' in your web browser.
```

To run the tests for this application:

```
$ Navigate to the root directory of the application in your command line.
$ Run 'Rspec'
```

# Technologies used

- Ruby
- Ruby on Rails
- Rspec/Capybara for testing.
- Bootstrap for styling.
- Active Record ORM
- Devise for User sign up/login functionality.
- Carrierwave for photo upload and storage.
