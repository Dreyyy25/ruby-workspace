# Print 1-15
puts "Print 1 - 15"
for i in 1..15
    puts i
end

# Print even
puts "Print even numbers from 1-15"
for i in 1..15
    puts i if i % 2 == 0
end

#Print Haha
puts "Print Haha"
i = 0
laugh = ""
while(i <= 15) do
    laugh += "ha"
    puts "Laugh Intensity: #{i} | Saying: \"#{laugh}\""
    i += 1
end

# iterate through array
puts "Iterate Through Array"
arr1 = [1,3,10,2,7]
arr1.each {
    |element|
    puts element
}

# find max
puts "Find  Min in Array"
arr2 = [-99, 0, 123, -9, 432, -1]
puts arr2.min

# avg
puts "Find Average Grades"
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
puts "#{avg([77, 80, 85, 88])}%"

# even array
puts "Puts Even Numbers To Array"
y = []
for i in 1..255
    y.push(i) if i % 2 == 0
end
p y


# count passing
puts "Count Passing"
def check_greater(array, y)
    results = array.select {
        |number|
        number >= y
    }

    return results.length
end
puts check_greater([10, 5, 8, 7, 9], 8)

# square the values
puts "Cube the Values"
def cube(arr)
    return arr.collect {
        |number|
        number * number * number
    }
end
p cube([2, 1, 6, -3])

# digit to word
puts "Digit to Word"
def digit_to_word(arr)
    return arr.collect {
        |number|
        number == 0 ? "zero" : number
    }
end
p digit_to_word([1, 0, 0, -2])

# first last size
puts "First Last Size"
def arr_info(arr)
    size = arr.length
    result = {
        first: arr.shift,
        last: arr.pop,
        size: size
    }

    return result
end
p arr_info([1,5,10,-2])

# shift
puts "Shift Array Elements"
def shift_array(arr)
    first = arr.shift
    return arr.push(first)
end
p shift_array([1,5,10,7,-2])