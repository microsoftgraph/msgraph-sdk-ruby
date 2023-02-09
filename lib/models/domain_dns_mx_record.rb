require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DomainDnsMxRecord < MicrosoftGraph::Models::DomainDnsRecord
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Value used when configuring the answer/destination/value of the MX record at the DNS host.
            @mail_exchange
            ## 
            # Value used when configuring the Preference/Priority property of the MX record at the DNS host.
            @preference
            ## 
            ## Instantiates a new DomainDnsMxRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a domain_dns_mx_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DomainDnsMxRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailExchange" => lambda {|n| @mail_exchange = n.get_string_value() },
                    "preference" => lambda {|n| @preference = n.get_number_value() },
                })
            end
            ## 
            ## Gets the mailExchange property value. Value used when configuring the answer/destination/value of the MX record at the DNS host.
            ## @return a string
            ## 
            def mail_exchange
                return @mail_exchange
            end
            ## 
            ## Sets the mailExchange property value. Value used when configuring the answer/destination/value of the MX record at the DNS host.
            ## @param value Value to set for the mail_exchange property.
            ## @return a void
            ## 
            def mail_exchange=(value)
                @mail_exchange = value
            end
            ## 
            ## Gets the preference property value. Value used when configuring the Preference/Priority property of the MX record at the DNS host.
            ## @return a integer
            ## 
            def preference
                return @preference
            end
            ## 
            ## Sets the preference property value. Value used when configuring the Preference/Priority property of the MX record at the DNS host.
            ## @param value Value to set for the preference property.
            ## @return a void
            ## 
            def preference=(value)
                @preference = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("mailExchange", @mail_exchange)
                writer.write_number_value("preference", @preference)
            end
        end
    end
end
