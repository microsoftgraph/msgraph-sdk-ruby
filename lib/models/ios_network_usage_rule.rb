require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Network Usage Rules allow enterprises to specify how managed apps use networks, such as cellular data networks.
        class IosNetworkUsageRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If set to true, corresponding managed apps will not be allowed to use cellular data when roaming.
            @cellular_data_block_when_roaming
            ## 
            # If set to true, corresponding managed apps will not be allowed to use cellular data at any time.
            @cellular_data_blocked
            ## 
            # Information about the managed apps that this rule is going to apply to. This collection can contain a maximum of 500 elements.
            @managed_apps
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the cellularDataBlockWhenRoaming property value. If set to true, corresponding managed apps will not be allowed to use cellular data when roaming.
            ## @return a boolean
            ## 
            def cellular_data_block_when_roaming
                return @cellular_data_block_when_roaming
            end
            ## 
            ## Sets the cellularDataBlockWhenRoaming property value. If set to true, corresponding managed apps will not be allowed to use cellular data when roaming.
            ## @param value Value to set for the cellular_data_block_when_roaming property.
            ## @return a void
            ## 
            def cellular_data_block_when_roaming=(value)
                @cellular_data_block_when_roaming = value
            end
            ## 
            ## Gets the cellularDataBlocked property value. If set to true, corresponding managed apps will not be allowed to use cellular data at any time.
            ## @return a boolean
            ## 
            def cellular_data_blocked
                return @cellular_data_blocked
            end
            ## 
            ## Sets the cellularDataBlocked property value. If set to true, corresponding managed apps will not be allowed to use cellular data at any time.
            ## @param value Value to set for the cellular_data_blocked property.
            ## @return a void
            ## 
            def cellular_data_blocked=(value)
                @cellular_data_blocked = value
            end
            ## 
            ## Instantiates a new iosNetworkUsageRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_network_usage_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosNetworkUsageRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cellularDataBlockWhenRoaming" => lambda {|n| @cellular_data_block_when_roaming = n.get_boolean_value() },
                    "cellularDataBlocked" => lambda {|n| @cellular_data_blocked = n.get_boolean_value() },
                    "managedApps" => lambda {|n| @managed_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the managedApps property value. Information about the managed apps that this rule is going to apply to. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def managed_apps
                return @managed_apps
            end
            ## 
            ## Sets the managedApps property value. Information about the managed apps that this rule is going to apply to. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the managed_apps property.
            ## @return a void
            ## 
            def managed_apps=(value)
                @managed_apps = value
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
                writer.write_boolean_value("cellularDataBlockWhenRoaming", @cellular_data_block_when_roaming)
                writer.write_boolean_value("cellularDataBlocked", @cellular_data_blocked)
                writer.write_collection_of_object_values("managedApps", @managed_apps)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
