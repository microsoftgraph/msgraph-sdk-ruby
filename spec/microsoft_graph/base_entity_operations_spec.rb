require 'spec_helper'

create_classes

describe MicrosoftGraph::BaseEntity do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) do
    MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback)
  end

  describe "actions" do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/me")
        .and_return(body: {id: '123'}.to_json)
    end
    Given!(:subject) { graph.me }
    context "return types" do
      context "#assign_license returns a singular type" do
        Given do
          stub_request(:post, "https://graph.microsoft.com/v1.0/users/123/assignLicense")
            .and_return(body: {id: '123'}.to_json)
        end
        When(:result) { subject.assign_license(remove_licenses: ['guid1234']) }
        Then { MicrosoftGraph::User === result }
      end

      context '#check_member_groups returns a collection' do
        Given do
          stub_request(:post, "https://graph.microsoft.com/v1.0/users/123/checkMemberGroups")
            .and_return(body: {value: ["group1", "group2"]}.to_json)
        end
        When(:result) { subject.check_member_groups(groupIds: ['group1', 'group2', 'group3']) }
        Then { result.length == 2 }
        Then { MicrosoftGraph::Collection === result }
      end

      context "#change_password has no return type" do
        Given do
          stub_request(:post, "https://graph.microsoft.com/v1.0/users/123/changePassword")
            .and_return(body: {value: ["group1", "group2"]}.to_json)
        end
        When(:result) { subject.change_password(current_password: "old", new_password: "new") }
        Then { result.nil? }
      end
    end
  end

  describe "functions" do
    Given do
      stub_request(:get, "https://graph.microsoft.com/v1.0/me")
        .and_return(body: {id: '123'}.to_json)
    end
    Given!(:subject) { graph.me }
    context "return types" do
      context '#reminder_view returns a collection' do
        Given(:uri) { "https://graph.microsoft.com/v1.0/users/123/microsoft.graph.reminderView(startDateTime='today',endDateTime='tomorrow')"}
        Given do
          stub_request(:get, uri)
            .and_return(body: {value: [{eventSubject: "a reminder"}]}.to_json)
        end
        When(:result) { subject.reminder_view(start_date_time: "today", end_date_time: "tomorrow")}
        Then { MicrosoftGraph::Collection === result }
        Then { result.length == 1 }
      end
    end
  end
end
