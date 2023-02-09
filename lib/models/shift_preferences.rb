require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ShiftPreferences < MicrosoftGraph::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Availability of the user to be scheduled for work and its recurrence pattern.
            @availability
            ## 
            ## Gets the availability property value. Availability of the user to be scheduled for work and its recurrence pattern.
            ## @return a shift_availability
            ## 
            def availability
                return @availability
            end
            ## 
            ## Sets the availability property value. Availability of the user to be scheduled for work and its recurrence pattern.
            ## @param value Value to set for the availability property.
            ## @return a void
            ## 
            def availability=(value)
                @availability = value
            end
            ## 
            ## Instantiates a new ShiftPreferences and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.shiftPreferences"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shift_preferences
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ShiftPreferences.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availability" => lambda {|n| @availability = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ShiftAvailability.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("availability", @availability)
            end
        end
    end
end
