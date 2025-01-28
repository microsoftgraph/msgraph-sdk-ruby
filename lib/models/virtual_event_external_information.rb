require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventExternalInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identifier of the application that hosts the externalEventId. Read-only.
            @application_id
            ## 
            # The identifier for a virtualEventExternalInformation object that associates the virtual event with an event ID in an external application. This association bundles all the information (both supported and not supported in virtualEvent) into one virtual event object. Optional. If set, the maximum supported length is 256 characters.
            @external_event_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the applicationId property value. Identifier of the application that hosts the externalEventId. Read-only.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. Identifier of the application that hosts the externalEventId. Read-only.
            ## @param value Value to set for the applicationId property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new VirtualEventExternalInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_external_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventExternalInformation.new
            end
            ## 
            ## Gets the externalEventId property value. The identifier for a virtualEventExternalInformation object that associates the virtual event with an event ID in an external application. This association bundles all the information (both supported and not supported in virtualEvent) into one virtual event object. Optional. If set, the maximum supported length is 256 characters.
            ## @return a string
            ## 
            def external_event_id
                return @external_event_id
            end
            ## 
            ## Sets the externalEventId property value. The identifier for a virtualEventExternalInformation object that associates the virtual event with an event ID in an external application. This association bundles all the information (both supported and not supported in virtualEvent) into one virtual event object. Optional. If set, the maximum supported length is 256 characters.
            ## @param value Value to set for the externalEventId property.
            ## @return a void
            ## 
            def external_event_id=(value)
                @external_event_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "externalEventId" => lambda {|n| @external_event_id = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("externalEventId", @external_event_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
