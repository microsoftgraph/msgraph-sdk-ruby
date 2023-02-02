require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class SimulationEventsContent
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.
        @compromised_rate
        ## 
        # List of simulation events in an attack simulation and training campaign.
        @events
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
        ## Gets the compromisedRate property value. Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.
        ## @return a double
        ## 
        def compromised_rate
            return @compromised_rate
        end
        ## 
        ## Sets the compromisedRate property value. Actual percentage of users who fell for the simulated attack in an attack simulation and training campaign.
        ## @param value Value to set for the compromised_rate property.
        ## @return a void
        ## 
        def compromised_rate=(value)
            @compromised_rate = value
        end
        ## 
        ## Instantiates a new simulationEventsContent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a simulation_events_content
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SimulationEventsContent.new
        end
        ## 
        ## Gets the events property value. List of simulation events in an attack simulation and training campaign.
        ## @return a simulation_event
        ## 
        def events
            return @events
        end
        ## 
        ## Sets the events property value. List of simulation events in an attack simulation and training campaign.
        ## @param value Value to set for the events property.
        ## @return a void
        ## 
        def events=(value)
            @events = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "compromisedRate" => lambda {|n| @compromised_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SimulationEvent.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("compromisedRate", @compromised_rate)
            writer.write_collection_of_object_values("events", @events)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
