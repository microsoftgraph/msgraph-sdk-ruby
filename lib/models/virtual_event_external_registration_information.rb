require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class VirtualEventExternalRegistrationInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # A URL or string that represents the location from which the registrant registered. Optional.
            @referrer
            ## 
            # The identifier for a virtualEventExternalRegistrationInformation object. Optional. If set, the maximum supported length is 256 characters.
            @registration_id
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
            ## Instantiates a new VirtualEventExternalRegistrationInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_event_external_registration_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualEventExternalRegistrationInformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "referrer" => lambda {|n| @referrer = n.get_string_value() },
                    "registrationId" => lambda {|n| @registration_id = n.get_string_value() },
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
            ## Gets the referrer property value. A URL or string that represents the location from which the registrant registered. Optional.
            ## @return a string
            ## 
            def referrer
                return @referrer
            end
            ## 
            ## Sets the referrer property value. A URL or string that represents the location from which the registrant registered. Optional.
            ## @param value Value to set for the referrer property.
            ## @return a void
            ## 
            def referrer=(value)
                @referrer = value
            end
            ## 
            ## Gets the registrationId property value. The identifier for a virtualEventExternalRegistrationInformation object. Optional. If set, the maximum supported length is 256 characters.
            ## @return a string
            ## 
            def registration_id
                return @registration_id
            end
            ## 
            ## Sets the registrationId property value. The identifier for a virtualEventExternalRegistrationInformation object. Optional. If set, the maximum supported length is 256 characters.
            ## @param value Value to set for the registrationId property.
            ## @return a void
            ## 
            def registration_id=(value)
                @registration_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("referrer", @referrer)
                writer.write_string_value("registrationId", @registration_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
