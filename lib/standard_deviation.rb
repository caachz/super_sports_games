
ages = [24, 30, 18, 20, 41]
sum_of_ages = 0
total_ages = ages.count

# Your code here for calculating the standard deviation
    ages.each do |age|
      sum_of_ages += age
    end

mean = sum_of_ages/total_ages

p total_ages
p amount_of_ages

# When you find the standard deviation, print it out
