# TkhActivityFeeds

This Rails engine gem creates and displays activity feeds.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tkh_activity_feeds', '~> 1.0.beta1'
```

Execute:

    $ bundle

Import migration files

    $ rake tkh_activity_feeds:install

Migrate the database

    $ rake db:migrate

Start your server

    $ rails s


## Upgrading

Update gem

    $ bundle update tkh_activity_feeds

Import any new migration files

    $ rake tkh_activity_feeds:update

Migrate the database if needed

    $ rake db:migrate

Start your server

    $ rails s


## Usage

Pre-requisites

There needs to be a User model and a current_user object. Most often, both are provided by the authentication package.

Example of adding an activity feed item

```ruby
Activity.create doer_id: current_user.id, message: "Your text goes here. Can include HTML links and more."
```

Example of getting some activity items from a user

```ruby
# doer is the current_user
doer.activities.limit(10).each do |activity|
  content_tag :li, "#{activity.doer.name} #{activity.message}"
end
```


## Contributing

1. Fork it ( https://github.com/allesklar/tkh_activity_feeds/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
