require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class StaffAvailabilityItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Each item in this collection indicates a slot and the status of the staff member.
            @availability_items
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The ID of the staff member.
            @staff_id
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
            ## Gets the availabilityItems property value. Each item in this collection indicates a slot and the status of the staff member.
            ## @return a availability_item
            ## 
            def availability_items
                return @availability_items
            end
            ## 
            ## Sets the availabilityItems property value. Each item in this collection indicates a slot and the status of the staff member.
            ## @param value Value to set for the availability_items property.
            ## @return a void
            ## 
            def availability_items=(value)
                @availability_items = value
            end
            ## 
            ## Instantiates a new staffAvailabilityItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a staff_availability_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return StaffAvailabilityItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "availabilityItems" => lambda {|n| @availability_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AvailabilityItem.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "staffId" => lambda {|n| @staff_id = n.get_string_value() },
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
                writer.write_collection_of_object_values("availabilityItems", @availability_items)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("staffId", @staff_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the staffId property value. The ID of the staff member.
            ## @return a string
            ## 
            def staff_id
                return @staff_id
            end
            ## 
            ## Sets the staffId property value. The ID of the staff member.
            ## @param value Value to set for the staff_id property.
            ## @return a void
            ## 
            def staff_id=(value)
                @staff_id = value
            end
        end
    end
end
