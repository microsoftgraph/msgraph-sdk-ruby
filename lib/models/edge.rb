require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Edge < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A container for Internet Explorer mode resources.
            @internet_explorer_mode
            ## 
            ## Instantiates a new Edge and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a edge
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Edge.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "internetExplorerMode" => lambda {|n| @internet_explorer_mode = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InternetExplorerMode.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the internetExplorerMode property value. A container for Internet Explorer mode resources.
            ## @return a internet_explorer_mode
            ## 
            def internet_explorer_mode
                return @internet_explorer_mode
            end
            ## 
            ## Sets the internetExplorerMode property value. A container for Internet Explorer mode resources.
            ## @param value Value to set for the internetExplorerMode property.
            ## @return a void
            ## 
            def internet_explorer_mode=(value)
                @internet_explorer_mode = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("internetExplorerMode", @internet_explorer_mode)
            end
        end
    end
end
