require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class VerifiedPublisher
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # The timestamp when the verified publisher was first added or most recently updated.
        @added_date_time
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The verified publisher name from the app publisher's Partner Center account.
        @display_name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The ID of the verified publisher from the app publisher's Partner Center account.
        @verified_publisher_id
        ## 
        ## Gets the addedDateTime property value. The timestamp when the verified publisher was first added or most recently updated.
        ## @return a date_time
        ## 
        def added_date_time
            return @added_date_time
        end
        ## 
        ## Sets the addedDateTime property value. The timestamp when the verified publisher was first added or most recently updated.
        ## @param value Value to set for the added_date_time property.
        ## @return a void
        ## 
        def added_date_time=(value)
            @added_date_time = value
        end
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new verifiedPublisher and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a verified_publisher
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VerifiedPublisher.new
        end
        ## 
        ## Gets the displayName property value. The verified publisher name from the app publisher's Partner Center account.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The verified publisher name from the app publisher's Partner Center account.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "addedDateTime" => lambda {|n| @added_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "verifiedPublisherId" => lambda {|n| @verified_publisher_id = n.get_string_value() },
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
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_date_time_value("addedDateTime", @added_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("verifiedPublisherId", @verified_publisher_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the verifiedPublisherId property value. The ID of the verified publisher from the app publisher's Partner Center account.
        ## @return a string
        ## 
        def verified_publisher_id
            return @verified_publisher_id
        end
        ## 
        ## Sets the verifiedPublisherId property value. The ID of the verified publisher from the app publisher's Partner Center account.
        ## @param value Value to set for the verified_publisher_id property.
        ## @return a void
        ## 
        def verified_publisher_id=(value)
            @verified_publisher_id = value
        end
    end
end
