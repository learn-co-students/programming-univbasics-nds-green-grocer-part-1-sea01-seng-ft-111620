def find_item_by_name_in_collection(name, collection)
  collection.map{ |element|
    element.map { |key, value|
      if value == name
        return element
      end
    }
  }
  return nil
end

def consolidate_cart(cart)
  ans = []
  c = 0
  
  cart.each { |element|
    if !ans[c]
      ans[c] = { }
    end  
    
    ans[c] = element
    
    if !ans[c][:count]
      ans[c][:count] = 1
    else
      ans[c][:count] += 1
    end
    
    c += 1
  }
  return ans
end


  