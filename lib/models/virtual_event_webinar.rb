require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventWebinar < MicrosoftGraph::Models::VirtualEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The audience property
            @audience
            ## 
            # The coOrganizers property
            @co_organizers
            ## 
            # The registrations property
            @registrations
            ## 
            ## Gets the audience property value. The audience property
            ## @return a meeting_audience
            ## 
            def audience
                return @audience
            end
            ## 
            ## Sets the audience property value. The audience property
            ## @param value Value to set for the audience property.
            ## @return a void
            ## 
            def audience=(value)
                @audience = value
            end
            ## 
            ## Gets the coOrganizers property value. The coOrganizers property
            ## @return a communications_user_identity
            ## 
            def co_organizers
                return @co_organizers
            end
            ## 
            ## Sets the coOrganizers property value. The coOrganizers property
            ## @param value Value to set for the coOrganizers property.
            ## @return a void
            ## 
            def co_organizers=(value)
                @co_organizers = value
            end
            ## 
            ## Instantiates a new virtualEventWebinar and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_webinar
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventWebinar.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "audience" => lambda {|n| @audience = n.get_enum_value(MicrosoftGraph::Models::MeetingAudience) },
                    "coOrganizers" => lambda {|n| @co_organizers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CommunicationsUserIdentity.create_from_discriminator_value(pn) }) },
                    "registrations" => lambda {|n| @registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::VirtualEventRegistration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the registrations property value. The registrations property
            ## @return a virtual_event_registration
            ## 
            def registrations
                return @registrations
            end
            ## 
            ## Sets the registrations property value. The registrations property
            ## @param value Value to set for the registrations property.
            ## @return a void
            ## 
            def registrations=(value)
                @registrations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("audience", @audience)
                writer.write_collection_of_object_values("coOrganizers", @co_organizers)
                writer.write_collection_of_object_values("registrations", @registrations)
            end
        end
    end
end
