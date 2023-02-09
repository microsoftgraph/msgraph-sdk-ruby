require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Set of allowed and not allowed actions for a resource.
        class ResourceAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Allowed Actions
            @allowed_resource_actions
            ## 
            # Not Allowed Actions.
            @not_allowed_resource_actions
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
            ## Gets the allowedResourceActions property value. Allowed Actions
            ## @return a string
            ## 
            def allowed_resource_actions
                return @allowed_resource_actions
            end
            ## 
            ## Sets the allowedResourceActions property value. Allowed Actions
            ## @param value Value to set for the allowed_resource_actions property.
            ## @return a void
            ## 
            def allowed_resource_actions=(value)
                @allowed_resource_actions = value
            end
            ## 
            ## Instantiates a new resourceAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a resource_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ResourceAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedResourceActions" => lambda {|n| @allowed_resource_actions = n.get_collection_of_primitive_values(String) },
                    "notAllowedResourceActions" => lambda {|n| @not_allowed_resource_actions = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the notAllowedResourceActions property value. Not Allowed Actions.
            ## @return a string
            ## 
            def not_allowed_resource_actions
                return @not_allowed_resource_actions
            end
            ## 
            ## Sets the notAllowedResourceActions property value. Not Allowed Actions.
            ## @param value Value to set for the not_allowed_resource_actions property.
            ## @return a void
            ## 
            def not_allowed_resource_actions=(value)
                @not_allowed_resource_actions = value
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
                writer.write_collection_of_primitive_values("allowedResourceActions", @allowed_resource_actions)
                writer.write_collection_of_primitive_values("notAllowedResourceActions", @not_allowed_resource_actions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
