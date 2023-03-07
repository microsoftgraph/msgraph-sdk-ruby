require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/clonable_team_parts'
require_relative '../../../../models/team_visibility_type'
require_relative '../../../me'
require_relative '../../joined_teams'
require_relative '../item'
require_relative './clone'

module MicrosoftGraph
    module Me
        module JoinedTeams
            module Item
                module Clone
                    class ClonePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The classification property
                        @classification
                        ## 
                        # The description property
                        @description
                        ## 
                        # The displayName property
                        @display_name
                        ## 
                        # The mailNickname property
                        @mail_nickname
                        ## 
                        # The partsToClone property
                        @parts_to_clone
                        ## 
                        # The visibility property
                        @visibility
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
                        ## Gets the classification property value. The classification property
                        ## @return a string
                        ## 
                        def classification
                            return @classification
                        end
                        ## 
                        ## Sets the classification property value. The classification property
                        ## @param value Value to set for the classification property.
                        ## @return a void
                        ## 
                        def classification=(value)
                            @classification = value
                        end
                        ## 
                        ## Instantiates a new clonePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a clone_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ClonePostRequestBody.new
                        end
                        ## 
                        ## Gets the description property value. The description property
                        ## @return a string
                        ## 
                        def description
                            return @description
                        end
                        ## 
                        ## Sets the description property value. The description property
                        ## @param value Value to set for the description property.
                        ## @return a void
                        ## 
                        def description=(value)
                            @description = value
                        end
                        ## 
                        ## Gets the displayName property value. The displayName property
                        ## @return a string
                        ## 
                        def display_name
                            return @display_name
                        end
                        ## 
                        ## Sets the displayName property value. The displayName property
                        ## @param value Value to set for the display_name property.
                        ## @return a void
                        ## 
                        def display_name=(value)
                            @display_name = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "classification" => lambda {|n| @classification = n.get_string_value() },
                                "description" => lambda {|n| @description = n.get_string_value() },
                                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                                "mailNickname" => lambda {|n| @mail_nickname = n.get_string_value() },
                                "partsToClone" => lambda {|n| @parts_to_clone = n.get_enum_value(MicrosoftGraph::Models::ClonableTeamParts) },
                                "visibility" => lambda {|n| @visibility = n.get_enum_value(MicrosoftGraph::Models::TeamVisibilityType) },
                            }
                        end
                        ## 
                        ## Gets the mailNickname property value. The mailNickname property
                        ## @return a string
                        ## 
                        def mail_nickname
                            return @mail_nickname
                        end
                        ## 
                        ## Sets the mailNickname property value. The mailNickname property
                        ## @param value Value to set for the mail_nickname property.
                        ## @return a void
                        ## 
                        def mail_nickname=(value)
                            @mail_nickname = value
                        end
                        ## 
                        ## Gets the partsToClone property value. The partsToClone property
                        ## @return a clonable_team_parts
                        ## 
                        def parts_to_clone
                            return @parts_to_clone
                        end
                        ## 
                        ## Sets the partsToClone property value. The partsToClone property
                        ## @param value Value to set for the parts_to_clone property.
                        ## @return a void
                        ## 
                        def parts_to_clone=(value)
                            @parts_to_clone = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("classification", @classification)
                            writer.write_string_value("description", @description)
                            writer.write_string_value("displayName", @display_name)
                            writer.write_string_value("mailNickname", @mail_nickname)
                            writer.write_enum_value("partsToClone", @parts_to_clone)
                            writer.write_enum_value("visibility", @visibility)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the visibility property value. The visibility property
                        ## @return a team_visibility_type
                        ## 
                        def visibility
                            return @visibility
                        end
                        ## 
                        ## Sets the visibility property value. The visibility property
                        ## @param value Value to set for the visibility property.
                        ## @return a void
                        ## 
                        def visibility=(value)
                            @visibility = value
                        end
                    end
                end
            end
        end
    end
end
