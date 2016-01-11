require 'spec_helper'

describe MicrosoftGraph::ClassBuilder do
  describe ".load!" do
    Given(:service) { OData::Service.new(base_url: "https://graph.microsoft.com/v1.0/", namespace: "microsoft.graph", metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml")) }
    When { MicrosoftGraph::ClassBuilder.load!(service) }
    Then { defined?(MicrosoftGraph::Entity) }

    context "entity type User" do
      describe "class" do
        Then { defined?(MicrosoftGraph::User) }
        Then { MicrosoftGraph::User.superclass == MicrosoftGraph::DirectoryObject }
        context "will tell you the odata type that defined it" do
          Then { OData::EntityType === MicrosoftGraph::User.odata_type }
          Then { MicrosoftGraph::User.odata_type.name == "microsoft.graph.user" }
        end
      end
      describe "instance" do
        When(:subject) { MicrosoftGraph::User.new }
        Then { subject.properties.length == 42 }
        Then { subject.respond_to?(:given_name) }
        context "inherits the id property" do
          Then { subject.respond_to?(:id) }
          Then { subject.id.nil? }
        end
      end
    end

    context "complex type Attendee" do
      Then { defined?(MicrosoftGraph::Attendee) }
      Then { MicrosoftGraph::Attendee.superclass == MicrosoftGraph::Recipient }
      Then { MicrosoftGraph::Attendee.new.respond_to?(:status) }
      Then { MicrosoftGraph::Attendee.new.respond_to?(:email_address) }
      Then { MicrosoftGraph::Attendee.new.properties.length == 3 }
    end
  end

  it 'has a version number' do
    expect(MicrosoftGraph::VERSION).not_to be nil
  end
end
