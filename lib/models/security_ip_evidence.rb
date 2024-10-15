require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityIpEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The two-letter country code according to ISO 3166 format, for example: US, UK, CA, etc.
            @country_letter_code
            ## 
            # The value of the IP Address, can be either in V4 address or V6 address format.
            @ip_address
            ## 
            # The location property
            @location
            ## 
            # The stream property
            @stream
            ## 
            ## Instantiates a new SecurityIpEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.ipEvidence"
            end
            ## 
            ## Gets the countryLetterCode property value. The two-letter country code according to ISO 3166 format, for example: US, UK, CA, etc.
            ## @return a string
            ## 
            def country_letter_code
                return @country_letter_code
            end
            ## 
            ## Sets the countryLetterCode property value. The two-letter country code according to ISO 3166 format, for example: US, UK, CA, etc.
            ## @param value Value to set for the countryLetterCode property.
            ## @return a void
            ## 
            def country_letter_code=(value)
                @country_letter_code = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_ip_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityIpEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "countryLetterCode" => lambda {|n| @country_letter_code = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "location" => lambda {|n| @location = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityGeoLocation.create_from_discriminator_value(pn) }) },
                    "stream" => lambda {|n| @stream = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SecurityStream.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ipAddress property value. The value of the IP Address, can be either in V4 address or V6 address format.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The value of the IP Address, can be either in V4 address or V6 address format.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the location property value. The location property
            ## @return a security_geo_location
            ## 
            def location
                return @location
            end
            ## 
            ## Sets the location property value. The location property
            ## @param value Value to set for the location property.
            ## @return a void
            ## 
            def location=(value)
                @location = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("countryLetterCode", @country_letter_code)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_object_value("location", @location)
                writer.write_object_value("stream", @stream)
            end
            ## 
            ## Gets the stream property value. The stream property
            ## @return a security_stream
            ## 
            def stream
                return @stream
            end
            ## 
            ## Sets the stream property value. The stream property
            ## @param value Value to set for the stream property.
            ## @return a void
            ## 
            def stream=(value)
                @stream = value
            end
        end
    end
end
