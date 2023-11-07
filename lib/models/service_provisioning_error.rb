require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ServiceProvisioningError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The isResolved property
            @is_resolved
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The serviceInstance property
            @service_instance
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
            ## Instantiates a new serviceProvisioningError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_provisioning_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.serviceProvisioningXmlError"
                            return ServiceProvisioningXmlError.new
                    end
                end
                return ServiceProvisioningError.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isResolved" => lambda {|n| @is_resolved = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "serviceInstance" => lambda {|n| @service_instance = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isResolved property value. The isResolved property
            ## @return a boolean
            ## 
            def is_resolved
                return @is_resolved
            end
            ## 
            ## Sets the isResolved property value. The isResolved property
            ## @param value Value to set for the isResolved property.
            ## @return a void
            ## 
            def is_resolved=(value)
                @is_resolved = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isResolved", @is_resolved)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("serviceInstance", @service_instance)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serviceInstance property value. The serviceInstance property
            ## @return a string
            ## 
            def service_instance
                return @service_instance
            end
            ## 
            ## Sets the serviceInstance property value. The serviceInstance property
            ## @param value Value to set for the serviceInstance property.
            ## @return a void
            ## 
            def service_instance=(value)
                @service_instance = value
            end
        end
    end
end
