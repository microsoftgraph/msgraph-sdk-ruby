require 'spec_helper'

create_classes

describe MicrosoftGraph::RecurrencePattern do
  describe "add to a collection of an enum type" do
    Given(:subject) { MicrosoftGraph::RecurrencePattern.new }
    context "with the correct type" do
      Given(:day_of_week) { "monday" }
      When { subject.days_of_week << day_of_week }
      Then { subject.days_of_week.include? day_of_week }
      Then { subject.days_of_week.length == 1 }
    end

    context "with an invalid value" do
      When(:result) { subject.days_of_week << "bargsday" }
      Then { result == Failure(MicrosoftGraph::TypeError) }
      Then { subject.days_of_week.length == 0 }
    end

    context "with the incorrect type" do
      When(:result) { subject.days_of_week << 45 }
      Then { result == Failure(MicrosoftGraph::TypeError) }
      Then { subject.days_of_week.length == 0 }
    end
  end

  describe "#initialize" do
    context "with attribute values" do
      Given(:attributes) { { "first_day_of_week" => "wednesday" } }
      Given(:subject) { MicrosoftGraph::RecurrencePattern.new(attributes: attributes) }
      When(:result) { subject.first_day_of_week }
      Then { result == "wednesday" }
    end
  end

  describe "serialization" do
    context "with attribute values" do
      Given(:attributes) { { "first_day_of_week" => "wednesday" } }
      Given(:subject) { MicrosoftGraph::RecurrencePattern.new(attributes: attributes) }
      When(:result) { subject.as_json }
      Then { result == attributes }
    end
  end
end
