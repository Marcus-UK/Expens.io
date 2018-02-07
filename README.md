# Expens.io

Expensio is a Rails application for storing and tracking user's expenses. The
ambition for this project is for commercial users to be able to accurately track
staff expenses.
The development of this project has been guided with BDD principles. In order
to meet specific requirements, the following user stories have been employed.

# User stories

```
As an employee,
so that I can use Expens.io securely,
I want to be able to sign up for a account.

As an employee,
so that I can keep my account secure,
I want to be able to log in and out of Expens.io.

As an employee,
so that I can track my expenses,
I want to be able to add a record of an expense.

As an employee,
so that I can accurately track my expenses,
I want to be able to record the type, amount and date of the expense.

As an employee,
so that I can amend any mistakes with my expenses,
I want to be able to edit any expense entered.

As an employee,
so that I can provide evidence of my expenses,
I want to be able to upload photos of my receipts.
```

The following user stories are being used to guide the development of an admin function:

```
As an admin,
so that I have an overview of all expenses,
I want to be able to see all expenses in a single view.

As an admin,
so that I can analyse expenses,
I want to be able to filter expenses by type or date.

As an admin,
so that I can update employees,
I want to be able to mark expenses as paid.

As an admin,
so that I can discuss expenses with employees,
I want to be able to send them messages.

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

# What's next

At this current moment in time, the foundations are in place for this project. At the moment, a user can register and log in. After that, they will be able record different types of expense and view a summary of all expenses to date. All CRUD operations are in place for expenses as well. Going forwards, I plan to add a great deal more functionality. The main areas of work are as follows:

- Add admin user functionality. The ambition is for an admin to have an overview of all expenses on the system.
- Add a messaging feature so that employees and admins can discuss specific expenses.
- Add auditing to the database. As a financial app, there should be records of any changes made to expenses.
- Improve reporting functions. I would like to make it possible to filter expenses by type and date etc.
