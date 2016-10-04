# Vinyl Stream (Selling Everything Music)

A Rails Web Application designed to be used as an online retail store for music and music-related goods/services. A Google Maps API is used to show the users location on their account page. AJAX calls are made via the account page.

### User Stories

* As a user, I want to be able to sign up for an account, sign in, and log out.

* As a user, I want to be able to add a profile image to my account and see it on my account page.

* As a user, I want to be able to add my address to my account and see it inside a Google Maps embedded player.

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

Create a Google project at `https://console.developers.google.com` and create an API key. Once you have done this, create a .env file in your the project directory and insert the following code.
```
MAP_API_KEY=YOUR_API_KEY_HERE
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey"
