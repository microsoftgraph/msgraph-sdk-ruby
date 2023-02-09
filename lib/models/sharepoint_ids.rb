require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharepointIds
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier (guid) for the item's list in SharePoint.
            @list_id
            ## 
            # An integer identifier for the item within the containing list.
            @list_item_id
            ## 
            # The unique identifier (guid) for the item within OneDrive for Business or a SharePoint site.
            @list_item_unique_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique identifier (guid) for the item's site collection (SPSite).
            @site_id
            ## 
            # The SharePoint URL for the site that contains the item.
            @site_url
            ## 
            # The unique identifier (guid) for the tenancy.
            @tenant_id
            ## 
            # The unique identifier (guid) for the item's site (SPWeb).
            @web_id
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
            ## Instantiates a new sharepointIds and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sharepoint_ids
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharepointIds.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "listId" => lambda {|n| @list_id = n.get_string_value() },
                    "listItemId" => lambda {|n| @list_item_id = n.get_string_value() },
                    "listItemUniqueId" => lambda {|n| @list_item_unique_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "siteId" => lambda {|n| @site_id = n.get_string_value() },
                    "siteUrl" => lambda {|n| @site_url = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "webId" => lambda {|n| @web_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the listId property value. The unique identifier (guid) for the item's list in SharePoint.
            ## @return a string
            ## 
            def list_id
                return @list_id
            end
            ## 
            ## Sets the listId property value. The unique identifier (guid) for the item's list in SharePoint.
            ## @param value Value to set for the list_id property.
            ## @return a void
            ## 
            def list_id=(value)
                @list_id = value
            end
            ## 
            ## Gets the listItemId property value. An integer identifier for the item within the containing list.
            ## @return a string
            ## 
            def list_item_id
                return @list_item_id
            end
            ## 
            ## Sets the listItemId property value. An integer identifier for the item within the containing list.
            ## @param value Value to set for the list_item_id property.
            ## @return a void
            ## 
            def list_item_id=(value)
                @list_item_id = value
            end
            ## 
            ## Gets the listItemUniqueId property value. The unique identifier (guid) for the item within OneDrive for Business or a SharePoint site.
            ## @return a string
            ## 
            def list_item_unique_id
                return @list_item_unique_id
            end
            ## 
            ## Sets the listItemUniqueId property value. The unique identifier (guid) for the item within OneDrive for Business or a SharePoint site.
            ## @param value Value to set for the list_item_unique_id property.
            ## @return a void
            ## 
            def list_item_unique_id=(value)
                @list_item_unique_id = value
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
                writer.write_string_value("listId", @list_id)
                writer.write_string_value("listItemId", @list_item_id)
                writer.write_string_value("listItemUniqueId", @list_item_unique_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("siteId", @site_id)
                writer.write_string_value("siteUrl", @site_url)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("webId", @web_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the siteId property value. The unique identifier (guid) for the item's site collection (SPSite).
            ## @return a string
            ## 
            def site_id
                return @site_id
            end
            ## 
            ## Sets the siteId property value. The unique identifier (guid) for the item's site collection (SPSite).
            ## @param value Value to set for the site_id property.
            ## @return a void
            ## 
            def site_id=(value)
                @site_id = value
            end
            ## 
            ## Gets the siteUrl property value. The SharePoint URL for the site that contains the item.
            ## @return a string
            ## 
            def site_url
                return @site_url
            end
            ## 
            ## Sets the siteUrl property value. The SharePoint URL for the site that contains the item.
            ## @param value Value to set for the site_url property.
            ## @return a void
            ## 
            def site_url=(value)
                @site_url = value
            end
            ## 
            ## Gets the tenantId property value. The unique identifier (guid) for the tenancy.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The unique identifier (guid) for the tenancy.
            ## @param value Value to set for the tenant_id property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the webId property value. The unique identifier (guid) for the item's site (SPWeb).
            ## @return a string
            ## 
            def web_id
                return @web_id
            end
            ## 
            ## Sets the webId property value. The unique identifier (guid) for the item's site (SPWeb).
            ## @param value Value to set for the web_id property.
            ## @return a void
            ## 
            def web_id=(value)
                @web_id = value
            end
        end
    end
end
