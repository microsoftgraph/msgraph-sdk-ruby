require "spec_helper"
require "odata"

describe "OData string converters" do
  describe "#convert_to_camel_case" do
    context "on strings already in camel case" do
      When(:result) { OData.convert_to_camel_case("emailAddress") }
      Then { result == 'emailAddress' }
    end
    context "on strings in a weird mix between snake and camel" do
      When(:result) { OData.convert_to_camel_case("email_AddressDomain") }
      Then { result == 'emailAddressDomain' }
    end
    context "on snake case strings" do
      When(:result) { OData.convert_to_camel_case("email_address") }
      Then { result == 'emailAddress' }
    end
    context "on capitalized strings" do
      When(:result) { OData.convert_to_camel_case("EmailAddress") }
      Then { result == 'emailAddress' }
    end
    context "on capitalized strings" do
      When(:result) { OData.convert_to_camel_case(:email_address) }
      Then { result == 'emailAddress' }
    end
  end
  describe "#convert_to_snake_case" do
    context "on strings already in snake case" do
      When(:result) { OData.convert_to_snake_case("email_address") }
      Then { result == "email_address" }
    end
    context "on camel case strings" do
      When(:result) { OData.convert_to_snake_case("emailAddress") }
      Then { result == "email_address" }
    end
    context "on camel case strings" do
      When(:result) { OData.convert_to_snake_case(:emailAddress) }
      Then { result == "email_address" }
    end
    context "on capitalized strings" do
      When(:result) { OData.convert_to_snake_case("EmailAddress") }
      Then { result == "email_address" }
    end
  end
end
