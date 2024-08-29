# README

This closely follows the [Getting Started Guide](https://guides.rubyonrails.org/getting_started.html#deleting-an-article) for Rails up to Step 7.5.

## Steps

The following commands are written in the console.

```sh
rails new blog
```

To run the app, you write:

```sh
bin/rails server
```

# Set up router

You updated your `config.rb` file to make sure that when someone visits the home page, you show them the articles instead.

```ruby
get "/articles", to: "articles#index"
```

# Generate a controller for the Articles

```sh
bin/rails generate controller Articles index --skip-routes
```
