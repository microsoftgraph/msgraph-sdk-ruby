require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityNicEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ipAddress property
            @ip_address
            ## 
            # The macAddress property
            @mac_address
            ## 
            # The vlans property
            @vlans
            ## 
            ## Instantiates a new SecurityNicEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.nicEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_nic_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityNicEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ipAddress" => lambda {|n| @ip_address = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityIpEvidence.create_from_discriminator_value(pn) }) },
                    "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                    "vlans" => lambda {|n| @vlans = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the ipAddress property value. The ipAddress property
            ## @return a security_ip_evidence
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The ipAddress property
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the macAddress property value. The macAddress property
            ## @return a string
            ## 
            def mac_address
                return @mac_address
            end
            ## 
            ## Sets the macAddress property value. The macAddress property
            ## @param value Value to set for the macAddress property.
            ## @return a void
            ## 
            def mac_address=(value)
                @mac_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("ipAddress", @ip_address)
                writer.write_string_value("macAddress", @mac_address)
                writer.write_collection_of_primitive_values("vlans", @vlans)
            end
            ## 
            ## Gets the vlans property value. The vlans property
            ## @return a string
            ## 
            def vlans
                return @vlans
            end
            ## 
            ## Sets the vlans property value. The vlans property
            ## @param value Value to set for the vlans property.
            ## @return a void
            ## 
            def vlans=(value)
                @vlans = value
            end
        end
    end
end
