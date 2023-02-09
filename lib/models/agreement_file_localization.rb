require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AgreementFileLocalization < MicrosoftGraph::Models::AgreementFileProperties
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Customized versions of the terms of use agreement in the Azure AD tenant.
            @versions
            ## 
            ## Instantiates a new agreementFileLocalization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a agreement_file_localization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AgreementFileLocalization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementFileVersion.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("versions", @versions)
            end
            ## 
            ## Gets the versions property value. Read-only. Customized versions of the terms of use agreement in the Azure AD tenant.
            ## @return a agreement_file_version
            ## 
            def versions
                return @versions
            end
            ## 
            ## Sets the versions property value. Read-only. Customized versions of the terms of use agreement in the Azure AD tenant.
            ## @param value Value to set for the versions property.
            ## @return a void
            ## 
            def versions=(value)
                @versions = value
            end
        end
    end
end
