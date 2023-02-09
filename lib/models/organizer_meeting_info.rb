require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OrganizerMeetingInfo < MicrosoftGraph::Models::MeetingInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The organizer property
            @organizer
            ## 
            ## Instantiates a new OrganizerMeetingInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.organizerMeetingInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a organizer_meeting_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrganizerMeetingInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "organizer" => lambda {|n| @organizer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the organizer property value. The organizer property
            ## @return a identity_set
            ## 
            def organizer
                return @organizer
            end
            ## 
            ## Sets the organizer property value. The organizer property
            ## @param value Value to set for the organizer property.
            ## @return a void
            ## 
            def organizer=(value)
                @organizer = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("organizer", @organizer)
            end
        end
    end
end
