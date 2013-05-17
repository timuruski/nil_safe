NilSafe
=======

An experiment with the Null Object pattern. Not sure if this will go
anywhere, since NilObject can't be evaluated as false.

```ruby
class User < Struct.new(:name)
  extend NilSafe

  class << self
    def self.add(user)
      table[user.name] = user
    end

    def self.find(name)
      table.fetch(name) { User::NIL }
    end

    def self.table
      @table ||= {}
    end
  end
end

User.add User.new('alice')

alice = User.find('alice')
bob = User.find('bob')

bob.name #=> NilObjectError! "From Nil User"
```

