require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityDispositionReviewStage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The name property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The reviewersEmailAddresses property
            @reviewers_email_addresses
            ## 
            # The stageNumber property
            @stage_number
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
            ## Instantiates a new SecurityDispositionReviewStage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_disposition_review_stage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDispositionReviewStage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "reviewersEmailAddresses" => lambda {|n| @reviewers_email_addresses = n.get_collection_of_primitive_values(String) },
                    "stageNumber" => lambda {|n| @stage_number = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the reviewersEmailAddresses property value. The reviewersEmailAddresses property
            ## @return a string
            ## 
            def reviewers_email_addresses
                return @reviewers_email_addresses
            end
            ## 
            ## Sets the reviewersEmailAddresses property value. The reviewersEmailAddresses property
            ## @param value Value to set for the reviewersEmailAddresses property.
            ## @return a void
            ## 
            def reviewers_email_addresses=(value)
                @reviewers_email_addresses = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("reviewersEmailAddresses", @reviewers_email_addresses)
                writer.write_string_value("stageNumber", @stage_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stageNumber property value. The stageNumber property
            ## @return a string
            ## 
            def stage_number
                return @stage_number
            end
            ## 
            ## Sets the stageNumber property value. The stageNumber property
            ## @param value Value to set for the stageNumber property.
            ## @return a void
            ## 
            def stage_number=(value)
                @stage_number = value
            end
        end
    end
end
