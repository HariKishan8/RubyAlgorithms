#!/usr/bin/ruby

class Dessert
 def initialize(name, calories)
   @name, @calories = name, calories
 end
 
 def getName
   @name
 end

 def getCalories
   @calories
 end

 def setName(name)
   @name = name
 end

 def setCalories(calories)
   @calories = calories
 end  

 def healthy?
   if @calories < 200
     return true
   else
     return false
   end 
 end

 def delicious?
   return true
 end
end

class JellyBean < Dessert
 def initialize(name, calories, flavor)
   super(name, calories)
   @flavor = flavor
 end

 def getFlavor
   @flavor
 end

 def setFlavor(flavor)
   @flavor = flavor
 end

 def delicious?
   if @flavor == "black licorice"
     return false
   else
     return true
   end
 end
end

#test cases
j = JellyBean.new("JellyBean", 250, "black licorice")
puts j.getName
puts j.getCalories
puts j.getFlavor
puts j.healthy?
puts j.delicious?
puts

j = JellyBean.new("JellyBean", 250, "chocolate")
puts j.getName
puts j.getCalories
puts j.getFlavor
puts j.healthy?
puts j.delicious?
puts

d = Dessert.new("Dessert", 190)
puts d.getName
puts d.getCalories
puts d.healthy?
puts d.delicious?


