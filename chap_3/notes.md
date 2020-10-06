Clases are a colelction of method definitions.
The purpose of a class is to be instnasicated.
`Object.new` is a sign of a class.
`Object` is a built-in ruby class.
Classes _are_ objects
Classes are named with constants

Instance methods are methods that exist on the instance of the objects Class methods are on the class itself.
singleton methods are only on one partiuclar object

Reopening classes

- normally you create a single class definition but you can simply redefine it down stream to add to it.
- the one reason you will reopen classes possibly is if you are extending a standard class like `Time` for instance. IMO this is dumb, we shold just make a sub class that inherets

instance variables make up the state of the object
always start with `@`
only visable to the object instance to which they belong
instance variable defiend in one method of a class is accessable by other methods in the class

initalize method
-specail meethod on the class that takes the .new params and creats instance variables from it

```
class Ticket
  def initalize(venue, date)
    @venue = venue
    @date = date
  end
  def price=(amount)
    @price = amount
  end
end
t = Ticket.new("trevs house", "tomorrow")
t.price = 43
```

The reason you might want to use the syntax above is it allowes you to add in validations

```
def price=(amount)
  if (amount * 100).to_i == amount * 100
  @price = amount
  else
    puts "The price is malformed"
  end
end
```

An attribute is a property of an object whos value can be read and/or written through the object. Another way to say this is that the api of these values is public
price= is an att writer method
price
date
and venue are att reader methods

BasicObject

- higher up the chain than Object
- only 7 instance moethods (Object has 52)

Classes are instances of Class
Class methods are singleton methods

Math class has a `PI` constant on it. to call this in irb do
`Math::PI`
