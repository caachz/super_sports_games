require 'minitest/autorun'
require 'minitest/pride'
require './lib/event.rb'

class EventTest < Minitest::Test
  def test_it_exists
    ski = Event.new("Skiing", [24, 30, 18, 20, 41])

    assert_instance_of Event, ski
  end

  def test_it_has_an_event
    ski = Event.new("Skiing", [24, 30, 18, 20, 41])

    assert_equal "Skiing", ski.event_name
  end

  def test_it_has_an_array_of_ages
    ski = Event.new("Skiing", [24, 30, 18, 20, 41])

    assert_equal [24, 30, 18, 20, 41], ski.age_of_participants
  end

  def test_it_can_pull_max_participant_age
    ski = Event.new("Skiing", [24, 30, 18, 20, 41])

    assert_equal 41, ski.max_age
  end

  def test_it_can_pull_min_participant_age
    ski = Event.new("Skiing", [24, 30, 18, 20, 41])

    assert_equal 18, ski.min_age
  end
end
