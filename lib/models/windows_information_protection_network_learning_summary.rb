require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows Information Protection Network learning Summary entity.
        class WindowsInformationProtectionNetworkLearningSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device Count
            @device_count
            ## 
            # Website url
            @url
            ## 
            ## Instantiates a new windowsInformationProtectionNetworkLearningSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_network_learning_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionNetworkLearningSummary.new
            end
            ## 
            ## Gets the deviceCount property value. Device Count
            ## @return a integer
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. Device Count
            ## @param value Value to set for the device_count property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
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
                writer.write_number_value("deviceCount", @device_count)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the url property value. Website url
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. Website url
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
