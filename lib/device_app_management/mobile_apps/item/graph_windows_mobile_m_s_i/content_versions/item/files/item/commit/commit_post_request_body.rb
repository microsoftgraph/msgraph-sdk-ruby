require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/file_encryption_info'
require_relative '../../../../../../../../device_app_management'
require_relative '../../../../../../../mobile_apps'
require_relative '../../../../../../item'
require_relative '../../../../../graph_windows_mobile_m_s_i'
require_relative '../../../../content_versions'
require_relative '../../../item'
require_relative '../../files'
require_relative '../item'
require_relative './commit'

module MicrosoftGraph
    module DeviceAppManagement
        module MobileApps
            module Item
                module GraphWindowsMobileMSI
                    module ContentVersions
                        module Item
                            module Files
                                module Item
                                    module Commit
                                        class CommitPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The fileEncryptionInfo property
                                            @file_encryption_info
                                            ## 
                                            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            ## @return a i_dictionary
                                            ## 
                                            def additional_data
                                                return @additional_data
                                            end
                                            ## 
                                            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            ## @param value Value to set for the additionalData property.
                                            ## @return a void
                                            ## 
                                            def additional_data=(value)
                                                @additional_data = value
                                            end
                                            ## 
                                            ## Instantiates a new commitPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                                            ## @return a commit_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return CommitPostRequestBody.new
                                            end
                                            ## 
                                            ## Gets the fileEncryptionInfo property value. The fileEncryptionInfo property
                                            ## @return a file_encryption_info
                                            ## 
                                            def file_encryption_info
                                                return @file_encryption_info
                                            end
                                            ## 
                                            ## Sets the fileEncryptionInfo property value. The fileEncryptionInfo property
                                            ## @param value Value to set for the fileEncryptionInfo property.
                                            ## @return a void
                                            ## 
                                            def file_encryption_info=(value)
                                                @file_encryption_info = value
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "fileEncryptionInfo" => lambda {|n| @file_encryption_info = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::FileEncryptionInfo.create_from_discriminator_value(pn) }) },
                                                }
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_object_value("fileEncryptionInfo", @file_encryption_info)
                                                writer.write_additional_data(@additional_data)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
