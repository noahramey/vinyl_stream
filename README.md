# Vinyl Stream (Selling Everything Music)

This project is a web application built using the React framework with a Rails backend. It could be used to buy and sell various music paraphernalia.

### User Stories

* As a user, I want to be able to sign up for an account, sign in, and log out.

* As a user, I want to be able to buy various items that are sorted by category.

* As a user, I want to be able to search for items by keyword.

* As a user, I want to be able to add items to a shopping cart for mass checkout.

* As a user, I want to be able to checkout and have the site email me a confirmation of my order.

* As a user, I want to be able to put up items for sale and have a dashboard where I can see my sales/orders.

* As an admin, I want to be able to see all of the users who use my website.

* As an admin, I want to be able to see all items up for sale, along with orders between other users.

* ...

### Installation and Running Locally

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/noahramey/vinyl_stream.git
```

Navigate to the repository and bundle Ruby gems:
```
$ cd vinyl_stream
$ bundle install
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey"
