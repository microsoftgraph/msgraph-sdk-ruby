require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CertificateBasedAuthPki < MicrosoftGraph::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The certificateAuthorities property
            @certificate_authorities
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The status property
            @status
            ## 
            # The statusDetails property
            @status_details
            ## 
            ## Gets the certificateAuthorities property value. The certificateAuthorities property
            ## @return a certificate_authority_detail
            ## 
            def certificate_authorities
                return @certificate_authorities
            end
            ## 
            ## Sets the certificateAuthorities property value. The certificateAuthorities property
            ## @param value Value to set for the certificateAuthorities property.
            ## @return a void
            ## 
            def certificate_authorities=(value)
                @certificate_authorities = value
            end
            ## 
            ## Instantiates a new CertificateBasedAuthPki and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.certificateBasedAuthPki"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a certificate_based_auth_pki
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateBasedAuthPki.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
                return super.merge({
                    "certificateAuthorities" => lambda {|n| @certificate_authorities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::CertificateAuthorityDetail.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "statusDetails" => lambda {|n| @status_details = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("certificateAuthorities", @certificate_authorities)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("status", @status)
                writer.write_string_value("statusDetails", @status_details)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusDetails property value. The statusDetails property
            ## @return a string
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The statusDetails property
            ## @param value Value to set for the statusDetails property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
        end
    end
end
