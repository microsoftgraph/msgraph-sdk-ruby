require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftStoreForBusinessAppAssignmentSettings < MicrosoftGraph::Models::MobileAppAssignmentSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether or not to use device execution context for Microsoft Store for Business mobile app.
            @use_device_context
            ## 
            ## Instantiates a new MicrosoftStoreForBusinessAppAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.microsoftStoreForBusinessAppAssignmentSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_store_for_business_app_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftStoreForBusinessAppAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "useDeviceContext" => lambda {|n| @use_device_context = n.get_boolean_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("useDeviceContext", @use_device_context)
            end
            ## 
            ## Gets the useDeviceContext property value. Whether or not to use device execution context for Microsoft Store for Business mobile app.
            ## @return a boolean
            ## 
            def use_device_context
                return @use_device_context
            end
            ## 
            ## Sets the useDeviceContext property value. Whether or not to use device execution context for Microsoft Store for Business mobile app.
            ## @param value Value to set for the use_device_context property.
            ## @return a void
            ## 
            def use_device_context=(value)
                @use_device_context = value
            end
        end
    end
end
