require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Network Proxy Server Policy.
        class Windows10NetworkProxyServer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Address to the proxy server. Specify an address in the format [':']
            @address
            ## 
            # Addresses that should not use the proxy server. The system will not use the proxy server for addresses beginning with what is specified in this node.
            @exceptions
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies whether the proxy server should be used for local (intranet) addresses.
            @use_for_local_addresses
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
            ## Gets the address property value. Address to the proxy server. Specify an address in the format [':']
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. Address to the proxy server. Specify an address in the format [':']
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new windows10NetworkProxyServer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_network_proxy_server
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10NetworkProxyServer.new
            end
            ## 
            ## Gets the exceptions property value. Addresses that should not use the proxy server. The system will not use the proxy server for addresses beginning with what is specified in this node.
            ## @return a string
            ## 
            def exceptions
                return @exceptions
            end
            ## 
            ## Sets the exceptions property value. Addresses that should not use the proxy server. The system will not use the proxy server for addresses beginning with what is specified in this node.
            ## @param value Value to set for the exceptions property.
            ## @return a void
            ## 
            def exceptions=(value)
                @exceptions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "exceptions" => lambda {|n| @exceptions = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "useForLocalAddresses" => lambda {|n| @use_for_local_addresses = n.get_boolean_value() },
                }
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
                writer.write_string_value("address", @address)
                writer.write_collection_of_primitive_values("exceptions", @exceptions)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("useForLocalAddresses", @use_for_local_addresses)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the useForLocalAddresses property value. Specifies whether the proxy server should be used for local (intranet) addresses.
            ## @return a boolean
            ## 
            def use_for_local_addresses
                return @use_for_local_addresses
            end
            ## 
            ## Sets the useForLocalAddresses property value. Specifies whether the proxy server should be used for local (intranet) addresses.
            ## @param value Value to set for the use_for_local_addresses property.
            ## @return a void
            ## 
            def use_for_local_addresses=(value)
                @use_for_local_addresses = value
            end
        end
    end
end
