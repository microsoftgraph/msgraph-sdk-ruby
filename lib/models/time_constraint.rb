require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class TimeConstraint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The nature of the activity, optional. The possible values are: work, personal, unrestricted, or unknown.
            @activity_domain
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The timeSlots property
            @time_slots
            ## 
            ## Gets the activityDomain property value. The nature of the activity, optional. The possible values are: work, personal, unrestricted, or unknown.
            ## @return a activity_domain
            ## 
            def activity_domain
                return @activity_domain
            end
            ## 
            ## Sets the activityDomain property value. The nature of the activity, optional. The possible values are: work, personal, unrestricted, or unknown.
            ## @param value Value to set for the activity_domain property.
            ## @return a void
            ## 
            def activity_domain=(value)
                @activity_domain = value
            end
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
            ## Instantiates a new timeConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a time_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "activityDomain" => lambda {|n| @activity_domain = n.get_enum_value(MicrosoftGraph::Models::ActivityDomain) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "timeSlots" => lambda {|n| @time_slots = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TimeSlot.create_from_discriminator_value(pn) }) },
                }
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
                writer.write_enum_value("activityDomain", @activity_domain)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("timeSlots", @time_slots)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the timeSlots property value. The timeSlots property
            ## @return a time_slot
            ## 
            def time_slots
                return @time_slots
            end
            ## 
            ## Sets the timeSlots property value. The timeSlots property
            ## @param value Value to set for the time_slots property.
            ## @return a void
            ## 
            def time_slots=(value)
                @time_slots = value
            end
        end
    end
end
