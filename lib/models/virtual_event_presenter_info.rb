require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventPresenterInfo < MicrosoftGraph::Models::MeetingParticipantInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The presenterDetails property
            @presenter_details
            ## 
            ## Instantiates a new VirtualEventPresenterInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.virtualEventPresenterInfo"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_presenter_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventPresenterInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "presenterDetails" => lambda {|n| @presenter_details = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::VirtualEventPresenterDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the presenterDetails property value. The presenterDetails property
            ## @return a virtual_event_presenter_details
            ## 
            def presenter_details
                return @presenter_details
            end
            ## 
            ## Sets the presenterDetails property value. The presenterDetails property
            ## @param value Value to set for the presenterDetails property.
            ## @return a void
            ## 
            def presenter_details=(value)
                @presenter_details = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("presenterDetails", @presenter_details)
            end
        end
    end
end
