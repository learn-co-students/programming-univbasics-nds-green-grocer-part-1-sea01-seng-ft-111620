require 'pry'
def find_item_by_name_in_collection(name, collection)
product = nil
  # Implement me first!
  #
  # Consult README for inputs and outputs
collection.each do |item|
  if item[:item] == name
    product = item
  end
end
product
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt = []
  counter = Hash.new(0)
  cart.each { |product| receipt << product}
  receipt.each {|item| counter[item] += 1 }
  #binding.pry
  cart.each do |item|
    counter.each do |same_item|
       #binding.pry
        if item[:item] ==  same_item[0][:item]
  	         item[:count] = same_item[1]
        end
      end
    end
  receipt
end
