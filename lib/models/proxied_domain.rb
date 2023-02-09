require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Proxied Domain
        class ProxiedDomain
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The IP address or FQDN
            @ip_address_or_f_q_d_n
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Proxy IP or FQDN
            @proxy
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
            ## Instantiates a new proxiedDomain and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a proxied_domain
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProxiedDomain.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "ipAddressOrFQDN" => lambda {|n| @ip_address_or_f_q_d_n = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "proxy" => lambda {|n| @proxy = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ipAddressOrFQDN property value. The IP address or FQDN
            ## @return a string
            ## 
            def ip_address_or_f_q_d_n
                return @ip_address_or_f_q_d_n
            end
            ## 
            ## Sets the ipAddressOrFQDN property value. The IP address or FQDN
            ## @param value Value to set for the ip_address_or_f_q_d_n property.
            ## @return a void
            ## 
            def ip_address_or_f_q_d_n=(value)
                @ip_address_or_f_q_d_n = value
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
            ## Gets the proxy property value. Proxy IP or FQDN
            ## @return a string
            ## 
            def proxy
                return @proxy
            end
            ## 
            ## Sets the proxy property value. Proxy IP or FQDN
            ## @param value Value to set for the proxy property.
            ## @return a void
            ## 
            def proxy=(value)
                @proxy = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("ipAddressOrFQDN", @ip_address_or_f_q_d_n)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("proxy", @proxy)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
