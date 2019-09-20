require 'pry'

def my_all?(collection)
  i = 0 
  block_return_values = [] #3: Save return value of yield block
  
  while i < collection.length #1: iterate thru each ele
    #send whatever passed in as the argument ot the block
    #3b:
    block_return_values << yield(collection[i]) #2: yield each ele in collection to the block
    i += 1 
  end
  
  #Step 4: determine return value of method
  if block_return_values.include?(false)
    false
  else
    true
  end
end


my_all?([1,2,3]) {|i| i < 2} 

# As this code executes it will look like this:
# def my_all?([1,2,3])
#   i = 0
#   while i < 3
#     yield(1) #sends 1 to block, evalauates it, and send return value true to `yield`
#     i = 0 + 1
#   end
# end

# Step 4: determine return value of the method
# block_return_values = [true, false, false]
# add an #include? method to determine the return value of the my_all? method

