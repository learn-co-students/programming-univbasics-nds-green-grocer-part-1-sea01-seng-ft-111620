require 'pry'

=begin
grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]
=end


# find_item_by_name_in_collection method simulates the act of adding items to your shopping cart. The method should be able to take the string name of a particular item and a collection of items (e.g. unconsolidated_cart array above). It should then iterate over the collection and check the value of :item in each nested hash. If a match is found, the method should return that entire hash. If an item is not found, it should return nil.

def find_item_by_name_in_collection(name, grocery_shelf)
  index = 0 
  grocery_shelf.each do |sku|
    if sku[:item] === name
      return sku
      index += 1
    end
  end
  nil
end

# consolidate_cart method should take in a 'cart', an array of hashes of individual items and return a new array of hashes, but with each item containing a quantity. This returns a new Array that represents the cart. Don't merely change `cart` (i.e. mutate) it. It's easier to return a new thing.

def consolidate_cart(unconsolidated_cart)
  cart = []
  unconsolidated_cart.each do |sku|
    look_up_item = find_item_by_name_in_collection(sku[:item], cart)
    if look_up_item
      cart_index = 0
      cart.each do |cart_item|
        if cart_item[:item] === look_up_item[:item]
          cart_item[:count] += 1
        end
        cart_index += 1
      end
    else
      sku[:count] = 1
      cart << sku
    end    
  end    
  cart
end