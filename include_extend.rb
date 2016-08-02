module HelperMethods
  def greeting(name)
    "Hello #{name}"
  end
end

class Class1
  include HelperMethods
end

class Class2
  extend HelperMethods
end

c = Class1.new
c.greeting("Joe")

Class2.greeting("Joe")
