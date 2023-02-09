require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class UserAgent
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Identifies the version of application software used by this endpoint.
                @application_version
                ## 
                # User-agent header value reported by this endpoint.
                @header_value
                ## 
                # The OdataType property
                @odata_type
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
                ## Gets the applicationVersion property value. Identifies the version of application software used by this endpoint.
                ## @return a string
                ## 
                def application_version
                    return @application_version
                end
                ## 
                ## Sets the applicationVersion property value. Identifies the version of application software used by this endpoint.
                ## @param value Value to set for the application_version property.
                ## @return a void
                ## 
                def application_version=(value)
                    @application_version = value
                end
                ## 
                ## Instantiates a new userAgent and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a user_agent
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.callRecords.clientUserAgent"
                                return ClientUserAgent.new
                            when "#microsoft.graph.callRecords.serviceUserAgent"
                                return ServiceUserAgent.new
                        end
                    end
                    return UserAgent.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "applicationVersion" => lambda {|n| @application_version = n.get_string_value() },
                        "headerValue" => lambda {|n| @header_value = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the headerValue property value. User-agent header value reported by this endpoint.
                ## @return a string
                ## 
                def header_value
                    return @header_value
                end
                ## 
                ## Sets the headerValue property value. User-agent header value reported by this endpoint.
                ## @param value Value to set for the header_value property.
                ## @return a void
                ## 
                def header_value=(value)
                    @header_value = value
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
                    writer.write_string_value("applicationVersion", @application_version)
                    writer.write_string_value("headerValue", @header_value)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
