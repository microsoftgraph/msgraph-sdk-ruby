require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class EducationTerm
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Display name of the term.
            @display_name
            ## 
            # End of the term.
            @end_date
            ## 
            # ID of term in the syncing system.
            @external_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Start of the term.
            @start_date
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new educationTerm and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_term
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationTerm.new
            end
            ## 
            ## Gets the displayName property value. Display name of the term.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the term.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the endDate property value. End of the term.
            ## @return a date
            ## 
            def end_date
                return @end_date
            end
            ## 
            ## Sets the endDate property value. End of the term.
            ## @param value Value to set for the endDate property.
            ## @return a void
            ## 
            def end_date=(value)
                @end_date = value
            end
            ## 
            ## Gets the externalId property value. ID of term in the syncing system.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. ID of term in the syncing system.
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "endDate" => lambda {|n| @end_date = n.get_date_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startDate" => lambda {|n| @start_date = n.get_date_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name) unless @display_name.nil?
                writer.write_date_value("endDate", @end_date) unless @end_date.nil?
                writer.write_string_value("externalId", @external_id) unless @external_id.nil?
                writer.write_string_value("@odata.type", @odata_type) unless @odata_type.nil?
                writer.write_date_value("startDate", @start_date) unless @start_date.nil?
                writer.write_additional_data(@additional_data) unless @additional_data.nil?
            end
            ## 
            ## Gets the startDate property value. Start of the term.
            ## @return a date
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. Start of the term.
            ## @param value Value to set for the startDate property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
        end
    end
end
