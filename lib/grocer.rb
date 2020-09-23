def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0
  collection.each do |sku|
    if sku[:item] === name
      return sku 
      index += 1
    end  
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  index = 0
  reciept = []
  
  cart.each do |sku|
    look_up_item = find_item_by_name_in_collection(sku[:item], reciept)
    if look_up_item
      reciept_index = 0
      reciept.each do |reciept_item|
        if reciept_item[:item] === look_up_item[:item]
          reciept_item[:count] += 1
        end
        reciept_index += 1
      end
    else
      sku[:count] = 1
      reciept << sku
    end
    index += 1
  end
  reciept
end