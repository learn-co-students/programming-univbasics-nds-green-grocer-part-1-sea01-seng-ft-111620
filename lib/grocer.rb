def find_item_by_name_in_collection(name, collection)
  collection.select { |itemHash| return itemHash if itemHash[:item] == name }
  return nil
end

def consolidate_cart(cart)

  newCart = []
  cart.each do |itemHash|
    if find_item_by_name_in_collection(itemHash[:item], newCart)
      find_item_by_name_in_collection(itemHash[:item], newCart)[:count] += 1
    else
      newCart << itemHash
      newCart.last[:count] = 1
    end
  end
end


  