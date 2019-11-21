class Event
  attr_reader :event_name, :age_of_participants

  def initialize(event_name, age_of_participants)
    @event_name = event_name
    @age_of_participants = age_of_participants
  end

  def max_age
    @age_of_participants.max
  end

  def min_age
    @age_of_participants.min
  end

  def average_age
    @age_of_participants.each do |age|
      sum_of_ages += age
    end
    sum_of_ages = sum_of_ages/ @age_of_participants.count
  end
end
