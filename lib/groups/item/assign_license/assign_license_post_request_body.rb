require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/assigned_license'
require_relative '../../groups'
require_relative '../item'
require_relative './assign_license'

module MicrosoftGraph
    module Groups
        module Item
            module AssignLicense
                class AssignLicensePostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # The addLicenses property
                    @add_licenses
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The removeLicenses property
                    @remove_licenses
                    ## 
                    ## Gets the addLicenses property value. The addLicenses property
                    ## @return a assigned_license
                    ## 
                    def add_licenses
                        return @add_licenses
                    end
                    ## 
                    ## Sets the addLicenses property value. The addLicenses property
                    ## @param value Value to set for the add_licenses property.
                    ## @return a void
                    ## 
                    def add_licenses=(value)
                        @add_licenses = value
                    end
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
                    ## Instantiates a new assignLicensePostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a assign_license_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return AssignLicensePostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "addLicenses" => lambda {|n| @add_licenses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AssignedLicense.create_from_discriminator_value(pn) }) },
                            "removeLicenses" => lambda {|n| @remove_licenses = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                        }
                    end
                    ## 
                    ## Gets the removeLicenses property value. The removeLicenses property
                    ## @return a guid
                    ## 
                    def remove_licenses
                        return @remove_licenses
                    end
                    ## 
                    ## Sets the removeLicenses property value. The removeLicenses property
                    ## @param value Value to set for the remove_licenses property.
                    ## @return a void
                    ## 
                    def remove_licenses=(value)
                        @remove_licenses = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_object_values("addLicenses", @add_licenses)
                        writer.write_collection_of_primitive_values("removeLicenses", @remove_licenses)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
