require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class EdiscoveryCustodian < MicrosoftGraph::Models::Security::DataSourceContainer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Date and time the custodian acknowledged a hold notification.
                @acknowledged_date_time
                ## 
                # Email address of the custodian.
                @email
                ## 
                # Operation entity that represents the latest indexing for the custodian.
                @last_index_operation
                ## 
                # Data source entity for SharePoint sites associated with the custodian.
                @site_sources
                ## 
                # Data source entity for groups associated with the custodian.
                @unified_group_sources
                ## 
                # Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
                @user_sources
                ## 
                ## Gets the acknowledgedDateTime property value. Date and time the custodian acknowledged a hold notification.
                ## @return a date_time
                ## 
                def acknowledged_date_time
                    return @acknowledged_date_time
                end
                ## 
                ## Sets the acknowledgedDateTime property value. Date and time the custodian acknowledged a hold notification.
                ## @param value Value to set for the acknowledged_date_time property.
                ## @return a void
                ## 
                def acknowledged_date_time=(value)
                    @acknowledged_date_time = value
                end
                ## 
                ## Instantiates a new EdiscoveryCustodian and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.ediscoveryCustodian"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a ediscovery_custodian
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EdiscoveryCustodian.new
                end
                ## 
                ## Gets the email property value. Email address of the custodian.
                ## @return a string
                ## 
                def email
                    return @email
                end
                ## 
                ## Sets the email property value. Email address of the custodian.
                ## @param value Value to set for the email property.
                ## @return a void
                ## 
                def email=(value)
                    @email = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "acknowledgedDateTime" => lambda {|n| @acknowledged_date_time = n.get_date_time_value() },
                        "email" => lambda {|n| @email = n.get_string_value() },
                        "lastIndexOperation" => lambda {|n| @last_index_operation = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryIndexOperation.create_from_discriminator_value(pn) }) },
                        "siteSources" => lambda {|n| @site_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::SiteSource.create_from_discriminator_value(pn) }) },
                        "unifiedGroupSources" => lambda {|n| @unified_group_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::UnifiedGroupSource.create_from_discriminator_value(pn) }) },
                        "userSources" => lambda {|n| @user_sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::UserSource.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastIndexOperation property value. Operation entity that represents the latest indexing for the custodian.
                ## @return a ediscovery_index_operation
                ## 
                def last_index_operation
                    return @last_index_operation
                end
                ## 
                ## Sets the lastIndexOperation property value. Operation entity that represents the latest indexing for the custodian.
                ## @param value Value to set for the last_index_operation property.
                ## @return a void
                ## 
                def last_index_operation=(value)
                    @last_index_operation = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("acknowledgedDateTime", @acknowledged_date_time)
                    writer.write_string_value("email", @email)
                    writer.write_object_value("lastIndexOperation", @last_index_operation)
                    writer.write_collection_of_object_values("siteSources", @site_sources)
                    writer.write_collection_of_object_values("unifiedGroupSources", @unified_group_sources)
                    writer.write_collection_of_object_values("userSources", @user_sources)
                end
                ## 
                ## Gets the siteSources property value. Data source entity for SharePoint sites associated with the custodian.
                ## @return a site_source
                ## 
                def site_sources
                    return @site_sources
                end
                ## 
                ## Sets the siteSources property value. Data source entity for SharePoint sites associated with the custodian.
                ## @param value Value to set for the site_sources property.
                ## @return a void
                ## 
                def site_sources=(value)
                    @site_sources = value
                end
                ## 
                ## Gets the unifiedGroupSources property value. Data source entity for groups associated with the custodian.
                ## @return a unified_group_source
                ## 
                def unified_group_sources
                    return @unified_group_sources
                end
                ## 
                ## Sets the unifiedGroupSources property value. Data source entity for groups associated with the custodian.
                ## @param value Value to set for the unified_group_sources property.
                ## @return a void
                ## 
                def unified_group_sources=(value)
                    @unified_group_sources = value
                end
                ## 
                ## Gets the userSources property value. Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
                ## @return a user_source
                ## 
                def user_sources
                    return @user_sources
                end
                ## 
                ## Sets the userSources property value. Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
                ## @param value Value to set for the user_sources property.
                ## @return a void
                ## 
                def user_sources=(value)
                    @user_sources = value
                end
            end
        end
    end
end
