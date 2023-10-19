require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProfileCardProperty < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The annotations property
            @annotations
            ## 
            # The directoryPropertyName property
            @directory_property_name
            ## 
            ## Gets the annotations property value. The annotations property
            ## @return a profile_card_annotation
            ## 
            def annotations
                return @annotations
            end
            ## 
            ## Sets the annotations property value. The annotations property
            ## @param value Value to set for the annotations property.
            ## @return a void
            ## 
            def annotations=(value)
                @annotations = value
            end
            ## 
            ## Instantiates a new profileCardProperty and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a profile_card_property
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProfileCardProperty.new
            end
            ## 
            ## Gets the directoryPropertyName property value. The directoryPropertyName property
            ## @return a string
            ## 
            def directory_property_name
                return @directory_property_name
            end
            ## 
            ## Sets the directoryPropertyName property value. The directoryPropertyName property
            ## @param value Value to set for the directoryPropertyName property.
            ## @return a void
            ## 
            def directory_property_name=(value)
                @directory_property_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "annotations" => lambda {|n| @annotations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProfileCardAnnotation.create_from_discriminator_value(pn) }) },
                    "directoryPropertyName" => lambda {|n| @directory_property_name = n.get_string_value() },
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
                writer.write_collection_of_object_values("annotations", @annotations)
                writer.write_string_value("directoryPropertyName", @directory_property_name)
            end
        end
    end
end
