require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageAssignmentRequestorSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If false, the requestor is not permitted to include a schedule in their request.
            @allow_custom_assignment_schedule
            ## 
            # If true, allows on-behalf-of requestors to create a request to add access for another principal.
            @enable_on_behalf_requestors_to_add_access
            ## 
            # If true, allows on-behalf-of requestors to create a request to remove access for another principal.
            @enable_on_behalf_requestors_to_remove_access
            ## 
            # If true, allows on-behalf-of requestors to create a request to update access for another principal.
            @enable_on_behalf_requestors_to_update_access
            ## 
            # If true, allows requestors to create a request to add access for themselves.
            @enable_targets_to_self_add_access
            ## 
            # If true, allows requestors to create a request to remove their access.
            @enable_targets_to_self_remove_access
            ## 
            # If true, allows requestors to create a request to update their access.
            @enable_targets_to_self_update_access
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The principals who can request on-behalf-of others.
            @on_behalf_requestors
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
            ## Gets the allowCustomAssignmentSchedule property value. If false, the requestor is not permitted to include a schedule in their request.
            ## @return a boolean
            ## 
            def allow_custom_assignment_schedule
                return @allow_custom_assignment_schedule
            end
            ## 
            ## Sets the allowCustomAssignmentSchedule property value. If false, the requestor is not permitted to include a schedule in their request.
            ## @param value Value to set for the allow_custom_assignment_schedule property.
            ## @return a void
            ## 
            def allow_custom_assignment_schedule=(value)
                @allow_custom_assignment_schedule = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentRequestorSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_requestor_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentRequestorSettings.new
            end
            ## 
            ## Gets the enableOnBehalfRequestorsToAddAccess property value. If true, allows on-behalf-of requestors to create a request to add access for another principal.
            ## @return a boolean
            ## 
            def enable_on_behalf_requestors_to_add_access
                return @enable_on_behalf_requestors_to_add_access
            end
            ## 
            ## Sets the enableOnBehalfRequestorsToAddAccess property value. If true, allows on-behalf-of requestors to create a request to add access for another principal.
            ## @param value Value to set for the enable_on_behalf_requestors_to_add_access property.
            ## @return a void
            ## 
            def enable_on_behalf_requestors_to_add_access=(value)
                @enable_on_behalf_requestors_to_add_access = value
            end
            ## 
            ## Gets the enableOnBehalfRequestorsToRemoveAccess property value. If true, allows on-behalf-of requestors to create a request to remove access for another principal.
            ## @return a boolean
            ## 
            def enable_on_behalf_requestors_to_remove_access
                return @enable_on_behalf_requestors_to_remove_access
            end
            ## 
            ## Sets the enableOnBehalfRequestorsToRemoveAccess property value. If true, allows on-behalf-of requestors to create a request to remove access for another principal.
            ## @param value Value to set for the enable_on_behalf_requestors_to_remove_access property.
            ## @return a void
            ## 
            def enable_on_behalf_requestors_to_remove_access=(value)
                @enable_on_behalf_requestors_to_remove_access = value
            end
            ## 
            ## Gets the enableOnBehalfRequestorsToUpdateAccess property value. If true, allows on-behalf-of requestors to create a request to update access for another principal.
            ## @return a boolean
            ## 
            def enable_on_behalf_requestors_to_update_access
                return @enable_on_behalf_requestors_to_update_access
            end
            ## 
            ## Sets the enableOnBehalfRequestorsToUpdateAccess property value. If true, allows on-behalf-of requestors to create a request to update access for another principal.
            ## @param value Value to set for the enable_on_behalf_requestors_to_update_access property.
            ## @return a void
            ## 
            def enable_on_behalf_requestors_to_update_access=(value)
                @enable_on_behalf_requestors_to_update_access = value
            end
            ## 
            ## Gets the enableTargetsToSelfAddAccess property value. If true, allows requestors to create a request to add access for themselves.
            ## @return a boolean
            ## 
            def enable_targets_to_self_add_access
                return @enable_targets_to_self_add_access
            end
            ## 
            ## Sets the enableTargetsToSelfAddAccess property value. If true, allows requestors to create a request to add access for themselves.
            ## @param value Value to set for the enable_targets_to_self_add_access property.
            ## @return a void
            ## 
            def enable_targets_to_self_add_access=(value)
                @enable_targets_to_self_add_access = value
            end
            ## 
            ## Gets the enableTargetsToSelfRemoveAccess property value. If true, allows requestors to create a request to remove their access.
            ## @return a boolean
            ## 
            def enable_targets_to_self_remove_access
                return @enable_targets_to_self_remove_access
            end
            ## 
            ## Sets the enableTargetsToSelfRemoveAccess property value. If true, allows requestors to create a request to remove their access.
            ## @param value Value to set for the enable_targets_to_self_remove_access property.
            ## @return a void
            ## 
            def enable_targets_to_self_remove_access=(value)
                @enable_targets_to_self_remove_access = value
            end
            ## 
            ## Gets the enableTargetsToSelfUpdateAccess property value. If true, allows requestors to create a request to update their access.
            ## @return a boolean
            ## 
            def enable_targets_to_self_update_access
                return @enable_targets_to_self_update_access
            end
            ## 
            ## Sets the enableTargetsToSelfUpdateAccess property value. If true, allows requestors to create a request to update their access.
            ## @param value Value to set for the enable_targets_to_self_update_access property.
            ## @return a void
            ## 
            def enable_targets_to_self_update_access=(value)
                @enable_targets_to_self_update_access = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowCustomAssignmentSchedule" => lambda {|n| @allow_custom_assignment_schedule = n.get_boolean_value() },
                    "enableOnBehalfRequestorsToAddAccess" => lambda {|n| @enable_on_behalf_requestors_to_add_access = n.get_boolean_value() },
                    "enableOnBehalfRequestorsToRemoveAccess" => lambda {|n| @enable_on_behalf_requestors_to_remove_access = n.get_boolean_value() },
                    "enableOnBehalfRequestorsToUpdateAccess" => lambda {|n| @enable_on_behalf_requestors_to_update_access = n.get_boolean_value() },
                    "enableTargetsToSelfAddAccess" => lambda {|n| @enable_targets_to_self_add_access = n.get_boolean_value() },
                    "enableTargetsToSelfRemoveAccess" => lambda {|n| @enable_targets_to_self_remove_access = n.get_boolean_value() },
                    "enableTargetsToSelfUpdateAccess" => lambda {|n| @enable_targets_to_self_update_access = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onBehalfRequestors" => lambda {|n| @on_behalf_requestors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SubjectSet.create_from_discriminator_value(pn) }) },
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
            ## Gets the onBehalfRequestors property value. The principals who can request on-behalf-of others.
            ## @return a subject_set
            ## 
            def on_behalf_requestors
                return @on_behalf_requestors
            end
            ## 
            ## Sets the onBehalfRequestors property value. The principals who can request on-behalf-of others.
            ## @param value Value to set for the on_behalf_requestors property.
            ## @return a void
            ## 
            def on_behalf_requestors=(value)
                @on_behalf_requestors = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowCustomAssignmentSchedule", @allow_custom_assignment_schedule)
                writer.write_boolean_value("enableOnBehalfRequestorsToAddAccess", @enable_on_behalf_requestors_to_add_access)
                writer.write_boolean_value("enableOnBehalfRequestorsToRemoveAccess", @enable_on_behalf_requestors_to_remove_access)
                writer.write_boolean_value("enableOnBehalfRequestorsToUpdateAccess", @enable_on_behalf_requestors_to_update_access)
                writer.write_boolean_value("enableTargetsToSelfAddAccess", @enable_targets_to_self_add_access)
                writer.write_boolean_value("enableTargetsToSelfRemoveAccess", @enable_targets_to_self_remove_access)
                writer.write_boolean_value("enableTargetsToSelfUpdateAccess", @enable_targets_to_self_update_access)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("onBehalfRequestors", @on_behalf_requestors)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
