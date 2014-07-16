# Openfire

A Ruby client for accessing Openfire's User, Room, and Group service API.

## Installation

Add it to your Gemfile:

```ruby
gem 'openfire'
```

And `bundle install`.

## Usage

Connect to the API by providing the endpoint URL and secret token:

```ruby
client = Openfire::Client.new 'http://localhost:9090/', 'ABC123DEF456'
```

### Register a New User

```ruby
client.add_user! username: 'john', password: 'sup3rs3cr3t!'
client.add_user! username: 'john', password: 'sup3rs3cr3t!', :name => ..., :email => ..., :groups => ...
```

### Update an Existing User

```ruby
client.update_user! username: 'john', password: 'sup3rs3cr3t!'
client.update_user! username: 'john', password: 'sup3rs3cr3t!', :name => ..., :email => ..., :groups => ...
```

### Delete a User

```ruby
client.delete_user! username: 'john'
```

### Lock a User

```ruby
api.lock_user! username: 'john'
```

### Unlock a User

```ruby
client.unlock_user! username: 'john'
```

### Create a Room

```ruby
client.add_room! roomname: 'general', :jid => "jid", :subdomain => "generalchat"
```

### Delete a Room

```ruby
client.delete_room! roomname: 'general', :subdomain => "generalchat"
```

### Create a MUC (multi-user chat) Service

```ruby
client.add_muc_service! :subdomain => 'demo-service', :description => 'this is a demo muc service'
```

### Delete a MUC Service

```ruby
client.delete_muc_service! :subdomain => 'demo-service'
```
