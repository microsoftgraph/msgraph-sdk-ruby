require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceEnrollmentLimitConfiguration < MicrosoftGraph::Models::DeviceEnrollmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The maximum number of devices that a user can enroll
            @limit
            ## 
            ## Instantiates a new DeviceEnrollmentLimitConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceEnrollmentLimitConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_enrollment_limit_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceEnrollmentLimitConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "limit" => lambda {|n| @limit = n.get_number_value() },
                })
            end
            ## 
            ## Gets the limit property value. The maximum number of devices that a user can enroll
            ## @return a integer
            ## 
            def limit
                return @limit
            end
            ## 
            ## Sets the limit property value. The maximum number of devices that a user can enroll
            ## @param value Value to set for the limit property.
            ## @return a void
            ## 
            def limit=(value)
                @limit = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("limit", @limit)
            end
        end
    end
end
