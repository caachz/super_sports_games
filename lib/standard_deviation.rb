
ages = [24, 30, 18, 20, 41]
sum_of_ages = 0
total_ages = ages.count
diff_between_actual_and_mean = []
diff_squared = []
sum_of_diff_squared = 0

# Your code here for calculating the standard deviation
    ages.each do |age|
      sum_of_ages += age
    end

mean = sum_of_ages/total_ages

    ages.each do |age|
      diff_between_actual_and_mean << age - mean
    end

    diff_between_actual_and_mean.each do |age|
      diff_squared << age * age
    end

    diff_squared.each do |age|
      sum_of_diff_squared += age
    end

sum_of_diff_squared_devided_by_count = sum_of_diff_squared/total_ages

p sum_of_ages
p total_ages
p mean
p diff_between_actual_and_mean
p diff_squared
p sum_of_diff_squared
p sum_of_diff_squared_devided_by_count

# When you find the standard deviation, print it out
