require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IdentityGovernanceCustomTaskExtension < MicrosoftGraph::Models::CustomCalloutExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The callback configuration for a custom task extension.
            @callback_configuration
            ## 
            # The unique identifier of the Azure AD user that created the custom task extension.Supports $filter(eq, ne) and $expand.
            @created_by
            ## 
            # When the custom task extension was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @created_date_time
            ## 
            # The unique identifier of the Azure AD user that modified the custom task extension last.Supports $filter(eq, ne) and $expand.
            @last_modified_by
            ## 
            # When the custom extension was last modified.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @last_modified_date_time
            ## 
            ## Gets the callbackConfiguration property value. The callback configuration for a custom task extension.
            ## @return a custom_extension_callback_configuration
            ## 
            def callback_configuration
                return @callback_configuration
            end
            ## 
            ## Sets the callbackConfiguration property value. The callback configuration for a custom task extension.
            ## @param value Value to set for the callbackConfiguration property.
            ## @return a void
            ## 
            def callback_configuration=(value)
                @callback_configuration = value
            end
            ## 
            ## Instantiates a new identityGovernanceCustomTaskExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.identityGovernance.customTaskExtension"
            end
            ## 
            ## Gets the createdBy property value. The unique identifier of the Azure AD user that created the custom task extension.Supports $filter(eq, ne) and $expand.
            ## @return a user
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The unique identifier of the Azure AD user that created the custom task extension.Supports $filter(eq, ne) and $expand.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. When the custom task extension was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. When the custom task extension was created.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_custom_task_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceCustomTaskExtension.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callbackConfiguration" => lambda {|n| @callback_configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::CustomExtensionCallbackConfiguration.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. The unique identifier of the Azure AD user that modified the custom task extension last.Supports $filter(eq, ne) and $expand.
            ## @return a user
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The unique identifier of the Azure AD user that modified the custom task extension last.Supports $filter(eq, ne) and $expand.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. When the custom extension was last modified.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. When the custom extension was last modified.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
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
                writer.write_object_value("callbackConfiguration", @callback_configuration) unless @callback_configuration.nil?
                writer.write_object_value("createdBy", @created_by) unless @created_by.nil?
                writer.write_date_time_value("createdDateTime", @created_date_time) unless @created_date_time.nil?
                writer.write_object_value("lastModifiedBy", @last_modified_by) unless @last_modified_by.nil?
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time) unless @last_modified_date_time.nil?
            end
        end
    end
end
