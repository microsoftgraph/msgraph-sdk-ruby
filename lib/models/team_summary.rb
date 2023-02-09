require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TeamSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of guests in a team.
            @guests_count
            ## 
            # Count of members in a team.
            @members_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of owners in a team.
            @owners_count
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
            ## Instantiates a new teamSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a team_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "guestsCount" => lambda {|n| @guests_count = n.get_number_value() },
                    "membersCount" => lambda {|n| @members_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ownersCount" => lambda {|n| @owners_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the guestsCount property value. Count of guests in a team.
            ## @return a integer
            ## 
            def guests_count
                return @guests_count
            end
            ## 
            ## Sets the guestsCount property value. Count of guests in a team.
            ## @param value Value to set for the guests_count property.
            ## @return a void
            ## 
            def guests_count=(value)
                @guests_count = value
            end
            ## 
            ## Gets the membersCount property value. Count of members in a team.
            ## @return a integer
            ## 
            def members_count
                return @members_count
            end
            ## 
            ## Sets the membersCount property value. Count of members in a team.
            ## @param value Value to set for the members_count property.
            ## @return a void
            ## 
            def members_count=(value)
                @members_count = value
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
            ## Gets the ownersCount property value. Count of owners in a team.
            ## @return a integer
            ## 
            def owners_count
                return @owners_count
            end
            ## 
            ## Sets the ownersCount property value. Count of owners in a team.
            ## @param value Value to set for the owners_count property.
            ## @return a void
            ## 
            def owners_count=(value)
                @owners_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("guestsCount", @guests_count)
                writer.write_number_value("membersCount", @members_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("ownersCount", @owners_count)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
