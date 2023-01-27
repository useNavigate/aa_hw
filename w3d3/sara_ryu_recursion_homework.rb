# Exercise 1 - sum_to
# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).


def sum_to(n)
    if n == 1
        return 1
    elsif n < 0 
        return nil
    end
    n+sum_to(n-1)
end

# Test Cases
p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil

def add_numbers(arr)
    if arr.length == 1 
        return arr[-1]
    elsif arr.length == 0 
        return nil 
    end 

    arr[0] + add_numbers(arr[1..-1])
end
p    add_numbers([1,2,3,4]) # => returns 10
p    add_numbers([3]) # => returns 3
p    add_numbers([-80,34,7]) # => returns -39
p   add_numbers([]) # => returns nil


def gamma_fnc(num)
    if num == 1 
        return 1 
    elsif num <=0
        return nil 
    end 
   ( num -1 ) * gamma_fnc(num-1)

end

p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)

    if flavors.length == 0 
        return false 
    end

    if flavors[0] == favorite
        return true 
    end 

    ice_cream_shop(flavors[1..-1],favorite)


end
p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p ice_cream_shop([], 'honey lavender')  # => returns false


def reverse(string)
if string.length <= 1
    return string
end 
string[-1] + reverse(string[0..-2])

end
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""