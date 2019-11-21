class StandardDeviation
  attr_reader :ages

  def initialize(ages)
    @ages = ages
  end

  def return_standard_deviation
    sum_of_ages = 0
    total_ages = ages.count
    diff_between_actual_and_mean = []
    diff_squared = []
    sum_of_diff_squared = 0

      ages.each do |age|
        sum_of_ages += age
      end

    mean = sum_of_ages.to_f/total_ages.to_f

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
    square_root_of_sum_of_diff_squared_devided_by_count = Math.sqrt(sum_of_diff_squared_devided_by_count)

    p square_root_of_sum_of_diff_squared_devided_by_count
  end
end



# ages = [24, 30, 18, 20, 41]
# sum_of_ages = 0
# total_ages = ages.count
# diff_between_actual_and_mean = []
# diff_squared = []
# sum_of_diff_squared = 0
#
# # Your code here for calculating the standard deviation
#     ages.each do |age|
#       sum_of_ages += age
#     end
#
# mean = sum_of_ages.to_f/total_ages.to_f
#
#     ages.each do |age|
#       diff_between_actual_and_mean << age - mean
#     end
#
#     diff_between_actual_and_mean.each do |age|
#       diff_squared << age * age
#     end
#
#     diff_squared.each do |age|
#       sum_of_diff_squared += age
#     end
#
# sum_of_diff_squared_devided_by_count = sum_of_diff_squared/total_ages
# square_root_of_sum_of_diff_squared_devided_by_count = Math.sqrt(sum_of_diff_squared_devided_by_count)
#
# p square_root_of_sum_of_diff_squared_devided_by_count
#
# end
#
# # When you find the standard deviation, print it out
