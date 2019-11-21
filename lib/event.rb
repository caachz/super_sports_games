require './lib/standard_deviation.rb'

class Event
  attr_reader :event_name, :ages

  def initialize(event_name, ages)
    @event_name = event_name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum_of_ages = 0.00
    @ages.each do |age|
      sum_of_ages += age
    end
    sum_of_ages = sum_of_ages/ @ages.count
  end

  def standard_deviation_age(@ages)
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
