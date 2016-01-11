require 'spec_helper'

create_classes

describe MicrosoftGraph::Base do
  describe MicrosoftGraph::PasswordProfile do
    Given(:init_hash) do
      {
        "password" => "super secret",
        "force_change_password_next_sign_in" => false,
      }
    end
    Given(:subject) { MicrosoftGraph::PasswordProfile.new(attributes: init_hash) }

    describe "#as_json" do

      context "default to return all properties" do
        When(:result) { subject.as_json }
        Then { result == init_hash }
      end

      context "include only specific attributes" do
        When(:result) { subject.as_json(only: [:force_change_password_next_sign_in]) }
        Then { result == { "force_change_password_next_sign_in" => false } }
      end

      context "exclude specific attributes" do
        When(:result) { subject.as_json(except: [:password]) }
        Then { result == { "force_change_password_next_sign_in" => false } }
      end
    end

    describe "#to_json" do
      context "default to return all properties" do
        When(:result) { subject.to_json }
        Then { result == init_hash.to_json }
      end

      context "include only specific attributes" do
        When(:result) { subject.to_json(only: [:force_change_password_next_sign_in]) }
        Then { result == { force_change_password_next_sign_in: false }.to_json }
      end

      context "exclude specific attributes" do
        When(:result) { subject.to_json(except: [:password]) }
        Then { result == { force_change_password_next_sign_in: false }.to_json }
      end
    end
  end
end
