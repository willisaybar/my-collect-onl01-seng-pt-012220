require 'pry'

# write a method that behaves like a #collect method
# takes an argument of a collection
# iterate over that collection using a #while loop
# execute the code in the block we call it with for each element in the collection
# use yield and return the modified selection

# def my_collect(collection)
#   c = 0 
#   collection = []
#   while c < collection.length
#     yield(languages.upcase, student.shift)
#     c += 1 
#     # new_collection << yield(collection)
#   end
# end

def my_collect(array)
  i = 0
  name_collection = []
  while i < array.length
    name_collection.push yield(array[i])
  # you could also do it this way:
  # name_collection << yield(array[i])
    i += 1
  end
  name_collection
end
  

# def my_collect(lang)
#   c = 0 
#   lang = []
#   while c < lang.length 
#     new_collection << yield(lang[c].upcase)
#     c += 1 
#   end
# end


# collection = ['ruby', 'javascript', 'python', 'objective-c']
# def my_collect(collection)
# my_collect(collection) do |lang|
#   lang.upcase
# end