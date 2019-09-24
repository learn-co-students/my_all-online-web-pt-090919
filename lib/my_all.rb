require 'pry'

def my_all?(collection)
  x = []
  i = 0 
  while i < collection.length 
  x << yield(collection[i])
  i = i + 1 
end
if x.include?(false)
  false
else
  true 
  
  end


end
my_all?([1,2,3,4,5]) {|i| i < 4}