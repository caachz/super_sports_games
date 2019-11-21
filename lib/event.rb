class Event
  attr_reader :event_name :age_of_participants
  attr_accessor :name, :age

  def initialize(event_name, age_of_participants)
    @event_name = event_name
    @age_of_participants = age_of_participants
  end
end
