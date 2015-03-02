def sort(toSort, locNumbers)
  switched = nil
  while switched != false
    switched = false
    for j in 0...toSort - 1
    #switched = false
      if locNumbers[j] < locNumbers[j+1]
       first = locNumbers[j]
       second = locNumbers[j+1]
       
       locNumbers[j] = second
       locNumbers[j+1] = first
       switched = true
        puts "/n"
      end
    end
  end
  return locNumbers
end


puts "How many numbers will you input?"
amount = STDIN.gets.to_i
numbers = Array.new(amount)

#index = amount - 1
for i in 0...amount
  puts "Enter number " + (i+1).to_s
  a = STDIN.gets.to_i
  numbers[i] = a
end

numbers = sort(amount, numbers)
puts "/n"
for k in 0...amount
  puts numbers[k]
end


