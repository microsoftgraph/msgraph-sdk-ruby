require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MicrosoftManagedDesktop
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the provisioning policy associated with Microsoft Managed Desktop settings. Possible values are: notManaged, premiumManaged, standardManaged, starterManaged, unknownFutureValue. The default is notManaged.
            @managed_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The name of the Microsoft Managed Desktop profile that the Windows 365 Cloud PC is associated with.
            @profile
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
            ## Instantiates a new MicrosoftManagedDesktop and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_managed_desktop
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftManagedDesktop.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "managedType" => lambda {|n| @managed_type = n.get_enum_value(MicrosoftGraph::Models::MicrosoftManagedDesktopType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "profile" => lambda {|n| @profile = n.get_string_value() },
                }
            end
            ## 
            ## Gets the managedType property value. Indicates the provisioning policy associated with Microsoft Managed Desktop settings. Possible values are: notManaged, premiumManaged, standardManaged, starterManaged, unknownFutureValue. The default is notManaged.
            ## @return a microsoft_managed_desktop_type
            ## 
            def managed_type
                return @managed_type
            end
            ## 
            ## Sets the managedType property value. Indicates the provisioning policy associated with Microsoft Managed Desktop settings. Possible values are: notManaged, premiumManaged, standardManaged, starterManaged, unknownFutureValue. The default is notManaged.
            ## @param value Value to set for the managedType property.
            ## @return a void
            ## 
            def managed_type=(value)
                @managed_type = value
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
            ## Gets the profile property value. The name of the Microsoft Managed Desktop profile that the Windows 365 Cloud PC is associated with.
            ## @return a string
            ## 
            def profile
                return @profile
            end
            ## 
            ## Sets the profile property value. The name of the Microsoft Managed Desktop profile that the Windows 365 Cloud PC is associated with.
            ## @param value Value to set for the profile property.
            ## @return a void
            ## 
            def profile=(value)
                @profile = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("managedType", @managed_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("profile", @profile)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
