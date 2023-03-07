require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './windows_defender_scan'

module MicrosoftGraph
    module Me
        module ManagedDevices
            module Item
                module WindowsDefenderScan
                    class WindowsDefenderScanPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The quickScan property
                        @quick_scan
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
                        ## Instantiates a new windowsDefenderScanPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a windows_defender_scan_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return WindowsDefenderScanPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "quickScan" => lambda {|n| @quick_scan = n.get_boolean_value() },
                            }
                        end
                        ## 
                        ## Gets the quickScan property value. The quickScan property
                        ## @return a boolean
                        ## 
                        def quick_scan
                            return @quick_scan
                        end
                        ## 
                        ## Sets the quickScan property value. The quickScan property
                        ## @param value Value to set for the quick_scan property.
                        ## @return a void
                        ## 
                        def quick_scan=(value)
                            @quick_scan = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_boolean_value("quickScan", @quick_scan)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
