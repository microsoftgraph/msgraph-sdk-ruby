require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AttendeeAvailability
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The email address and type of attendee - whether it's a person or a resource, and whether required or optional if it's a person.
            @attendee
            ## 
            # The availability status of the attendee. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            @availability
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the attendee property value. The email address and type of attendee - whether it's a person or a resource, and whether required or optional if it's a person.
            ## @return a attendee_base
            ## 
            def attendee
                return @attendee
            end
            ## 
            ## Sets the attendee property value. The email address and type of attendee - whether it's a person or a resource, and whether required or optional if it's a person.
            ## @param value Value to set for the attendee property.
            ## @return a void
            ## 
            def attendee=(value)
                @attendee = value
            end
            ## 
            ## Gets the availability property value. The availability status of the attendee. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @return a free_busy_status
            ## 
            def availability
                return @availability
            end
            ## 
            ## Sets the availability property value. The availability status of the attendee. The possible values are: free, tentative, busy, oof, workingElsewhere, unknown.
            ## @param value Value to set for the availability property.
            ## @return a void
            ## 
            def availability=(value)
                @availability = value
            end
            ## 
            ## Instantiates a new attendeeAvailability and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attendee_availability
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttendeeAvailability.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attendee" => lambda {|n| @attendee = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::AttendeeBase.create_from_discriminator_value(pn) }) },
                    "availability" => lambda {|n| @availability = n.get_enum_value(MicrosoftGraph::Models::FreeBusyStatus) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_object_value("attendee", @attendee)
                writer.write_enum_value("availability", @availability)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
