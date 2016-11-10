# Vinyl Stream (Selling Everything Music)

A Rails Web Application designed to be used as an online retail store for music and music-related goods/services. Transactions are processed using PayPal.

### Installation and Running Locally

* If you do not want to install and instead want to view a live version of the site, you can find it here: `https://vinylstream.herokuapp.com`

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
