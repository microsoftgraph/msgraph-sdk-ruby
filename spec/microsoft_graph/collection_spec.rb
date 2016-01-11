require 'spec_helper'

create_classes

describe MicrosoftGraph::Collection do
  Given(:type) do
    OData::CollectionType.new(
      name: "Collection(Edm.String)",
      member_type: OData::StringType.new
    )
  end
  Given(:subject) { described_class.new(type) }

  describe "#<<" do

    context "accepts a good value" do
      When(:result) { subject << "a string" }
      Then { result }
    end

    context "rejects a bad value" do
      When(:result) { subject << :nope }
      Then { result == Failure(MicrosoftGraph::TypeError) }
    end
  end

  describe "#new" do
    context "on a collection of non-entity-types" do
      When(:result) { subject.new() }
      Then { result == Failure(NoMethodError) }
      Then { ! subject.dirty? }
    end
  end
end
