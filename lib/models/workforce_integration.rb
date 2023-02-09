require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class WorkforceIntegration < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # API version for the call back URL. Start with 1.
            @api_version
            ## 
            # Name of the workforce integration.
            @display_name
            ## 
            # The workforce integration encryption resource.
            @encryption
            ## 
            # Indicates whether this workforce integration is currently active and available.
            @is_active
            ## 
            # The Shifts entities supported for synchronous change notifications. Shifts will make a call back to the url provided on client changes on those entities added here. By default, no entities are supported for change notifications. Possible values are: none, shift, swapRequest, userShiftPreferences, openshift, openShiftRequest, offerShiftRequest, unknownFutureValue.
            @supported_entities
            ## 
            # Workforce Integration URL for callbacks from the Shifts service.
            @url
            ## 
            ## Gets the apiVersion property value. API version for the call back URL. Start with 1.
            ## @return a integer
            ## 
            def api_version
                return @api_version
            end
            ## 
            ## Sets the apiVersion property value. API version for the call back URL. Start with 1.
            ## @param value Value to set for the api_version property.
            ## @return a void
            ## 
            def api_version=(value)
                @api_version = value
            end
            ## 
            ## Instantiates a new WorkforceIntegration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.workforceIntegration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workforce_integration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkforceIntegration.new
            end
            ## 
            ## Gets the displayName property value. Name of the workforce integration.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the workforce integration.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the encryption property value. The workforce integration encryption resource.
            ## @return a workforce_integration_encryption
            ## 
            def encryption
                return @encryption
            end
            ## 
            ## Sets the encryption property value. The workforce integration encryption resource.
            ## @param value Value to set for the encryption property.
            ## @return a void
            ## 
            def encryption=(value)
                @encryption = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiVersion" => lambda {|n| @api_version = n.get_number_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "encryption" => lambda {|n| @encryption = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::WorkforceIntegrationEncryption.create_from_discriminator_value(pn) }) },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                    "supportedEntities" => lambda {|n| @supported_entities = n.get_enum_value(MicrosoftGraph::Models::WorkforceIntegrationSupportedEntities) },
                    "url" => lambda {|n| @url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isActive property value. Indicates whether this workforce integration is currently active and available.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. Indicates whether this workforce integration is currently active and available.
            ## @param value Value to set for the is_active property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("apiVersion", @api_version)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("encryption", @encryption)
                writer.write_boolean_value("isActive", @is_active)
                writer.write_enum_value("supportedEntities", @supported_entities)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the supportedEntities property value. The Shifts entities supported for synchronous change notifications. Shifts will make a call back to the url provided on client changes on those entities added here. By default, no entities are supported for change notifications. Possible values are: none, shift, swapRequest, userShiftPreferences, openshift, openShiftRequest, offerShiftRequest, unknownFutureValue.
            ## @return a workforce_integration_supported_entities
            ## 
            def supported_entities
                return @supported_entities
            end
            ## 
            ## Sets the supportedEntities property value. The Shifts entities supported for synchronous change notifications. Shifts will make a call back to the url provided on client changes on those entities added here. By default, no entities are supported for change notifications. Possible values are: none, shift, swapRequest, userShiftPreferences, openshift, openShiftRequest, offerShiftRequest, unknownFutureValue.
            ## @param value Value to set for the supported_entities property.
            ## @return a void
            ## 
            def supported_entities=(value)
                @supported_entities = value
            end
            ## 
            ## Gets the url property value. Workforce Integration URL for callbacks from the Shifts service.
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. Workforce Integration URL for callbacks from the Shifts service.
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
