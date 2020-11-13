def find_item_by_name_in_collection(name, collection)
 collection.each do |each_item|
   if each_item[:item] == name
     return each_item
   end
 end
 return nil
end

def consolidate_cart(cart)
consolidated = []
cart.each do |each_item|
  if find_item_by_name_in_collection(each_item[:item], consolidated)
    each_item[:count] += 1 
  else
    each_item[:count] = 1 
    consolidated.push(each_item)
  end
end
consolidated
end


  