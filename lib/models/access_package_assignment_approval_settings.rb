require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentApprovalSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If false, then approval isn't required for new requests in this policy.
            @is_approval_required_for_add
            ## 
            # If false, then approval isn't required for updates to requests in this policy.
            @is_approval_required_for_update
            ## 
            # If false, then requestor justification isn't required for updates to requests in this policy.
            @is_requestor_justification_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If approval is required, the one, two or three elements of this collection define each of the stages of approval. An empty array is present if no approval is required.
            @stages
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
            ## Instantiates a new AccessPackageAssignmentApprovalSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_approval_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentApprovalSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isApprovalRequiredForAdd" => lambda {|n| @is_approval_required_for_add = n.get_boolean_value() },
                    "isApprovalRequiredForUpdate" => lambda {|n| @is_approval_required_for_update = n.get_boolean_value() },
                    "isRequestorJustificationRequired" => lambda {|n| @is_requestor_justification_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "stages" => lambda {|n| @stages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AccessPackageApprovalStage.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isApprovalRequiredForAdd property value. If false, then approval isn't required for new requests in this policy.
            ## @return a boolean
            ## 
            def is_approval_required_for_add
                return @is_approval_required_for_add
            end
            ## 
            ## Sets the isApprovalRequiredForAdd property value. If false, then approval isn't required for new requests in this policy.
            ## @param value Value to set for the isApprovalRequiredForAdd property.
            ## @return a void
            ## 
            def is_approval_required_for_add=(value)
                @is_approval_required_for_add = value
            end
            ## 
            ## Gets the isApprovalRequiredForUpdate property value. If false, then approval isn't required for updates to requests in this policy.
            ## @return a boolean
            ## 
            def is_approval_required_for_update
                return @is_approval_required_for_update
            end
            ## 
            ## Sets the isApprovalRequiredForUpdate property value. If false, then approval isn't required for updates to requests in this policy.
            ## @param value Value to set for the isApprovalRequiredForUpdate property.
            ## @return a void
            ## 
            def is_approval_required_for_update=(value)
                @is_approval_required_for_update = value
            end
            ## 
            ## Gets the isRequestorJustificationRequired property value. If false, then requestor justification isn't required for updates to requests in this policy.
            ## @return a boolean
            ## 
            def is_requestor_justification_required
                return @is_requestor_justification_required
            end
            ## 
            ## Sets the isRequestorJustificationRequired property value. If false, then requestor justification isn't required for updates to requests in this policy.
            ## @param value Value to set for the isRequestorJustificationRequired property.
            ## @return a void
            ## 
            def is_requestor_justification_required=(value)
                @is_requestor_justification_required = value
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
                writer.write_boolean_value("isApprovalRequiredForAdd", @is_approval_required_for_add)
                writer.write_boolean_value("isApprovalRequiredForUpdate", @is_approval_required_for_update)
                writer.write_boolean_value("isRequestorJustificationRequired", @is_requestor_justification_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("stages", @stages)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stages property value. If approval is required, the one, two or three elements of this collection define each of the stages of approval. An empty array is present if no approval is required.
            ## @return a access_package_approval_stage
            ## 
            def stages
                return @stages
            end
            ## 
            ## Sets the stages property value. If approval is required, the one, two or three elements of this collection define each of the stages of approval. An empty array is present if no approval is required.
            ## @param value Value to set for the stages property.
            ## @return a void
            ## 
            def stages=(value)
                @stages = value
            end
        end
    end
end
