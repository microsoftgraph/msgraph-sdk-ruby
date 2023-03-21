require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeletedTeam < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The channels that are either shared with this deleted team or created in this deleted team.
            @channels
            ## 
            ## Gets the channels property value. The channels that are either shared with this deleted team or created in this deleted team.
            ## @return a channel
            ## 
            def channels
                return @channels
            end
            ## 
            ## Sets the channels property value. The channels that are either shared with this deleted team or created in this deleted team.
            ## @param value Value to set for the channels property.
            ## @return a void
            ## 
            def channels=(value)
                @channels = value
            end
            ## 
            ## Instantiates a new deletedTeam and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a deleted_team
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeletedTeam.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "channels" => lambda {|n| @channels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("channels", @channels)
            end
        end
    end
end
