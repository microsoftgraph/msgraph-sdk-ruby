require 'spec_helper'

describe "paths" do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end
  When(:result) { graph.path }
  Then { result.nil? }

  describe "singletons" do
    context "me" do
      Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/me").and_return({body: {id: 'userID'}.to_json}) }
      Given(:subject) { graph.me }
      Then { MicrosoftGraph === subject.parent }
      When(:result) { subject.path }
      Then { result == 'users/userID' }
    end
    context "drive" do
      Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/drive").and_return({body: {id: 'driveID'}.to_json}) }
      Given(:subject) { graph.drive }
      Then { MicrosoftGraph === subject.parent }
      When(:result) { subject.path }
      Then { result == 'drives/driveID' }
    end
  end

  describe "entity sets" do
    context "users" do
      Given(:subject) { graph.users }
      Then { MicrosoftGraph === subject.parent }
      When(:result) { subject.path }
      Then { result == 'users' }
    end
    context "groups" do
      Given(:subject) { graph.groups }
      Then { MicrosoftGraph === subject.parent }
      When(:result) { subject.path }
      Then { result == 'groups' }
    end
  end

  describe "singular navigation_property" do
    context "off 'me'" do
      Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/me").and_return({body: {id: 'userID'}.to_json}) }
      context "#me.calendar" do
        Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/users/userID/calendar").and_return({body: {id: 'calendarID'}.to_json}) }
        Given(:subject) { graph.me.calendar }
        Then { MicrosoftGraph::Calendar === subject }
        Then { MicrosoftGraph::User === subject.parent }
        When(:result) { subject.path }
        Then { result == 'users/userID/calendars/calendarID' }
      end
      context '#me.manager' do
        Given do
          stub_request(:get,  "https://graph.microsoft.com/v1.0/users/userID/manager")
            .and_return(
              body: {
                "@odata.type" => "microsoft.graph.user",
                "id" => 'managerID'
              }.to_json
            )
        end
        Given(:subject) { graph.me.manager }
        Then { MicrosoftGraph::User === subject.parent }
        When(:result) { subject.path }
        Then { result == 'users/managerID' }
      end
    end
    context "off 'drive'" do
      Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/drive").and_return({body: {id: 'driveID'}.to_json}) }
      Given do
        stub_request(:get,  "https://graph.microsoft.com/v1.0/drives/driveID/special")
          .and_return({ body: { value: [] }.to_json })
      end
      context '#drive.special' do
        Given(:subject) { graph.drive.special }
        Then { MicrosoftGraph::Drive === subject.parent }
        When(:result) { subject.path }
        Then { result == 'drives/driveID/special' }
      end
      context '#drive.special.find(itemID).created_by_user' do
        Given do
          stub_request(:get,  "https://graph.microsoft.com/v1.0/drives/driveID/special/itemID")
            .and_return({ body: { id: 'itemID' }.to_json })
        end
        Given do
          stub_request(:get,  "https://graph.microsoft.com/v1.0/drives/driveID/items/itemID/createdByUser")
            .and_return({ body: { id: 'createdByUserID' }.to_json })
        end
        Given(:subject) { graph.drive.special.find('itemID').created_by_user }
        Then { MicrosoftGraph::DriveItem === subject.parent }
        When(:result) { subject.path }
        Then { result == 'users/createdByUserID' }
      end
    end
  end

  describe "collection navigation_properties" do
    Given { stub_request(:get,  "https://graph.microsoft.com/v1.0/users/userID").and_return({body: {id: 'userID'}.to_json}) }
    Given do
      stub_request(:get,  "https://graph.microsoft.com/v1.0/users/userID/calendarGroups/calendarGroupID")
        .and_return(body: {id: 'calendarGroupID'}.to_json)
    end
    context '#users.find("userID").contacts' do
      Given(:subject) { graph.users.find("userID").contacts }
      Then { MicrosoftGraph::User === subject.parent }
      When(:result) { subject.path }
      Then { result == 'users/userID/contacts' }
    end
    context '#users.find("userID").calendar_groups.find("calendarGroupID").calendars' do
      Given(:subject) { graph.users.find("userID").calendar_groups.find("calendarGroupID").calendars }
      Then { MicrosoftGraph::CalendarGroup === subject.parent }
      When(:result) { subject.path }
      Then { result == 'users/userID/calendarGroups/calendarGroupID/calendars'}
    end
    context '#users.find("userID").calendar_groups.find("calendarGroupID")' do
      Given(:subject) { graph.users.find("userID").calendar_groups.find("calendarGroupID") }
      Then { MicrosoftGraph::CalendarGroup === subject }
      Then { MicrosoftGraph::CollectionAssociation === subject.parent }
      When(:result) { subject.path }
      Then { result == 'users/userID/calendarGroups/calendarGroupID'}
    end
  end
end
