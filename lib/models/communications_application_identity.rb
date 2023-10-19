require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CommunicationsApplicationIdentity < MicrosoftGraph::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The applicationType property
            @application_type
            ## 
            # The hidden property
            @hidden
            ## 
            ## Gets the applicationType property value. The applicationType property
            ## @return a string
            ## 
            def application_type
                return @application_type
            end
            ## 
            ## Sets the applicationType property value. The applicationType property
            ## @param value Value to set for the applicationType property.
            ## @return a void
            ## 
            def application_type=(value)
                @application_type = value
            end
            ## 
            ## Instantiates a new communicationsApplicationIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.communicationsApplicationIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a communications_application_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CommunicationsApplicationIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationType" => lambda {|n| @application_type = n.get_string_value() },
                    "hidden" => lambda {|n| @hidden = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hidden property value. The hidden property
            ## @return a boolean
            ## 
            def hidden
                return @hidden
            end
            ## 
            ## Sets the hidden property value. The hidden property
            ## @param value Value to set for the hidden property.
            ## @return a void
            ## 
            def hidden=(value)
                @hidden = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("applicationType", @application_type)
                writer.write_boolean_value("hidden", @hidden)
            end
        end
    end
end
