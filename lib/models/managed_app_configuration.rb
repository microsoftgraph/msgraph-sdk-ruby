require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ManagedAppConfiguration < MicrosoftGraph::Models::ManagedAppPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service
            @custom_settings
            ## 
            ## Instantiates a new ManagedAppConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedAppConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.targetedManagedAppConfiguration"
                            return TargetedManagedAppConfiguration.new
                    end
                end
                return ManagedAppConfiguration.new
            end
            ## 
            ## Gets the customSettings property value. A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service
            ## @return a key_value_pair
            ## 
            def custom_settings
                return @custom_settings
            end
            ## 
            ## Sets the customSettings property value. A set of string key and string value pairs to be sent to apps for users to whom the configuration is scoped, unalterned by this service
            ## @param value Value to set for the custom_settings property.
            ## @return a void
            ## 
            def custom_settings=(value)
                @custom_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customSettings" => lambda {|n| @custom_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("customSettings", @custom_settings)
            end
        end
    end
end
