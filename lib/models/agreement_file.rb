require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AgreementFile < MicrosoftGraph::Models::AgreementFileProperties
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The localized version of the terms of use agreement files attached to the agreement.
            @localizations
            ## 
            ## Instantiates a new AgreementFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a agreement_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AgreementFile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "localizations" => lambda {|n| @localizations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::AgreementFileLocalization.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the localizations property value. The localized version of the terms of use agreement files attached to the agreement.
            ## @return a agreement_file_localization
            ## 
            def localizations
                return @localizations
            end
            ## 
            ## Sets the localizations property value. The localized version of the terms of use agreement files attached to the agreement.
            ## @param value Value to set for the localizations property.
            ## @return a void
            ## 
            def localizations=(value)
                @localizations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("localizations", @localizations)
            end
        end
    end
end
