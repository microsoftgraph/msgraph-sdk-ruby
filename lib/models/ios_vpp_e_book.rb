require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class IosVppEBook < MicrosoftGraph::Models::ManagedEBook
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Apple ID associated with Vpp token.
            @apple_id
            ## 
            # Genres.
            @genres
            ## 
            # Language.
            @language
            ## 
            # Seller.
            @seller
            ## 
            # Total license count.
            @total_license_count
            ## 
            # Used license count.
            @used_license_count
            ## 
            # The Vpp token's organization name.
            @vpp_organization_name
            ## 
            # The Vpp token ID.
            @vpp_token_id
            ## 
            ## Gets the appleId property value. The Apple ID associated with Vpp token.
            ## @return a string
            ## 
            def apple_id
                return @apple_id
            end
            ## 
            ## Sets the appleId property value. The Apple ID associated with Vpp token.
            ## @param value Value to set for the apple_id property.
            ## @return a void
            ## 
            def apple_id=(value)
                @apple_id = value
            end
            ## 
            ## Instantiates a new IosVppEBook and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosVppEBook"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_vpp_e_book
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosVppEBook.new
            end
            ## 
            ## Gets the genres property value. Genres.
            ## @return a string
            ## 
            def genres
                return @genres
            end
            ## 
            ## Sets the genres property value. Genres.
            ## @param value Value to set for the genres property.
            ## @return a void
            ## 
            def genres=(value)
                @genres = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appleId" => lambda {|n| @apple_id = n.get_string_value() },
                    "genres" => lambda {|n| @genres = n.get_collection_of_primitive_values(String) },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "seller" => lambda {|n| @seller = n.get_string_value() },
                    "totalLicenseCount" => lambda {|n| @total_license_count = n.get_number_value() },
                    "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
                    "vppOrganizationName" => lambda {|n| @vpp_organization_name = n.get_string_value() },
                    "vppTokenId" => lambda {|n| @vpp_token_id = n.get_guid_value() },
                })
            end
            ## 
            ## Gets the language property value. Language.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. Language.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the seller property value. Seller.
            ## @return a string
            ## 
            def seller
                return @seller
            end
            ## 
            ## Sets the seller property value. Seller.
            ## @param value Value to set for the seller property.
            ## @return a void
            ## 
            def seller=(value)
                @seller = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appleId", @apple_id)
                writer.write_collection_of_primitive_values("genres", @genres)
                writer.write_string_value("language", @language)
                writer.write_string_value("seller", @seller)
                writer.write_number_value("totalLicenseCount", @total_license_count)
                writer.write_number_value("usedLicenseCount", @used_license_count)
                writer.write_string_value("vppOrganizationName", @vpp_organization_name)
                writer.write_guid_value("vppTokenId", @vpp_token_id)
            end
            ## 
            ## Gets the totalLicenseCount property value. Total license count.
            ## @return a integer
            ## 
            def total_license_count
                return @total_license_count
            end
            ## 
            ## Sets the totalLicenseCount property value. Total license count.
            ## @param value Value to set for the total_license_count property.
            ## @return a void
            ## 
            def total_license_count=(value)
                @total_license_count = value
            end
            ## 
            ## Gets the usedLicenseCount property value. Used license count.
            ## @return a integer
            ## 
            def used_license_count
                return @used_license_count
            end
            ## 
            ## Sets the usedLicenseCount property value. Used license count.
            ## @param value Value to set for the used_license_count property.
            ## @return a void
            ## 
            def used_license_count=(value)
                @used_license_count = value
            end
            ## 
            ## Gets the vppOrganizationName property value. The Vpp token's organization name.
            ## @return a string
            ## 
            def vpp_organization_name
                return @vpp_organization_name
            end
            ## 
            ## Sets the vppOrganizationName property value. The Vpp token's organization name.
            ## @param value Value to set for the vpp_organization_name property.
            ## @return a void
            ## 
            def vpp_organization_name=(value)
                @vpp_organization_name = value
            end
            ## 
            ## Gets the vppTokenId property value. The Vpp token ID.
            ## @return a guid
            ## 
            def vpp_token_id
                return @vpp_token_id
            end
            ## 
            ## Sets the vppTokenId property value. The Vpp token ID.
            ## @param value Value to set for the vpp_token_id property.
            ## @return a void
            ## 
            def vpp_token_id=(value)
                @vpp_token_id = value
            end
        end
    end
end
