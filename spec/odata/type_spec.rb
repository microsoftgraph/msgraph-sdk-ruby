require "spec_helper"
require "odata"

describe OData::Type do
  describe OData::EnumType do
    describe "#valid_value?" do
      Given(:members) do
        [
          {name: "lightBlue", value: "0"},
          {name: "lightGreen", value: "1"},
          {name: "lightOrange", value: "2"},
          {name: "lightGray", value: "3"},
          {name: "lightYellow", value: "4"},
          {name: "lightTeal", value: "5"},
          {name: "lightPink", value: "6"},
          {name: "lightBrown", value: "7"},
          {name: "lightRed", value: "8"},
          {name: "maxColor", value: "9"},
          {name: "auto", value: "-1"},
        ]
      end
      Given(:subject) { described_class.new(name: "calendarColor", members: members) }
      context "with a good value" do
        When(:name_result) { subject.valid_value?("lightTeal") }
        When(:value_result) { subject.valid_value?("9") }
        Then { name_result }
        Then { value_result }
      end
      context "with a bad value" do
        When(:result) { subject.valid_value?(345) }
        Then { ! result }
      end
    end
  end

  describe OData::ComplexType do
    describe "#valid_value?" do
      context "without a base type" do
        Given(:properties) do
          [
            OData::Property.new(name: "street", type: "Edm.String", nullable: false)
          ]
        end
        Given(:other_complex_type) { described_class.new(name: "pizza", properties: properties) }
        Given(:subject) { described_class.new(name: "address", properties: properties) }
        Given(:dummy_class) { Class.new }
        context "with a good value" do
          Given { allow_any_instance_of(dummy_class).to receive(:odata_type).and_return(subject.name) }
          When(:result) { subject.valid_value?(dummy_class.new) }
          Then { result }
        end
        context "with a bad value" do
          Given { allow(dummy_class).to receive(:odata_type).and_return(other_complex_type) }
          When(:result) { subject.valid_value?(dummy_class.new) }
          Then { ! result }
        end
      end
    end
  end
end
