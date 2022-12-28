require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    ## 
    # Windows Information Protection Proxied Domain Collection
    class WindowsInformationProtectionProxiedDomainCollection
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Display name
        @display_name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Collection of proxied domains
        @proxied_domains
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
        ## Instantiates a new windowsInformationProtectionProxiedDomainCollection and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_information_protection_proxied_domain_collection
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsInformationProtectionProxiedDomainCollection.new
        end
        ## 
        ## Gets the displayName property value. Display name
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Display name
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "proxiedDomains" => lambda {|n| @proxied_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProxiedDomain.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the proxiedDomains property value. Collection of proxied domains
        ## @return a proxied_domain
        ## 
        def proxied_domains
            return @proxied_domains
        end
        ## 
        ## Sets the proxiedDomains property value. Collection of proxied domains
        ## @param value Value to set for the proxiedDomains property.
        ## @return a void
        ## 
        def proxied_domains=(value)
            @proxied_domains = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("proxiedDomains", @proxied_domains)
            writer.write_additional_data(@additional_data)
        end
    end
end
