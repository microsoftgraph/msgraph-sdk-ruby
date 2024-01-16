require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class LoginPageLayoutConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Option to show the footer on the sign-in page.
            @is_footer_shown
            ## 
            # Option to show the header on the sign-in page.
            @is_header_shown
            ## 
            # Represents the layout template to be displayed on the login page for a tenant. The possible values are  default - Represents the default Microsoft layout with a centered lightbox.  verticalSplit - Represents a layout with a background on the left side and a full-height lightbox to the right.  unknownFutureValue - Evolvable enumeration sentinel value. Don't use.
            @layout_template_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new loginPageLayoutConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a login_page_layout_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LoginPageLayoutConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isFooterShown" => lambda {|n| @is_footer_shown = n.get_boolean_value() },
                    "isHeaderShown" => lambda {|n| @is_header_shown = n.get_boolean_value() },
                    "layoutTemplateType" => lambda {|n| @layout_template_type = n.get_enum_value(MicrosoftGraph::Models::LayoutTemplateType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isFooterShown property value. Option to show the footer on the sign-in page.
            ## @return a boolean
            ## 
            def is_footer_shown
                return @is_footer_shown
            end
            ## 
            ## Sets the isFooterShown property value. Option to show the footer on the sign-in page.
            ## @param value Value to set for the isFooterShown property.
            ## @return a void
            ## 
            def is_footer_shown=(value)
                @is_footer_shown = value
            end
            ## 
            ## Gets the isHeaderShown property value. Option to show the header on the sign-in page.
            ## @return a boolean
            ## 
            def is_header_shown
                return @is_header_shown
            end
            ## 
            ## Sets the isHeaderShown property value. Option to show the header on the sign-in page.
            ## @param value Value to set for the isHeaderShown property.
            ## @return a void
            ## 
            def is_header_shown=(value)
                @is_header_shown = value
            end
            ## 
            ## Gets the layoutTemplateType property value. Represents the layout template to be displayed on the login page for a tenant. The possible values are  default - Represents the default Microsoft layout with a centered lightbox.  verticalSplit - Represents a layout with a background on the left side and a full-height lightbox to the right.  unknownFutureValue - Evolvable enumeration sentinel value. Don't use.
            ## @return a layout_template_type
            ## 
            def layout_template_type
                return @layout_template_type
            end
            ## 
            ## Sets the layoutTemplateType property value. Represents the layout template to be displayed on the login page for a tenant. The possible values are  default - Represents the default Microsoft layout with a centered lightbox.  verticalSplit - Represents a layout with a background on the left side and a full-height lightbox to the right.  unknownFutureValue - Evolvable enumeration sentinel value. Don't use.
            ## @param value Value to set for the layoutTemplateType property.
            ## @return a void
            ## 
            def layout_template_type=(value)
                @layout_template_type = value
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
                writer.write_boolean_value("isFooterShown", @is_footer_shown)
                writer.write_boolean_value("isHeaderShown", @is_header_shown)
                writer.write_enum_value("layoutTemplateType", @layout_template_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
