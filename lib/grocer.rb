require 'pry'

def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |item_info|
    if item_info[:item] == name 
      result = item_info
    end
  end
  result
end

def consolidate_cart(cart)
  receipt = []
  cart.each do |item_info|
    individual_item = find_item_by_name_in_collection(item_info[:item], cart)
    individual_item[:count] = countnums(cart, individual_item[:item])
    receipt << individual_item
  end 
  receipt = receipt.uniq
  return receipt
end 

def countnums(cart, item)
  array_of_names = []
  cart.each do |item_info|
    array_of_names << item_info[:item]
  end 
  countnum = array_of_names.count(item)
  return countnum
end 
  
