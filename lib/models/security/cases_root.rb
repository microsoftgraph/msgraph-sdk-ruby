require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class CasesRoot < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The ediscoveryCases property
                @ediscovery_cases
                ## 
                ## Instantiates a new casesRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a cases_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CasesRoot.new
                end
                ## 
                ## Gets the ediscoveryCases property value. The ediscoveryCases property
                ## @return a ediscovery_case
                ## 
                def ediscovery_cases
                    return @ediscovery_cases
                end
                ## 
                ## Sets the ediscoveryCases property value. The ediscoveryCases property
                ## @param value Value to set for the ediscovery_cases property.
                ## @return a void
                ## 
                def ediscovery_cases=(value)
                    @ediscovery_cases = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "ediscoveryCases" => lambda {|n| @ediscovery_cases = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Security::EdiscoveryCase.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("ediscoveryCases", @ediscovery_cases)
                end
            end
        end
    end
end
