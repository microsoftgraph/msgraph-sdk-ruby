require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class InformationProtection
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bitlocker property
            @bitlocker
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The threatAssessmentRequests property
            @threat_assessment_requests
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
            ## Gets the bitlocker property value. The bitlocker property
            ## @return a bitlocker
            ## 
            def bitlocker
                return @bitlocker
            end
            ## 
            ## Sets the bitlocker property value. The bitlocker property
            ## @param value Value to set for the bitlocker property.
            ## @return a void
            ## 
            def bitlocker=(value)
                @bitlocker = value
            end
            ## 
            ## Instantiates a new InformationProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a information_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InformationProtection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bitlocker" => lambda {|n| @bitlocker = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Bitlocker.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "threatAssessmentRequests" => lambda {|n| @threat_assessment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ThreatAssessmentRequest.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("bitlocker", @bitlocker)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("threatAssessmentRequests", @threat_assessment_requests)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the threatAssessmentRequests property value. The threatAssessmentRequests property
            ## @return a threat_assessment_request
            ## 
            def threat_assessment_requests
                return @threat_assessment_requests
            end
            ## 
            ## Sets the threatAssessmentRequests property value. The threatAssessmentRequests property
            ## @param value Value to set for the threat_assessment_requests property.
            ## @return a void
            ## 
            def threat_assessment_requests=(value)
                @threat_assessment_requests = value
            end
        end
    end
end
