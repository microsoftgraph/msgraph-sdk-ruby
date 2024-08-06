require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../device_management'
require_relative '../../../virtual_endpoint'
require_relative '../../cloud_p_cs'
require_relative '../item'
require_relative './restore'

module MicrosoftGraph
    module DeviceManagement
        module VirtualEndpoint
            module CloudPCs
                module Item
                    module Restore
                        class RestorePostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The cloudPcSnapshotId property
                            @cloud_pc_snapshot_id
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
                            ## Gets the cloudPcSnapshotId property value. The cloudPcSnapshotId property
                            ## @return a string
                            ## 
                            def cloud_pc_snapshot_id
                                return @cloud_pc_snapshot_id
                            end
                            ## 
                            ## Sets the cloudPcSnapshotId property value. The cloudPcSnapshotId property
                            ## @param value Value to set for the cloudPcSnapshotId property.
                            ## @return a void
                            ## 
                            def cloud_pc_snapshot_id=(value)
                                @cloud_pc_snapshot_id = value
                            end
                            ## 
                            ## Instantiates a new RestorePostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a restore_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return RestorePostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "cloudPcSnapshotId" => lambda {|n| @cloud_pc_snapshot_id = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("cloudPcSnapshotId", @cloud_pc_snapshot_id)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
