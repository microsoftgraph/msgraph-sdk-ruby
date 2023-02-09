require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class AlertComment
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The comment text.
                @comment
                ## 
                # The person or app name that submitted the comment.
                @created_by_display_name
                ## 
                # The time when the comment was submitted.
                @created_date_time
                ## 
                # The OdataType property
                @odata_type
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the comment property value. The comment text.
                ## @return a string
                ## 
                def comment
                    return @comment
                end
                ## 
                ## Sets the comment property value. The comment text.
                ## @param value Value to set for the comment property.
                ## @return a void
                ## 
                def comment=(value)
                    @comment = value
                end
                ## 
                ## Instantiates a new alertComment and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the createdByDisplayName property value. The person or app name that submitted the comment.
                ## @return a string
                ## 
                def created_by_display_name
                    return @created_by_display_name
                end
                ## 
                ## Sets the createdByDisplayName property value. The person or app name that submitted the comment.
                ## @param value Value to set for the created_by_display_name property.
                ## @return a void
                ## 
                def created_by_display_name=(value)
                    @created_by_display_name = value
                end
                ## 
                ## Gets the createdDateTime property value. The time when the comment was submitted.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The time when the comment was submitted.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a alert_comment
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AlertComment.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "comment" => lambda {|n| @comment = n.get_string_value() },
                        "createdByDisplayName" => lambda {|n| @created_by_display_name = n.get_string_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                ## @param value Value to set for the odata_type property.
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
                    writer.write_string_value("comment", @comment)
                    writer.write_string_value("createdByDisplayName", @created_by_display_name)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
