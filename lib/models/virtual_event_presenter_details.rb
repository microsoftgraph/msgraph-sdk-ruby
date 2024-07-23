require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventPresenterDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bio property
            @bio
            ## 
            # The company property
            @company
            ## 
            # The jobTitle property
            @job_title
            ## 
            # The linkedInProfileWebUrl property
            @linked_in_profile_web_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The personalSiteWebUrl property
            @personal_site_web_url
            ## 
            # The photo property
            @photo
            ## 
            # The twitterProfileWebUrl property
            @twitter_profile_web_url
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
            ## Gets the bio property value. The bio property
            ## @return a item_body
            ## 
            def bio
                return @bio
            end
            ## 
            ## Sets the bio property value. The bio property
            ## @param value Value to set for the bio property.
            ## @return a void
            ## 
            def bio=(value)
                @bio = value
            end
            ## 
            ## Gets the company property value. The company property
            ## @return a string
            ## 
            def company
                return @company
            end
            ## 
            ## Sets the company property value. The company property
            ## @param value Value to set for the company property.
            ## @return a void
            ## 
            def company=(value)
                @company = value
            end
            ## 
            ## Instantiates a new VirtualEventPresenterDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_presenter_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventPresenterDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bio" => lambda {|n| @bio = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "company" => lambda {|n| @company = n.get_string_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "linkedInProfileWebUrl" => lambda {|n| @linked_in_profile_web_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "personalSiteWebUrl" => lambda {|n| @personal_site_web_url = n.get_string_value() },
                    "photo" => lambda {|n| @photo = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "twitterProfileWebUrl" => lambda {|n| @twitter_profile_web_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the jobTitle property value. The jobTitle property
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The jobTitle property
            ## @param value Value to set for the jobTitle property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
            end
            ## 
            ## Gets the linkedInProfileWebUrl property value. The linkedInProfileWebUrl property
            ## @return a string
            ## 
            def linked_in_profile_web_url
                return @linked_in_profile_web_url
            end
            ## 
            ## Sets the linkedInProfileWebUrl property value. The linkedInProfileWebUrl property
            ## @param value Value to set for the linkedInProfileWebUrl property.
            ## @return a void
            ## 
            def linked_in_profile_web_url=(value)
                @linked_in_profile_web_url = value
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
            ## Gets the personalSiteWebUrl property value. The personalSiteWebUrl property
            ## @return a string
            ## 
            def personal_site_web_url
                return @personal_site_web_url
            end
            ## 
            ## Sets the personalSiteWebUrl property value. The personalSiteWebUrl property
            ## @param value Value to set for the personalSiteWebUrl property.
            ## @return a void
            ## 
            def personal_site_web_url=(value)
                @personal_site_web_url = value
            end
            ## 
            ## Gets the photo property value. The photo property
            ## @return a base64url
            ## 
            def photo
                return @photo
            end
            ## 
            ## Sets the photo property value. The photo property
            ## @param value Value to set for the photo property.
            ## @return a void
            ## 
            def photo=(value)
                @photo = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("bio", @bio)
                writer.write_string_value("company", @company)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_string_value("linkedInProfileWebUrl", @linked_in_profile_web_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("personalSiteWebUrl", @personal_site_web_url)
                writer.write_object_value("photo", @photo)
                writer.write_string_value("twitterProfileWebUrl", @twitter_profile_web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the twitterProfileWebUrl property value. The twitterProfileWebUrl property
            ## @return a string
            ## 
            def twitter_profile_web_url
                return @twitter_profile_web_url
            end
            ## 
            ## Sets the twitterProfileWebUrl property value. The twitterProfileWebUrl property
            ## @param value Value to set for the twitterProfileWebUrl property.
            ## @return a void
            ## 
            def twitter_profile_web_url=(value)
                @twitter_profile_web_url = value
            end
        end
    end
end
