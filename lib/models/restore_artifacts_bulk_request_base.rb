require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestoreArtifactsBulkRequestBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdBy property
            @created_by
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The destinationType property
            @destination_type
            ## 
            # The displayName property
            @display_name
            ## 
            # The error property
            @error
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The protectionTimePeriod property
            @protection_time_period
            ## 
            # The protectionUnitIds property
            @protection_unit_ids
            ## 
            # The restorePointPreference property
            @restore_point_preference
            ## 
            # The status property
            @status
            ## 
            # The tags property
            @tags
            ## 
            ## Instantiates a new RestoreArtifactsBulkRequestBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_artifacts_bulk_request_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.driveRestoreArtifactsBulkAdditionRequest"
                            return DriveRestoreArtifactsBulkAdditionRequest.new
                        when "#microsoft.graph.mailboxRestoreArtifactsBulkAdditionRequest"
                            return MailboxRestoreArtifactsBulkAdditionRequest.new
                        when "#microsoft.graph.siteRestoreArtifactsBulkAdditionRequest"
                            return SiteRestoreArtifactsBulkAdditionRequest.new
                    end
                end
                return RestoreArtifactsBulkRequestBase.new
            end
            ## 
            ## Gets the destinationType property value. The destinationType property
            ## @return a destination_type
            ## 
            def destination_type
                return @destination_type
            end
            ## 
            ## Sets the destinationType property value. The destinationType property
            ## @param value Value to set for the destinationType property.
            ## @return a void
            ## 
            def destination_type=(value)
                @destination_type = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the error property value. The error property
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The error property
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "destinationType" => lambda {|n| @destination_type = n.get_enum_value(MicrosoftGraph::Models::DestinationType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "protectionTimePeriod" => lambda {|n| @protection_time_period = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TimePeriod.create_from_discriminator_value(pn) }) },
                    "protectionUnitIds" => lambda {|n| @protection_unit_ids = n.get_collection_of_primitive_values(String) },
                    "restorePointPreference" => lambda {|n| @restore_point_preference = n.get_enum_value(MicrosoftGraph::Models::RestorePointPreference) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::RestoreArtifactsBulkRequestStatus) },
                    "tags" => lambda {|n| @tags = n.get_enum_values(MicrosoftGraph::Models::RestorePointTags) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the protectionTimePeriod property value. The protectionTimePeriod property
            ## @return a time_period
            ## 
            def protection_time_period
                return @protection_time_period
            end
            ## 
            ## Sets the protectionTimePeriod property value. The protectionTimePeriod property
            ## @param value Value to set for the protectionTimePeriod property.
            ## @return a void
            ## 
            def protection_time_period=(value)
                @protection_time_period = value
            end
            ## 
            ## Gets the protectionUnitIds property value. The protectionUnitIds property
            ## @return a string
            ## 
            def protection_unit_ids
                return @protection_unit_ids
            end
            ## 
            ## Sets the protectionUnitIds property value. The protectionUnitIds property
            ## @param value Value to set for the protectionUnitIds property.
            ## @return a void
            ## 
            def protection_unit_ids=(value)
                @protection_unit_ids = value
            end
            ## 
            ## Gets the restorePointPreference property value. The restorePointPreference property
            ## @return a restore_point_preference
            ## 
            def restore_point_preference
                return @restore_point_preference
            end
            ## 
            ## Sets the restorePointPreference property value. The restorePointPreference property
            ## @param value Value to set for the restorePointPreference property.
            ## @return a void
            ## 
            def restore_point_preference=(value)
                @restore_point_preference = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("destinationType", @destination_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("error", @error)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("protectionTimePeriod", @protection_time_period)
                writer.write_collection_of_primitive_values("protectionUnitIds", @protection_unit_ids)
                writer.write_enum_value("restorePointPreference", @restore_point_preference)
                writer.write_enum_value("status", @status)
                writer.write_enum_value("tags", @tags)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a restore_artifacts_bulk_request_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the tags property value. The tags property
            ## @return a restore_point_tags
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags property
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
        end
    end
end
