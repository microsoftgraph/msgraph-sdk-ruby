require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProtectionRuleBase < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity of person who created the rule.
            @created_by
            ## 
            # The time of creation of the rule.
            @created_date_time
            ## 
            # Contains error details if an operation on a rule fails.
            @error
            ## 
            # Indicates whether the protection rule is static or dynamic.
            @is_auto_apply_enabled
            ## 
            # The identity of the person who last modified the rule.
            @last_modified_by
            ## 
            # Timestamp of the last modification made to the rule.
            @last_modified_date_time
            ## 
            # The status of the protection rule. The possible values are: draft, active, completed, completedWithErrors, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new ProtectionRuleBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The identity of person who created the rule.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The identity of person who created the rule.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The time of creation of the rule.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time of creation of the rule.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a protection_rule_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.driveProtectionRule"
                            return DriveProtectionRule.new
                        when "#microsoft.graph.mailboxProtectionRule"
                            return MailboxProtectionRule.new
                        when "#microsoft.graph.siteProtectionRule"
                            return SiteProtectionRule.new
                    end
                end
                return ProtectionRuleBase.new
            end
            ## 
            ## Gets the error property value. Contains error details if an operation on a rule fails.
            ## @return a public_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Contains error details if an operation on a rule fails.
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
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicError.create_from_discriminator_value(pn) }) },
                    "isAutoApplyEnabled" => lambda {|n| @is_auto_apply_enabled = n.get_boolean_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::ProtectionRuleStatus) },
                })
            end
            ## 
            ## Gets the isAutoApplyEnabled property value. Indicates whether the protection rule is static or dynamic.
            ## @return a boolean
            ## 
            def is_auto_apply_enabled
                return @is_auto_apply_enabled
            end
            ## 
            ## Sets the isAutoApplyEnabled property value. Indicates whether the protection rule is static or dynamic.
            ## @param value Value to set for the isAutoApplyEnabled property.
            ## @return a void
            ## 
            def is_auto_apply_enabled=(value)
                @is_auto_apply_enabled = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The identity of the person who last modified the rule.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The identity of the person who last modified the rule.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp of the last modification made to the rule.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp of the last modification made to the rule.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
                writer.write_object_value("error", @error)
                writer.write_boolean_value("isAutoApplyEnabled", @is_auto_apply_enabled)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status of the protection rule. The possible values are: draft, active, completed, completedWithErrors, unknownFutureValue.
            ## @return a protection_rule_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the protection rule. The possible values are: draft, active, completed, completedWithErrors, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
