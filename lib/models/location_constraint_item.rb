require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LocationConstraintItem < MicrosoftGraph::Models::Location
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If set to true and the specified resource is busy, findMeetingTimes looks for another resource that is free. If set to false and the specified resource is busy, findMeetingTimes returns the resource best ranked in the user's cache without checking if it's free. Default is true.
            @resolve_availability
            ## 
            ## Instantiates a new LocationConstraintItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.locationConstraintItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a location_constraint_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LocationConstraintItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "resolveAvailability" => lambda {|n| @resolve_availability = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the resolveAvailability property value. If set to true and the specified resource is busy, findMeetingTimes looks for another resource that is free. If set to false and the specified resource is busy, findMeetingTimes returns the resource best ranked in the user's cache without checking if it's free. Default is true.
            ## @return a boolean
            ## 
            def resolve_availability
                return @resolve_availability
            end
            ## 
            ## Sets the resolveAvailability property value. If set to true and the specified resource is busy, findMeetingTimes looks for another resource that is free. If set to false and the specified resource is busy, findMeetingTimes returns the resource best ranked in the user's cache without checking if it's free. Default is true.
            ## @param value Value to set for the resolve_availability property.
            ## @return a void
            ## 
            def resolve_availability=(value)
                @resolve_availability = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("resolveAvailability", @resolve_availability)
            end
        end
    end
end
