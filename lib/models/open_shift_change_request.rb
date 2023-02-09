require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OpenShiftChangeRequest < MicrosoftGraph::Models::ScheduleChangeRequest
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID for the open shift.
            @open_shift_id
            ## 
            ## Instantiates a new OpenShiftChangeRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.openShiftChangeRequest"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a open_shift_change_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenShiftChangeRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "openShiftId" => lambda {|n| @open_shift_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the openShiftId property value. ID for the open shift.
            ## @return a string
            ## 
            def open_shift_id
                return @open_shift_id
            end
            ## 
            ## Sets the openShiftId property value. ID for the open shift.
            ## @param value Value to set for the open_shift_id property.
            ## @return a void
            ## 
            def open_shift_id=(value)
                @open_shift_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("openShiftId", @open_shift_id)
            end
        end
    end
end
