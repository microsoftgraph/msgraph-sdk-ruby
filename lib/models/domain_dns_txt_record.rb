require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsTxtRecord < MicrosoftGraph::Models::DomainDnsRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Value used when configuring the text property at the DNS host.
            @text
            ## 
            ## Instantiates a new DomainDnsTxtRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_txt_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainDnsTxtRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "text" => lambda {|n| @text = n.get_string_value() },
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
                writer.write_string_value("text", @text)
            end
            ## 
            ## Gets the text property value. Value used when configuring the text property at the DNS host.
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Value used when configuring the text property at the DNS host.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
