require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PersistentBrowserSessionControl < MicrosoftGraph::Models::ConditionalAccessSessionControl
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values are: always, never.
            @mode
            ## 
            ## Instantiates a new PersistentBrowserSessionControl and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.persistentBrowserSessionControl"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a persistent_browser_session_control
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PersistentBrowserSessionControl.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mode" => lambda {|n| @mode = n.get_enum_value(MicrosoftGraph::Models::PersistentBrowserSessionMode) },
                })
            end
            ## 
            ## Gets the mode property value. Possible values are: always, never.
            ## @return a persistent_browser_session_mode
            ## 
            def mode
                return @mode
            end
            ## 
            ## Sets the mode property value. Possible values are: always, never.
            ## @param value Value to set for the mode property.
            ## @return a void
            ## 
            def mode=(value)
                @mode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("mode", @mode)
            end
        end
    end
end
