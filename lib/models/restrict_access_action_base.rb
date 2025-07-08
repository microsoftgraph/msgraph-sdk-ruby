require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestrictAccessActionBase < MicrosoftGraph::Models::DlpActionInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Action for the app to take. The possible values are: warn, audit, block.
            @restriction_action
            ## 
            ## Instantiates a new RestrictAccessActionBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restrict_access_action_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.restrictAccessAction"
                            return RestrictAccessAction.new
                    end
                end
                return RestrictAccessActionBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "restrictionAction" => lambda {|n| @restriction_action = n.get_enum_value(MicrosoftGraph::Models::RestrictionAction) },
                })
            end
            ## 
            ## Gets the restrictionAction property value. Action for the app to take. The possible values are: warn, audit, block.
            ## @return a restriction_action
            ## 
            def restriction_action
                return @restriction_action
            end
            ## 
            ## Sets the restrictionAction property value. Action for the app to take. The possible values are: warn, audit, block.
            ## @param value Value to set for the restrictionAction property.
            ## @return a void
            ## 
            def restriction_action=(value)
                @restriction_action = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("restrictionAction", @restriction_action)
            end
        end
    end
end
