require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EmergencyCallerInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The displayName property
            @display_name
            ## 
            # The location property
            @location
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phoneNumber property
            @phone_number
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The upn property
            @upn
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
            ## Instantiates a new EmergencyCallerInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a emergency_caller_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmergencyCallerInfo.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Location.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                }
            end
            ## 
            ## Gets the location property value. The location property
            ## @return a location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location property
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
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
            ## Gets the phoneNumber property value. The phoneNumber property
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phoneNumber property
            ## @param value Value to set for the phoneNumber property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("location", @location)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("upn", @upn)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the upn property value. The upn property
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. The upn property
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
        end
    end
end
