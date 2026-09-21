# print all 1 - 255
puts "Print all from 1 - 255"
for i in 1..255
    p i
end

# print all odd 1-255
puts "Print all odd numbers from 1 - 255"
for i in 1..255
    p i unless i % 2 == 0
end
# print and sum - while loop version
def print_sum
    i = 1
    sum = 0
    while(i <= 255) do 
        sum += i
        puts "New number: #{i} | Sum: #{sum}"
        i += 1
    end
end
print_sum

# iterate through array
puts "Iterate Through Array"
arr1 = [1,3,5,9,13]
arr1.each {
    |element|
    puts element
}

# find max
puts "Find Max in Array"
arr2 = [-99, 0, 123, -9, 432, -1]
puts arr2.max 

# average
puts "Find Average in Array"
# fdiv() for float division
def avg(arr)
    # can use arr.sum for one line
    sum = 0
    arr.each {
        |number|
        sum += number
    }
    return sum.fdiv(arr.length)
end
puts "#{avg([2, 10, 8])}"

# odd array
puts "Puts Odd Numbers To Array"
y = []
for i in 1..255
    y.push(i) unless i % 2 == 0
end
p y

# greater than y
puts "Greater Than Y"
def check_greater(array, y)
    results = array.select {
        |number|
        number > y
    }

    return results.length
end
puts check_greater([1,3,5,7,9,11,13], 3)

# square the values
puts "Square the Values"
def square(arr)
    return arr.collect {
        |number|
        number * number
    }
end
p square([1,5,10,-2])

# eliminate negative numbers
puts "Eliminate Negative Numbers"
def remove_negative(arr)
    return arr.collect {
        |number|
        number < 0 ? 0 : number
    }
end
p remove_negative([1,5,10,-2])

# shift
puts "Shift Array Elements"
def shift_array(arr)
    arr.shift
    return arr.push(0)
end
p shift_array([1,5,10,7,-2])

# replace negative
puts "Number to String"
def replace_negative(arr)
    return arr.collect {
        |number|
        number < 0 ? "Dojo" : number
    }
end
p replace_negative([-1, -3, 2])