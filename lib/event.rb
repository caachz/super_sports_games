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

  def standard_deviation_age
    answer = StandardDeviation.new(@ages)
  end
end
