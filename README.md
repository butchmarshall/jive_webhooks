[![Gem Version](https://badge.fury.io/rb/jive_webhooks.svg)](http://badge.fury.io/rb/jive_webhooks)
[![Build Status](https://travis-ci.org/butchmarshall/jive_webhooks.svg?branch=master)](https://travis-ci.org/butchmarshall/jive_webhooks)

# JiveWebhooks

JiveWebhooks is a mountable engine for Rails that enables [Jive](https://www.jivesoftware.com) [Webhook](https://developers.jivesoftware.com/api/v3/cloud/rest/WebhooksService.html) functionality.

Release Notes
============


**0.0.1**
 - Initial commit - doesn't do anything meaninful yet

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jive_webhooks'
```

then add and run the ActiveRecord migrations.

```ruby
bundle exec rails generate jive:add_on:active_record
bundle exec rake db:migrate
```

## Usage

In your routes.rb file, mount the rails engine to enable add-on support.

```ruby
Rails.application.routes.draw do
	mount JiveWebhooks::Engine => "/special_path_for_api"
end
```

See /spec/dummy/extension_src for the example add-on extension that is uploaded.  You'll need to change the endpoints!

For whitelisting and blacklisting specific

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/butchmarshall/jive_webhooks.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).