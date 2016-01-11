require 'spec_helper'
require 'odata'

describe OData::Request do
  Given(:result) { OData::Request.new(:get, "my_url")}
  Then { result.method == :get }
  Then { result.uri == URI("my_url") }
  Then { result.headers["Content-Type"] == 'application/json' }

  context "#perform" do

    context "without data" do
      Given do
        stub_request(:get, "https://example.com")
          .to_return(body: {id: 'exampleID'}.to_json)
      end
      Given(:subject) { OData::Request.new(:get, "https://example.com") }
      When(:result) { subject.perform }
      Then { result["id"] == 'exampleID' }
    end

    context "with data" do
      Given do
        stub_request(:post, "https://example.com")
          .with(body: {name: "Toad"})
          .to_return(body: {id: "toadID", name: "Toad"}.to_json)
      end
      Given(:subject) { OData::Request.new(:post, "https://example.com", {name: "Toad"}.to_json) }
      When(:result) { subject.perform }
      Then { result["name"] == "Toad" }
    end

    context "bad authentication" do
      Given { stub_request(:get, "https://example.com").to_return(status: 401) }
      Given(:subject) { OData::Request.new(:get, "https://example.com") }
      When(:result) { subject.perform }
      Then { result == Failure(OData::AuthenticationError) }
    end

    context "unauthorized" do
      Given { stub_request(:get, "https://example.com").to_return(status: 403) }
      Given(:subject) { OData::Request.new(:get, "https://example.com") }
      When(:result) { subject.perform }
      Then { result == Failure(OData::AuthorizationError) }
    end
  end
end
