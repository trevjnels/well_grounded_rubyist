# class Ticket
#   def event
#     "cant really be specified yet"
#   end
#   def m
#     "this method wont run"
#   end
#   def m
#     "this method will override"
#   end
# end
# ticket = Ticket.new
# puts ticket.event
#
#
# class ClassToReopen
#   def x
#     "thing 1"
#   end
# end
#
# class ClassToReopen
#   def y
#     "thing 2"
#   end
# end
# class_to_reopen = ClassToReopen.new
# puts class_to_reopen.y + class_to_reopen.x
#
#
# class Person
#   def set_name(string)
#     puts "Setting person's name..."
#     @name = string
#   end
#
#   def get_name
#     puts "returning the person's name"
#     @name
#   end
# end
# joe = Person.new
# joe.set_name("Joe")
# puts joe.get_name


# class Ticket
#   def initialize
#     puts "creating a new ticket!"
#   end
# end
# Ticket.new

#
# class Ticket
#   def initialize(venue, date)
#     @venue = venue
#     @date = date
#   end
#
#   def venue
#     @venue
#   end
#
#   def date
#     @date
#   end
# end
#
# th = Ticket.new("Town Hall", "11/12/13")
# puts th.date
# puts th.venue

# class Ticket
#   def initalize(venue, date)
#     @venue = venue
#     @date = date
#   end
#   def set_price(amount)
#     @price = amount
#   end
#   def price
#     @price
#   end
# end

# class Ticket
#   def initalize(venue, date)
#     @venue = venue
#     @date = date
#   end
#   def price=(amount)
#     @price = amount
#   end
# end

# class Ticket
#   def initalize(venue, date)
#     @venue = venue
#     @date = date
#   end
#   def price=(amount)
#     if (amount * 100).to_i == amount * 100
#     @price = amount
#     else
#       puts "The price is malformed"
#     end
#   end
# end

# class Ticket
#   # attr :price, true  (attr_accessor)
#   # attr :price (att_reader)
#   attr_writer :price
#   attr_accessor :price, :venue, :date
#   def initalize(venue, date)
#     @venue = venue
#     @date = date
#   end
# end
#
# my_class = Class.new
# instance_fo_my_class = my_class.new

# class Thing
# end
# puts Thing.superclass
# puts Thing.superclass.superclass
#
# class Ticket
#   attr_reader :date, :venue, :price
#   attr_writer :price
#
#   def initialize(date, venue)
#     @date = date,
#     @venue = venue
#   end
#
#   def self.most_expensive(*tickets)
#     tickets.max_by(&:price)
#   end
# end
#
# th = Ticket.new("bla", "blabla")
# th.price = 42
# tz = Ticket.new("trev", "datething")
# tz.price =45
#
# tic = Ticket.most_expensive(th, tz)
#
# puts tic.price
