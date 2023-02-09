require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LocationConstraint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The client requests the service to include in the response a meeting location for the meeting. If this is true and all the resources are busy, findMeetingTimes will not return any meeting time suggestions. If this is false and all the resources are busy, findMeetingTimes would still look for meeting times without locations.
            @is_required
            ## 
            # Constraint information for one or more locations that the client requests for the meeting.
            @locations
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The client requests the service to suggest one or more meeting locations.
            @suggest_location
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
            ## Instantiates a new locationConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a location_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LocationConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "locations" => lambda {|n| @locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::LocationConstraintItem.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "suggestLocation" => lambda {|n| @suggest_location = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the isRequired property value. The client requests the service to include in the response a meeting location for the meeting. If this is true and all the resources are busy, findMeetingTimes will not return any meeting time suggestions. If this is false and all the resources are busy, findMeetingTimes would still look for meeting times without locations.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. The client requests the service to include in the response a meeting location for the meeting. If this is true and all the resources are busy, findMeetingTimes will not return any meeting time suggestions. If this is false and all the resources are busy, findMeetingTimes would still look for meeting times without locations.
            ## @param value Value to set for the is_required property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
            end
            ## 
            ## Gets the locations property value. Constraint information for one or more locations that the client requests for the meeting.
            ## @return a location_constraint_item
            ## 
            def locations
                return @locations
            end
            ## 
            ## Sets the locations property value. Constraint information for one or more locations that the client requests for the meeting.
            ## @param value Value to set for the locations property.
            ## @return a void
            ## 
            def locations=(value)
                @locations = value
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
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_collection_of_object_values("locations", @locations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("suggestLocation", @suggest_location)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the suggestLocation property value. The client requests the service to suggest one or more meeting locations.
            ## @return a boolean
            ## 
            def suggest_location
                return @suggest_location
            end
            ## 
            ## Sets the suggestLocation property value. The client requests the service to suggest one or more meeting locations.
            ## @param value Value to set for the suggest_location property.
            ## @return a void
            ## 
            def suggest_location=(value)
                @suggest_location = value
            end
        end
    end
end
