require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class Hostname < MicrosoftGraph::Models::Security::Host
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The company or individual who registered this hostname, from WHOIS data.
                @registrant
                ## 
                # The registrar for this hostname, from WHOIS data.
                @registrar
                ## 
                ## Instantiates a new Hostname and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.hostname"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a hostname
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Hostname.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "registrant" => lambda {|n| @registrant = n.get_string_value() },
                        "registrar" => lambda {|n| @registrar = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the registrant property value. The company or individual who registered this hostname, from WHOIS data.
                ## @return a string
                ## 
                def registrant
                    return @registrant
                end
                ## 
                ## Sets the registrant property value. The company or individual who registered this hostname, from WHOIS data.
                ## @param value Value to set for the registrant property.
                ## @return a void
                ## 
                def registrant=(value)
                    @registrant = value
                end
                ## 
                ## Gets the registrar property value. The registrar for this hostname, from WHOIS data.
                ## @return a string
                ## 
                def registrar
                    return @registrar
                end
                ## 
                ## Sets the registrar property value. The registrar for this hostname, from WHOIS data.
                ## @param value Value to set for the registrar property.
                ## @return a void
                ## 
                def registrar=(value)
                    @registrar = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("registrant", @registrant)
                    writer.write_string_value("registrar", @registrar)
                end
            end
        end
    end
end
