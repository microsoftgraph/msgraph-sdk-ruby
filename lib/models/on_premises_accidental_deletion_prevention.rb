require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class OnPremisesAccidentalDeletionPrevention
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Threshold value which triggers accidental deletion prevention. The threshold is either an absolute number of objects or a percentage number of objects.
            @alert_threshold
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status of the accidental deletion prevention feature. The possible values are: disabled, enabledForCount, enabledForPercentage, unknownFutureValue.
            @synchronization_prevention_type
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
            ## Gets the alertThreshold property value. Threshold value which triggers accidental deletion prevention. The threshold is either an absolute number of objects or a percentage number of objects.
            ## @return a integer
            ## 
            def alert_threshold
                return @alert_threshold
            end
            ## 
            ## Sets the alertThreshold property value. Threshold value which triggers accidental deletion prevention. The threshold is either an absolute number of objects or a percentage number of objects.
            ## @param value Value to set for the alert_threshold property.
            ## @return a void
            ## 
            def alert_threshold=(value)
                @alert_threshold = value
            end
            ## 
            ## Instantiates a new onPremisesAccidentalDeletionPrevention and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_accidental_deletion_prevention
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesAccidentalDeletionPrevention.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alertThreshold" => lambda {|n| @alert_threshold = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "synchronizationPreventionType" => lambda {|n| @synchronization_prevention_type = n.get_enum_value(MicrosoftGraph::Models::OnPremisesDirectorySynchronizationDeletionPreventionType) },
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
                writer.write_number_value("alertThreshold", @alert_threshold)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("synchronizationPreventionType", @synchronization_prevention_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the synchronizationPreventionType property value. The status of the accidental deletion prevention feature. The possible values are: disabled, enabledForCount, enabledForPercentage, unknownFutureValue.
            ## @return a on_premises_directory_synchronization_deletion_prevention_type
            ## 
            def synchronization_prevention_type
                return @synchronization_prevention_type
            end
            ## 
            ## Sets the synchronizationPreventionType property value. The status of the accidental deletion prevention feature. The possible values are: disabled, enabledForCount, enabledForPercentage, unknownFutureValue.
            ## @param value Value to set for the synchronization_prevention_type property.
            ## @return a void
            ## 
            def synchronization_prevention_type=(value)
                @synchronization_prevention_type = value
            end
        end
    end
end
