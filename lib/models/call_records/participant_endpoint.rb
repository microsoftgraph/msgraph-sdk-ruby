require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './call_records'

module MicrosoftGraph
    module Models
        module CallRecords
            class ParticipantEndpoint < MicrosoftGraph::Models::CallRecords::Endpoint
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # CPU number of cores used by the media endpoint.
                @cpu_cores_count
                ## 
                # CPU name used by the media endpoint.
                @cpu_name
                ## 
                # CPU processor speed used by the media endpoint.
                @cpu_processor_speed_in_mhz
                ## 
                # The feedback provided by the user of this endpoint about the quality of the session.
                @feedback
                ## 
                # Identity associated with the endpoint.
                @identity
                ## 
                # Name of the device used by the media endpoint.
                @name
                ## 
                ## Instantiates a new participantEndpoint and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.callRecords.participantEndpoint"
                end
                ## 
                ## Gets the cpuCoresCount property value. CPU number of cores used by the media endpoint.
                ## @return a integer
                ## 
                def cpu_cores_count
                    return @cpu_cores_count
                end
                ## 
                ## Sets the cpuCoresCount property value. CPU number of cores used by the media endpoint.
                ## @param value Value to set for the cpu_cores_count property.
                ## @return a void
                ## 
                def cpu_cores_count=(value)
                    @cpu_cores_count = value
                end
                ## 
                ## Gets the cpuName property value. CPU name used by the media endpoint.
                ## @return a string
                ## 
                def cpu_name
                    return @cpu_name
                end
                ## 
                ## Sets the cpuName property value. CPU name used by the media endpoint.
                ## @param value Value to set for the cpu_name property.
                ## @return a void
                ## 
                def cpu_name=(value)
                    @cpu_name = value
                end
                ## 
                ## Gets the cpuProcessorSpeedInMhz property value. CPU processor speed used by the media endpoint.
                ## @return a integer
                ## 
                def cpu_processor_speed_in_mhz
                    return @cpu_processor_speed_in_mhz
                end
                ## 
                ## Sets the cpuProcessorSpeedInMhz property value. CPU processor speed used by the media endpoint.
                ## @param value Value to set for the cpu_processor_speed_in_mhz property.
                ## @return a void
                ## 
                def cpu_processor_speed_in_mhz=(value)
                    @cpu_processor_speed_in_mhz = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a participant_endpoint
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ParticipantEndpoint.new
                end
                ## 
                ## Gets the feedback property value. The feedback provided by the user of this endpoint about the quality of the session.
                ## @return a user_feedback
                ## 
                def feedback
                    return @feedback
                end
                ## 
                ## Sets the feedback property value. The feedback provided by the user of this endpoint about the quality of the session.
                ## @param value Value to set for the feedback property.
                ## @return a void
                ## 
                def feedback=(value)
                    @feedback = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "cpuCoresCount" => lambda {|n| @cpu_cores_count = n.get_number_value() },
                        "cpuName" => lambda {|n| @cpu_name = n.get_string_value() },
                        "cpuProcessorSpeedInMhz" => lambda {|n| @cpu_processor_speed_in_mhz = n.get_number_value() },
                        "feedback" => lambda {|n| @feedback = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CallRecords::UserFeedback.create_from_discriminator_value(pn) }) },
                        "identity" => lambda {|n| @identity = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the identity property value. Identity associated with the endpoint.
                ## @return a identity_set
                ## 
                def identity
                    return @identity
                end
                ## 
                ## Sets the identity property value. Identity associated with the endpoint.
                ## @param value Value to set for the identity property.
                ## @return a void
                ## 
                def identity=(value)
                    @identity = value
                end
                ## 
                ## Gets the name property value. Name of the device used by the media endpoint.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Name of the device used by the media endpoint.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_number_value("cpuCoresCount", @cpu_cores_count)
                    writer.write_string_value("cpuName", @cpu_name)
                    writer.write_number_value("cpuProcessorSpeedInMhz", @cpu_processor_speed_in_mhz)
                    writer.write_object_value("feedback", @feedback)
                    writer.write_object_value("identity", @identity)
                    writer.write_string_value("name", @name)
                end
            end
        end
    end
end
