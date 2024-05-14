require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ContentCustomization
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents the content options of External Identities to be customized throughout the authentication flow for a tenant.
            @attribute_collection
            ## 
            # A relative URL for the content options of External Identities to be customized throughout the authentication flow for a tenant.
            @attribute_collection_relative_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The registrationCampaign property
            @registration_campaign
            ## 
            # The registrationCampaignRelativeUrl property
            @registration_campaign_relative_url
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the attributeCollection property value. Represents the content options of External Identities to be customized throughout the authentication flow for a tenant.
            ## @return a key_value
            ## 
            def attribute_collection
                return @attribute_collection
            end
            ## 
            ## Sets the attributeCollection property value. Represents the content options of External Identities to be customized throughout the authentication flow for a tenant.
            ## @param value Value to set for the attributeCollection property.
            ## @return a void
            ## 
            def attribute_collection=(value)
                @attribute_collection = value
            end
            ## 
            ## Gets the attributeCollectionRelativeUrl property value. A relative URL for the content options of External Identities to be customized throughout the authentication flow for a tenant.
            ## @return a string
            ## 
            def attribute_collection_relative_url
                return @attribute_collection_relative_url
            end
            ## 
            ## Sets the attributeCollectionRelativeUrl property value. A relative URL for the content options of External Identities to be customized throughout the authentication flow for a tenant.
            ## @param value Value to set for the attributeCollectionRelativeUrl property.
            ## @return a void
            ## 
            def attribute_collection_relative_url=(value)
                @attribute_collection_relative_url = value
            end
            ## 
            ## Instantiates a new ContentCustomization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a content_customization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContentCustomization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attributeCollection" => lambda {|n| @attribute_collection = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "attributeCollectionRelativeUrl" => lambda {|n| @attribute_collection_relative_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "registrationCampaign" => lambda {|n| @registration_campaign = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "registrationCampaignRelativeUrl" => lambda {|n| @registration_campaign_relative_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the registrationCampaign property value. The registrationCampaign property
            ## @return a key_value
            ## 
            def registration_campaign
                return @registration_campaign
            end
            ## 
            ## Sets the registrationCampaign property value. The registrationCampaign property
            ## @param value Value to set for the registrationCampaign property.
            ## @return a void
            ## 
            def registration_campaign=(value)
                @registration_campaign = value
            end
            ## 
            ## Gets the registrationCampaignRelativeUrl property value. The registrationCampaignRelativeUrl property
            ## @return a string
            ## 
            def registration_campaign_relative_url
                return @registration_campaign_relative_url
            end
            ## 
            ## Sets the registrationCampaignRelativeUrl property value. The registrationCampaignRelativeUrl property
            ## @param value Value to set for the registrationCampaignRelativeUrl property.
            ## @return a void
            ## 
            def registration_campaign_relative_url=(value)
                @registration_campaign_relative_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("attributeCollection", @attribute_collection)
                writer.write_string_value("attributeCollectionRelativeUrl", @attribute_collection_relative_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("registrationCampaign", @registration_campaign)
                writer.write_string_value("registrationCampaignRelativeUrl", @registration_campaign_relative_url)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
