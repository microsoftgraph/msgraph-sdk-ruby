require 'spec_helper'

create_classes

describe MicrosoftGraph::User do
  Given(:attributes) { { "givenName" => "Angie" } }
  context "created manually" do
    Given(:subject) { MicrosoftGraph::User.new(attributes: attributes) }
    describe "#dirty?" do
      context "starts out dirty" do
        Then { subject.dirty? }
      end
    end
  end

  context "coming from the server" do
    Given(:subject) { MicrosoftGraph::User.new(attributes: attributes, persisted: true) }

    describe "#dirty?" do

      context "starts out not dirty" do
        Then { ! subject.dirty? }
      end

      context "becomes dirty when we modify a simple property" do
        When { subject.given_name = 'Angela' }
        Then { subject.dirty? }
      end

      context "becomes dirty when we set a complex property" do
        Given(:password_profile_attribues) { { password: 'sdfsdfsd', forceChangePasswordNextSignIn: false } }
        Given(:new_password_profile) { MicrosoftGraph::PasswordProfile.new(attributes: password_profile_attribues) }
        When { subject.password_profile = new_password_profile }
        Then { subject.dirty? }
      end

      context "becomes dirty when we set a nested property" do
        Given(:password_profile_attribues) { { password: 'sdfsdfsd', forceChangePasswordNextSignIn: false } }
        Given(:attributes) { { "givenName" => "Angie", "passwordProfile" => password_profile_attribues } }
        When { subject.password_profile.password = 'password' }
        Then { subject.dirty? }
      end

      context "becomes dirty when we append to a collection" do
        When { subject.business_phones << "555555555" }
        Then { subject.dirty? }
      end

      context "becomes dirty when we set a collection" do
        When { subject.business_phones = ["555555555"] }
        Then { subject.dirty? }
      end

      context "becomes dirty when we set a member of a collection" do
        When { subject.business_phones[0] = "555555555" }
        Then { subject.dirty? }
      end

      context "becomes dirty when we modify a collection member" do
        Given(:assigned_plan_attributes) do
          {
            assignedDateTime: "2011-01-01",
            capabilityStatus: "xxxxxx",
            service:          "yyyyyy",
            servicePlanId:    "abc-125",
          }
        end
        Given(:attributes) { { "givenName" => "Angie", "assignedPlans" => [assigned_plan_attributes] } }
        When { subject.assigned_plans.first.service = "zzzzzzz" }
        Then { subject.assigned_plans.first.dirty? }
        Then { subject.dirty? }
      end

    end
  end
end
