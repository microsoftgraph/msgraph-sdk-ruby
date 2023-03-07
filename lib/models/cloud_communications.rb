require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './call_records/call_record'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudCommunications < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The callRecords property
            @call_records
            ## 
            # The calls property
            @calls
            ## 
            # The onlineMeetings property
            @online_meetings
            ## 
            # The presences property
            @presences
            ## 
            ## Gets the callRecords property value. The callRecords property
            ## @return a call_record
            ## 
            def call_records
                return @call_records
            end
            ## 
            ## Sets the callRecords property value. The callRecords property
            ## @param value Value to set for the call_records property.
            ## @return a void
            ## 
            def call_records=(value)
                @call_records = value
            end
            ## 
            ## Gets the calls property value. The calls property
            ## @return a call
            ## 
            def calls
                return @calls
            end
            ## 
            ## Sets the calls property value. The calls property
            ## @param value Value to set for the calls property.
            ## @return a void
            ## 
            def calls=(value)
                @calls = value
            end
            ## 
            ## Instantiates a new CloudCommunications and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a cloud_communications
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudCommunications.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callRecords" => lambda {|n| @call_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CallRecords::CallRecord.create_from_discriminator_value(pn) }) },
                    "calls" => lambda {|n| @calls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Call.create_from_discriminator_value(pn) }) },
                    "onlineMeetings" => lambda {|n| @online_meetings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::OnlineMeeting.create_from_discriminator_value(pn) }) },
                    "presences" => lambda {|n| @presences = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Presence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the onlineMeetings property value. The onlineMeetings property
            ## @return a online_meeting
            ## 
            def online_meetings
                return @online_meetings
            end
            ## 
            ## Sets the onlineMeetings property value. The onlineMeetings property
            ## @param value Value to set for the online_meetings property.
            ## @return a void
            ## 
            def online_meetings=(value)
                @online_meetings = value
            end
            ## 
            ## Gets the presences property value. The presences property
            ## @return a presence
            ## 
            def presences
                return @presences
            end
            ## 
            ## Sets the presences property value. The presences property
            ## @param value Value to set for the presences property.
            ## @return a void
            ## 
            def presences=(value)
                @presences = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("callRecords", @call_records)
                writer.write_collection_of_object_values("calls", @calls)
                writer.write_collection_of_object_values("onlineMeetings", @online_meetings)
                writer.write_collection_of_object_values("presences", @presences)
            end
        end
    end
end
