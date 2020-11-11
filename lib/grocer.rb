require 'pry'

def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.length do
    if collection[index][:item] == name
      item = collection[index]
    else
      nil
    end
    index += 1 
  end
item 
end


def consolidate_cart(cart)
  new_cart = []
  index = 0
  while index < cart.length do
    new_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    if new_item
      new_item[:count] += 1
    else
      cart[index][:count] = 1
      new_cart << cart[index]
    end   
    index += 1
  end  
  new_cart
  #binding.pry 
end
 


  