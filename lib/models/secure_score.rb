require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecureScore < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Active user count of the given tenant.
            @active_user_count
            ## 
            # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
            @average_comparative_scores
            ## 
            # GUID string for tenant ID.
            @azure_tenant_id
            ## 
            # Contains tenant scores for a set of controls.
            @control_scores
            ## 
            # The date when the entity is created.
            @created_date_time
            ## 
            # Tenant current attained score on specified date.
            @current_score
            ## 
            # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
            @enabled_services
            ## 
            # Licensed user count of the given tenant.
            @licensed_user_count
            ## 
            # Tenant maximum possible score on specified date.
            @max_score
            ## 
            # Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore). Required.
            @vendor_information
            ## 
            ## Gets the activeUserCount property value. Active user count of the given tenant.
            ## @return a integer
            ## 
            def active_user_count
                return @active_user_count
            end
            ## 
            ## Sets the activeUserCount property value. Active user count of the given tenant.
            ## @param value Value to set for the active_user_count property.
            ## @return a void
            ## 
            def active_user_count=(value)
                @active_user_count = value
            end
            ## 
            ## Gets the averageComparativeScores property value. Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
            ## @return a average_comparative_score
            ## 
            def average_comparative_scores
                return @average_comparative_scores
            end
            ## 
            ## Sets the averageComparativeScores property value. Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
            ## @param value Value to set for the average_comparative_scores property.
            ## @return a void
            ## 
            def average_comparative_scores=(value)
                @average_comparative_scores = value
            end
            ## 
            ## Gets the azureTenantId property value. GUID string for tenant ID.
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. GUID string for tenant ID.
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Instantiates a new secureScore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the controlScores property value. Contains tenant scores for a set of controls.
            ## @return a control_score
            ## 
            def control_scores
                return @control_scores
            end
            ## 
            ## Sets the controlScores property value. Contains tenant scores for a set of controls.
            ## @param value Value to set for the control_scores property.
            ## @return a void
            ## 
            def control_scores=(value)
                @control_scores = value
            end
            ## 
            ## Gets the createdDateTime property value. The date when the entity is created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date when the entity is created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a secure_score
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecureScore.new
            end
            ## 
            ## Gets the currentScore property value. Tenant current attained score on specified date.
            ## @return a double
            ## 
            def current_score
                return @current_score
            end
            ## 
            ## Sets the currentScore property value. Tenant current attained score on specified date.
            ## @param value Value to set for the current_score property.
            ## @return a void
            ## 
            def current_score=(value)
                @current_score = value
            end
            ## 
            ## Gets the enabledServices property value. Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
            ## @return a string
            ## 
            def enabled_services
                return @enabled_services
            end
            ## 
            ## Sets the enabledServices property value. Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
            ## @param value Value to set for the enabled_services property.
            ## @return a void
            ## 
            def enabled_services=(value)
                @enabled_services = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeUserCount" => lambda {|n| @active_user_count = n.get_number_value() },
                    "averageComparativeScores" => lambda {|n| @average_comparative_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AverageComparativeScore.create_from_discriminator_value(pn) }) },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "controlScores" => lambda {|n| @control_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ControlScore.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "currentScore" => lambda {|n| @current_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "enabledServices" => lambda {|n| @enabled_services = n.get_collection_of_primitive_values(String) },
                    "licensedUserCount" => lambda {|n| @licensed_user_count = n.get_number_value() },
                    "maxScore" => lambda {|n| @max_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the licensedUserCount property value. Licensed user count of the given tenant.
            ## @return a integer
            ## 
            def licensed_user_count
                return @licensed_user_count
            end
            ## 
            ## Sets the licensedUserCount property value. Licensed user count of the given tenant.
            ## @param value Value to set for the licensed_user_count property.
            ## @return a void
            ## 
            def licensed_user_count=(value)
                @licensed_user_count = value
            end
            ## 
            ## Gets the maxScore property value. Tenant maximum possible score on specified date.
            ## @return a double
            ## 
            def max_score
                return @max_score
            end
            ## 
            ## Sets the maxScore property value. Tenant maximum possible score on specified date.
            ## @param value Value to set for the max_score property.
            ## @return a void
            ## 
            def max_score=(value)
                @max_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activeUserCount", @active_user_count)
                writer.write_collection_of_object_values("averageComparativeScores", @average_comparative_scores)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_collection_of_object_values("controlScores", @control_scores)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("currentScore", @current_score)
                writer.write_collection_of_primitive_values("enabledServices", @enabled_services)
                writer.write_number_value("licensedUserCount", @licensed_user_count)
                writer.write_object_value("maxScore", @max_score)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the vendorInformation property value. Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore). Required.
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore). Required.
            ## @param value Value to set for the vendor_information property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end
