# Openfire

[![Gem Version](http://img.shields.io/gem/v/openfire.svg)](https://rubygems.org/gems/openfire)
[![Build Status](https://api.travis-ci.org/chrisb/openfire.png?branch=master)](http://travis-ci.org/chrisb/openfire)
[![Code Climate](https://codeclimate.com/github/chrisb/openfire.png)](https://codeclimate.com/github/chrisb/openfire)

A Ruby client for accessing Openfire's User, Room, and Group service API.

## Installation

Add it to your Gemfile:

```ruby
gem 'openfire' # git: 'chrisb/openfire'
```

And `bundle install`.

## Usage

Connect to the API by providing the endpoint URL and secret token:

```ruby
client = Openfire::Client.new 'http://localhost:9090/', 'ABC123DEF456'
```

##### Register a New User

```ruby
client.add_user! username: 'john', password: 'sup3rs3cr3t!'
client.add_user! username: 'john', password: 'sup3rs3cr3t!', :name => ..., :email => ..., :groups => ...
```

##### Update an Existing User

```ruby
client.update_user! username: 'john', password: 'sup3rs3cr3t!'
client.update_user! username: 'john', password: 'sup3rs3cr3t!', :name => ..., :email => ..., :groups => ...
```

##### Delete a User

```ruby
client.delete_user! username: 'john'
```

##### Lock a User

```ruby
api.lock_user! username: 'john'
```

##### Unlock a User

```ruby
client.unlock_user! username: 'john'
```

##### Create a Room

```ruby
client.add_room! roomname: 'general', :jid => "jid", :subdomain => "generalchat"
```

##### Delete a Room

```ruby
client.delete_room! roomname: 'general', :subdomain => "generalchat"
```

##### Create a MUC (multi-user chat) Service

```ruby
client.add_muc_service! :subdomain => 'demo-service', :description => 'this is a demo muc service'
```

##### Delete a MUC Service

```ruby
client.delete_muc_service! :subdomain => 'demo-service'
```

## License

Licensed under the [MIT License](http://opensource.org/licenses/mit-license.html).

## Authors

* [Chris Bielinski](https://github.com/chrisb) <chris@shadowreactor.com>
* [Babu](https://github.com/babu3009) <babu309@gmail.com>
* [Paul Asmuth](https://github.com/paulasmuth) <paul@23linesofcode.com>
