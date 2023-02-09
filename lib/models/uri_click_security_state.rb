require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UriClickSecurityState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The clickAction property
            @click_action
            ## 
            # The clickDateTime property
            @click_date_time
            ## 
            # The id property
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The sourceId property
            @source_id
            ## 
            # The uriDomain property
            @uri_domain
            ## 
            # The verdict property
            @verdict
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
            ## Gets the clickAction property value. The clickAction property
            ## @return a string
            ## 
            def click_action
                return @click_action
            end
            ## 
            ## Sets the clickAction property value. The clickAction property
            ## @param value Value to set for the click_action property.
            ## @return a void
            ## 
            def click_action=(value)
                @click_action = value
            end
            ## 
            ## Gets the clickDateTime property value. The clickDateTime property
            ## @return a date_time
            ## 
            def click_date_time
                return @click_date_time
            end
            ## 
            ## Sets the clickDateTime property value. The clickDateTime property
            ## @param value Value to set for the click_date_time property.
            ## @return a void
            ## 
            def click_date_time=(value)
                @click_date_time = value
            end
            ## 
            ## Instantiates a new uriClickSecurityState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a uri_click_security_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UriClickSecurityState.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "clickAction" => lambda {|n| @click_action = n.get_string_value() },
                    "clickDateTime" => lambda {|n| @click_date_time = n.get_date_time_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "uriDomain" => lambda {|n| @uri_domain = n.get_string_value() },
                    "verdict" => lambda {|n| @verdict = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
                writer.write_string_value("clickAction", @click_action)
                writer.write_date_time_value("clickDateTime", @click_date_time)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sourceId", @source_id)
                writer.write_string_value("uriDomain", @uri_domain)
                writer.write_string_value("verdict", @verdict)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceId property value. The sourceId property
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The sourceId property
            ## @param value Value to set for the source_id property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the uriDomain property value. The uriDomain property
            ## @return a string
            ## 
            def uri_domain
                return @uri_domain
            end
            ## 
            ## Sets the uriDomain property value. The uriDomain property
            ## @param value Value to set for the uri_domain property.
            ## @return a void
            ## 
            def uri_domain=(value)
                @uri_domain = value
            end
            ## 
            ## Gets the verdict property value. The verdict property
            ## @return a string
            ## 
            def verdict
                return @verdict
            end
            ## 
            ## Sets the verdict property value. The verdict property
            ## @param value Value to set for the verdict property.
            ## @return a void
            ## 
            def verdict=(value)
                @verdict = value
            end
        end
    end
end
