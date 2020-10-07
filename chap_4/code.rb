# module MyFirstmodule
#   def say_helo
#     puts "hello"
#   end
# end
#
# class ModuleTester
#   include MyFirstmodule
# end
#
# m = ModuleTester.new
# m.say_helo
# module StackLike
#   def stack
#     @stack ||= []
#   end
#
#   def add_to_stack(obj)
#     stack.push(obj)
#   end
#
#   def take_from_stack
#     stack.pop
#   end
# end
#
# class SuitCase
# end
#
# class CarogHold
#   include StackLike
#   def load_and_report(obj)
#     print "Loading object"
#     puts obj.object_id
#     add_to_stack(obj)
#   end
#
#   def unload
#     take_from_stack
#   end
# end
#
# ch = CarogHold.new
# sc1 = SuitCase.new
# sc2 = SuitCase.new
# sc3 = SuitCase.new
#
# ch.load_and_report(sc1)
# ch.load_and_report(sc2)
# ch.load_and_report(sc3)
#
# first_unloaded = ch.unload
#
# print "the first suitcase off the plane is...."
# puts first_unloaded.object_id


# module Mc
#   def report
#     puts "report method in module MC"
#   end
# end
#
# class Cc
#   include Mc
#   def report
#     puts "Report method in class C"
#     puts "About to trigger next higher up report method..."
#     super
#     puts "back from the 'super' call"
#   end
# end
#
# thing = Cc.new
# thing.report
#
# # Report method in class C
# # About to trigger next higher up report method...
# # report method in module MC
# # back from the 'super' call

# class Bicycle
#   attr_reader :gears, :wheels, :seats
#   def initialize(gears = 1)
#     @wheels = 2
#     @seats = 1
#     @gears = gears
#   end
# end
#
# class Tandem < Bicycle
#   def initialize(gears)
#     super # if you do a blank parentasese it wont pass gears up. ()
#     @seats = 2
#   end
# end
#
# t = Tandem.new(3)
# puts t.seats
