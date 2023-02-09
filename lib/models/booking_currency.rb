require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BookingCurrency < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.
            @symbol
            ## 
            ## Instantiates a new BookingCurrency and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_currency
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingCurrency.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "symbol" => lambda {|n| @symbol = n.get_string_value() },
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
                writer.write_string_value("symbol", @symbol)
            end
            ## 
            ## Gets the symbol property value. The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.
            ## @return a string
            ## 
            def symbol
                return @symbol
            end
            ## 
            ## Sets the symbol property value. The currency symbol. For example, the currency symbol for the US dollar and for the Australian dollar is $.
            ## @param value Value to set for the symbol property.
            ## @return a void
            ## 
            def symbol=(value)
                @symbol = value
            end
        end
    end
end
