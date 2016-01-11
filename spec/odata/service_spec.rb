require "spec_helper"
require "odata"

describe OData::Service do
  describe "#initialize" do
    context "without cached metadata file" do
      Given(:http_response) { double(code: "200", is_success?: true, body: File.read(File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml"))) }
      Given { allow_any_instance_of(Net::HTTP).to receive(:get).and_return(http_response) }
      When(:result) { OData::Service.new(base_url: "https://graph.microsoft.com/v1.0/", namespace: "microsoft.graph") }
      Then { result.base_url ==  "https://graph.microsoft.com/v1.0/"}
      Then { result.namespace == "microsoft.graph" }
      Then { result.metadata.xpath("//EntityType").length == 30 }
    end

    context "with cached metadata file" do
      Given { expect_any_instance_of(Net::HTTP).to_not receive(:get) }
      When(:result) { OData::Service.new(base_url: "https://graph.microsoft.com/v1.0/", namespace: "microsoft.graph", metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml")) }
      Then { result.base_url ==  "https://graph.microsoft.com/v1.0/"}
      Then { result.namespace == "microsoft.graph" }
      Then { result.metadata.xpath("//EntityType").length == 30 }
    end
  end

  describe "instance" do
    Given(:subject) {
      OData::Service.new(
        base_url: "https://graph.microsoft.com/v1.0/",
        namespace: "microsoft.graph",
        metadata_file: File.join(MicrosoftGraph::CACHED_METADATA_DIRECTORY, "metadata_v1.0.xml")
      )
    }

    describe "odata types" do
      describe "#complex_types" do
        When(:complex_types) { subject.complex_types }
        Then { complex_types.length == 42 }
        Then { OData::Type === complex_types.first }
        Then { OData::ComplexType === complex_types.first }
      end

      describe "#enum_types" do
        When(:enum_types) { subject.enum_types }
        Then { enum_types.length == 13 }
        Then { OData::EnumType === enum_types.first }
        Then { OData::Type === enum_types.first }
        Then { enum_types.first.members.length > 0 }
      end

      describe "#entity_types" do
        When(:entity_types) { subject.entity_types }
        Then { entity_types.length == 30 }
        Then { OData::EntityType === entity_types.first }
        Then { OData::Type === entity_types.first }
      end

      describe "#actions" do
        When(:actions) { subject.actions }
        Then { actions.length == 31 }
        Then { OData::Operation === actions.first }
      end
      describe "#functions" do
        When(:functions) { subject.functions }
        Then { functions.length == 2 }
        Then { OData::Operation === functions.first }
      end
    end

    describe "#entity_sets" do

      context "has the right data" do
        When(:result) { subject.entity_sets }
        Then { result.length == 9 }
        Then { OData::EntitySet === result.first}
      end
    end

    describe "#get_type_by_name" do

      context "for primitive type" do
        When(:result) { subject.get_type_by_name("Edm.String") }
        Then { result.name == "Edm.String" }
        Then { OData::PrimitiveType === result }
      end

      context "for enum type" do
        When(:result) { subject.get_type_by_name("microsoft.graph.calendarColor") }
        Then { result.name == "microsoft.graph.calendarColor" }
        Then { OData::EnumType === result }
      end

      context "for entity type" do
        When(:result) { subject.get_type_by_name("microsoft.graph.group") }
        Then { result.name == "microsoft.graph.group" }
        Then { OData::EntityType === result }
      end

      context "for complex type" do
        When(:result) { subject.get_type_by_name("microsoft.graph.assignedPlan") }
        Then { result.name == "microsoft.graph.assignedPlan" }
        Then { OData::ComplexType === result }
      end

      context "for collections" do
        context "of primitive type" do
          When(:result) { subject.get_type_by_name("Collection(Edm.String)") }
          Then { result.name == "Collection(Edm.String)" }
          Then { result.member_type.name == "Edm.String" }
          Then { OData::CollectionType === result }
        end

        context "of complex type" do
          When(:result) { subject.get_type_by_name("Collection(microsoft.graph.assignedPlan)") }
          Then { result.name == "Collection(microsoft.graph.assignedPlan)" }
          Then { result.member_type.name == "microsoft.graph.assignedPlan" }
          Then { OData::CollectionType === result }
        end

        context "of entity type" do
          When(:result) { subject.get_type_by_name("Collection(microsoft.graph.user)") }
          Then { result.name == "Collection(microsoft.graph.user)" }
          Then { result.member_type.name == "microsoft.graph.user" }
          Then { OData::CollectionType === result }
        end

        context "of enum type" do
          When(:result) { subject.get_type_by_name("Collection(microsoft.graph.dayOfWeek)") }
          Then { result.name == "Collection(microsoft.graph.dayOfWeek)" }
          Then { result.member_type.name == "microsoft.graph.dayOfWeek" }
          Then { OData::CollectionType === result }
        end

        context "of entity type" do
          When(:result) { subject.get_type_by_name("Collection(microsoft.graph.message)") }
          Then { result.name == "Collection(microsoft.graph.message)" }
          Then { result.member_type.name == "microsoft.graph.message" }
          Then { OData::CollectionType === result }
        end
      end
    end

    describe "#get_type_for_odata_response" do
      Given(:base_url) { "https://graph.microsoft.com/v1.0/$metadata" }
      When(:result) { subject.get_type_for_odata_response(odata_context) }

      context "with a collection" do
        context "with individual odata.type on individual entries" do
          Given(:odata_response) {
            JSON.parse <<-JSON
              {
                  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
                  "value": [
                      {
                          "@odata.type": "#microsoft.graph.user",
                          "id": "e2d03a91-9ebd-4940-b3c5-e8d95075175a",
                          "businessPhones": [
                              "+1 732 555 0102"
                          ],
                          "displayName": "Pavel Bansky",
                          "givenName": "Pavel",
                          "jobTitle": "VP Sales",
                          "mail": "PavelB@testdouble.onmicrosoft.com",
                          "mobilePhone": null,
                          "officeLocation": "19/3123",
                          "preferredLanguage": "en-US",
                          "surname": "Bansky",
                          "userPrincipalName": "PavelB@testdouble.onmicrosoft.com"
                      },
                      {
                          "@odata.type": "#microsoft.graph.user",
                          "id": "0da9467c-a1b5-4cfa-b73f-01bd8474ab5e",
                          "businessPhones": [
                              "+1 858 555 0109"
                          ],
                          "displayName": "Zrinka Makovac",
                          "givenName": "Zrinka",
                          "jobTitle": "VP Marketing",
                          "mail": "ZrinkaM@testdouble.onmicrosoft.com",
                          "mobilePhone": null,
                          "officeLocation": "131/2103",
                          "preferredLanguage": "en-US",
                          "surname": "Makovac",
                          "userPrincipalName": "ZrinkaM@testdouble.onmicrosoft.com"
                      }
                  ]
              }
            JSON
          }
          When(:result) { subject.get_type_for_odata_response(odata_response) }
          Then { result.member_type == subject.get_type_by_name("Collection(microsoft.graph.directoryObject)").member_type }
        end

        context "without odata.type on individual entries" do
          Given(:odata_response) {
            JSON.parse <<-JSON
              {
                "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users",
                "value": [
                    {
                        "businessPhones": [],
                        "displayName": "Conf Room Adams",
                        "givenName": null,
                        "jobTitle": null,
                        "mail": "Adams@testdouble.onmicrosoft.com",
                        "mobilePhone": null,
                        "officeLocation": null,
                        "preferredLanguage": null,
                        "surname": null,
                        "userPrincipalName": "Adams@testdouble.onmicrosoft.com",
                        "id": "6c1bf6b8-1ad2-478d-861f-8de7d214b883"
                    },
                    {
                        "businessPhones": [
                            "8006427676"
                        ],
                        "displayName": "MOD Administrator",
                        "givenName": "MOD",
                        "jobTitle": null,
                        "mail": "admin@testdouble.onmicrosoft.com",
                        "mobilePhone": "5555555555",
                        "officeLocation": null,
                        "preferredLanguage": "en-US",
                        "surname": "Administrator",
                        "userPrincipalName": "admin@testdouble.onmicrosoft.com",
                        "id": "dca66aa6-8957-4e35-8bc0-4595b7a32067"
                    }
                ]
              }
            JSON
          }
          When(:result) { subject.get_type_for_odata_response(odata_response) }
          Then { result.name == 'Collection(microsoft.graph.user)' }
        end
      end

      context "with a singular entity" do
        context "with a odata.type" do
          Given(:odata_response) {
            JSON.parse <<-JSON
              {
                "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects/$entity",
                "@odata.type": "#microsoft.graph.user",
                "id": "fa5b9d97-b52c-4b32-941a-9fe42857caf1",
                "businessPhones": [
                    "+1 502 555 0144"
                ],
                "displayName": "Anne Wallace",
                "givenName": "Anne",
                "jobTitle": "President",
                "mail": "AnneW@testdouble.onmicrosoft.com",
                "mobilePhone": null,
                "officeLocation": "15/1102",
                "preferredLanguage": "en-US",
                "surname": "Wallace",
                "userPrincipalName": "AnneW@testdouble.onmicrosoft.com"
              }
            JSON
          }
          When(:result) { subject.get_type_for_odata_response(odata_response) }
          Then { result.name == 'microsoft.graph.user' }
        end

        context "without an odata.type" do
          Given(:odata_response) {
            JSON.parse <<-JSON
              {
                  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
                  "businessPhones": [
                      "8006427676"
                  ],
                  "displayName": "MOD Administrator",
                  "givenName": "MOD",
                  "jobTitle": null,
                  "mail": "admin@testdouble.onmicrosoft.com",
                  "mobilePhone": "5555555555",
                  "officeLocation": null,
                  "preferredLanguage": "en-US",
                  "surname": "Administrator",
                  "userPrincipalName": "admin@testdouble.onmicrosoft.com",
                  "id": "dca66aa6-8957-4e35-8bc0-4595b7a32067"
              }
            JSON
          }
          When(:result) { subject.get_type_for_odata_response(odata_response) }
          Then { result.name == 'microsoft.graph.user' }
        end
      end
    end
  end
end
