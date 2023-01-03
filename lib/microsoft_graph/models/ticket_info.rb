require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class TicketInfo
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The ticket number.
        @ticket_number
        ## 
        # The description of the ticket system.
        @ticket_system
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
        ## Instantiates a new ticketInfo and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ticket_info
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TicketInfo.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "ticketNumber" => lambda {|n| @ticket_number = n.get_string_value() },
                "ticketSystem" => lambda {|n| @ticket_system = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("ticketNumber", @ticket_number)
            writer.write_string_value("ticketSystem", @ticket_system)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the ticketNumber property value. The ticket number.
        ## @return a string
        ## 
        def ticket_number
            return @ticket_number
        end
        ## 
        ## Sets the ticketNumber property value. The ticket number.
        ## @param value Value to set for the ticketNumber property.
        ## @return a void
        ## 
        def ticket_number=(value)
            @ticket_number = value
        end
        ## 
        ## Gets the ticketSystem property value. The description of the ticket system.
        ## @return a string
        ## 
        def ticket_system
            return @ticket_system
        end
        ## 
        ## Sets the ticketSystem property value. The description of the ticket system.
        ## @param value Value to set for the ticketSystem property.
        ## @return a void
        ## 
        def ticket_system=(value)
            @ticket_system = value
        end
    end
end
