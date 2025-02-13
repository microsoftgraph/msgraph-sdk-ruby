require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecuritySasTokenEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowedIpAddresses property
            @allowed_ip_addresses
            ## 
            # The allowedResourceTypes property
            @allowed_resource_types
            ## 
            # The allowedServices property
            @allowed_services
            ## 
            # The expiryDateTime property
            @expiry_date_time
            ## 
            # The permissions property
            @permissions
            ## 
            # The protocol property
            @protocol
            ## 
            # The signatureHash property
            @signature_hash
            ## 
            # The signedWith property
            @signed_with
            ## 
            # The startDateTime property
            @start_date_time
            ## 
            # The storageResource property
            @storage_resource
            ## 
            ## Gets the allowedIpAddresses property value. The allowedIpAddresses property
            ## @return a string
            ## 
            def allowed_ip_addresses
                return @allowed_ip_addresses
            end
            ## 
            ## Sets the allowedIpAddresses property value. The allowedIpAddresses property
            ## @param value Value to set for the allowedIpAddresses property.
            ## @return a void
            ## 
            def allowed_ip_addresses=(value)
                @allowed_ip_addresses = value
            end
            ## 
            ## Gets the allowedResourceTypes property value. The allowedResourceTypes property
            ## @return a string
            ## 
            def allowed_resource_types
                return @allowed_resource_types
            end
            ## 
            ## Sets the allowedResourceTypes property value. The allowedResourceTypes property
            ## @param value Value to set for the allowedResourceTypes property.
            ## @return a void
            ## 
            def allowed_resource_types=(value)
                @allowed_resource_types = value
            end
            ## 
            ## Gets the allowedServices property value. The allowedServices property
            ## @return a string
            ## 
            def allowed_services
                return @allowed_services
            end
            ## 
            ## Sets the allowedServices property value. The allowedServices property
            ## @param value Value to set for the allowedServices property.
            ## @return a void
            ## 
            def allowed_services=(value)
                @allowed_services = value
            end
            ## 
            ## Instantiates a new SecuritySasTokenEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.sasTokenEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_sas_token_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecuritySasTokenEvidence.new
            end
            ## 
            ## Gets the expiryDateTime property value. The expiryDateTime property
            ## @return a date_time
            ## 
            def expiry_date_time
                return @expiry_date_time
            end
            ## 
            ## Sets the expiryDateTime property value. The expiryDateTime property
            ## @param value Value to set for the expiryDateTime property.
            ## @return a void
            ## 
            def expiry_date_time=(value)
                @expiry_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedIpAddresses" => lambda {|n| @allowed_ip_addresses = n.get_string_value() },
                    "allowedResourceTypes" => lambda {|n| @allowed_resource_types = n.get_collection_of_primitive_values(String) },
                    "allowedServices" => lambda {|n| @allowed_services = n.get_collection_of_primitive_values(String) },
                    "expiryDateTime" => lambda {|n| @expiry_date_time = n.get_date_time_value() },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_primitive_values(String) },
                    "protocol" => lambda {|n| @protocol = n.get_string_value() },
                    "signatureHash" => lambda {|n| @signature_hash = n.get_string_value() },
                    "signedWith" => lambda {|n| @signed_with = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "storageResource" => lambda {|n| @storage_resource = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityAzureResourceEvidence.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the permissions property value. The permissions property
            ## @return a string
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. The permissions property
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the protocol property value. The protocol property
            ## @return a string
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The protocol property
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("allowedIpAddresses", @allowed_ip_addresses)
                writer.write_collection_of_primitive_values("allowedResourceTypes", @allowed_resource_types)
                writer.write_collection_of_primitive_values("allowedServices", @allowed_services)
                writer.write_date_time_value("expiryDateTime", @expiry_date_time)
                writer.write_collection_of_primitive_values("permissions", @permissions)
                writer.write_string_value("protocol", @protocol)
                writer.write_string_value("signatureHash", @signature_hash)
                writer.write_string_value("signedWith", @signed_with)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_object_value("storageResource", @storage_resource)
            end
            ## 
            ## Gets the signatureHash property value. The signatureHash property
            ## @return a string
            ## 
            def signature_hash
                return @signature_hash
            end
            ## 
            ## Sets the signatureHash property value. The signatureHash property
            ## @param value Value to set for the signatureHash property.
            ## @return a void
            ## 
            def signature_hash=(value)
                @signature_hash = value
            end
            ## 
            ## Gets the signedWith property value. The signedWith property
            ## @return a string
            ## 
            def signed_with
                return @signed_with
            end
            ## 
            ## Sets the signedWith property value. The signedWith property
            ## @param value Value to set for the signedWith property.
            ## @return a void
            ## 
            def signed_with=(value)
                @signed_with = value
            end
            ## 
            ## Gets the startDateTime property value. The startDateTime property
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The startDateTime property
            ## @param value Value to set for the startDateTime property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the storageResource property value. The storageResource property
            ## @return a security_azure_resource_evidence
            ## 
            def storage_resource
                return @storage_resource
            end
            ## 
            ## Sets the storageResource property value. The storageResource property
            ## @param value Value to set for the storageResource property.
            ## @return a void
            ## 
            def storage_resource=(value)
                @storage_resource = value
            end
        end
    end
end
