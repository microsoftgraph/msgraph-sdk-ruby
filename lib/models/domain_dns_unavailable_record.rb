require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsUnavailableRecord < MicrosoftGraph::Models::DomainDnsRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Provides the reason why the DomainDnsUnavailableRecord entity is returned.
            @description
            ## 
            ## Instantiates a new DomainDnsUnavailableRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_unavailable_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainDnsUnavailableRecord.new
            end
            ## 
            ## Gets the description property value. Provides the reason why the DomainDnsUnavailableRecord entity is returned.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Provides the reason why the DomainDnsUnavailableRecord entity is returned.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
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
                writer.write_string_value("description", @description)
            end
        end
    end
end
