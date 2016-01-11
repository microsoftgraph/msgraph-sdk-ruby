require 'spec_helper'

create_classes

describe MicrosoftGraph::Calendar do
  Given(:auth_callback) { Proc.new { |r| r.headers["Authorization"] = 'anything'} }
  Given(:cached_metadata_file) { File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml") }
  Given(:graph) { MicrosoftGraph.new(cached_metadata_file: cached_metadata_file, &auth_callback) }
  Given do
    stub_request(:get, "https://graph.microsoft.com/v1.0/me")
      .and_return( body: { id: 'userID', }.to_json )
  end
  Given(:subject) { graph.me.calendar }

  describe 'enum field' do

    describe 'coming back from the server' do

      describe 'as an invalid' do

        describe 'string' do
          Given do
            stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID/calendar")
              .and_return(
                body: {
                  id: 'calendarID',
                  color: 'salmon',
                }.to_json
              )
          end
          Then { subject.color == 'salmon' }
        end

        describe 'integer' do
          Given do
            stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID/calendar")
              .and_return(
                body: {
                  id: 'calendarID',
                  color: 99,
                }.to_json
              )
          end
          Then { subject.color == '99' }
        end
      end

      describe 'as a valid' do

        describe 'string' do
          Given do
            stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID/calendar")
              .and_return(
                body: {
                  id: 'calendarID',
                  color: 'lightGreen',
                }.to_json
              )
          end
          Then { subject.color == 'lightGreen' }
        end

        describe 'integer' do
          Given do
            stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID/calendar")
              .and_return(
                body: {
                  id: 'calendarID',
                  color: 2,
                }.to_json
              )
          end
          Then { subject.color == 'lightOrange' }
        end
      end
    end

    describe 'being assigned' do
      Given do
        stub_request(:get, "https://graph.microsoft.com/v1.0/users/userID/calendar")
          .and_return( body: { id: 'calendarID' }.to_json)
      end

      describe 'an invalid' do

        describe 'string' do
          When(:result) { subject.color = 'salmon' }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end

        describe 'integer' do
          When(:result) { subject.color = 99 }
          Then { result == Failure(MicrosoftGraph::TypeError) }
        end
      end

      describe 'a valid' do

        describe 'string' do
          When { subject.color = 'lightOrange' }
          Then { subject.color == 'lightOrange' }
        end

        describe 'integer' do
          When { subject.color = 2 }
          Then { subject.color == 'lightOrange' }
        end
      end
    end
  end
end
