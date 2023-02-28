require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/device_management_exchange_connector_sync_type'
require_relative '../../../device_management'
require_relative '../../exchange_connectors'
require_relative '../item'
require_relative './sync'

module MicrosoftGraph
    module DeviceManagement
        module ExchangeConnectors
            module Item
                module Sync
                    class SyncPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The type of Exchange Connector sync requested.
                        @sync_type
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
                        ## Instantiates a new syncPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a sync_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SyncPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "syncType" => lambda {|n| @sync_type = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExchangeConnectorSyncType) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("syncType", @sync_type)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the syncType property value. The type of Exchange Connector sync requested.
                        ## @return a device_management_exchange_connector_sync_type
                        ## 
                        def sync_type
                            return @sync_type
                        end
                        ## 
                        ## Sets the syncType property value. The type of Exchange Connector sync requested.
                        ## @param value Value to set for the sync_type property.
                        ## @return a void
                        ## 
                        def sync_type=(value)
                            @sync_type = value
                        end
                    end
                end
            end
        end
    end
end
