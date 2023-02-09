require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Shared
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identity of the owner of the shared item. Read-only.
            @owner
            ## 
            # Indicates the scope of how the item is shared: anonymous, organization, or users. Read-only.
            @scope
            ## 
            # The identity of the user who shared the item. Read-only.
            @shared_by
            ## 
            # The UTC date and time when the item was shared. Read-only.
            @shared_date_time
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
            ## Instantiates a new shared and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a shared
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Shared.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "scope" => lambda {|n| @scope = n.get_string_value() },
                    "sharedBy" => lambda {|n| @shared_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "sharedDateTime" => lambda {|n| @shared_date_time = n.get_date_time_value() },
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
            ## Gets the owner property value. The identity of the owner of the shared item. Read-only.
            ## @return a identity_set
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The identity of the owner of the shared item. Read-only.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the scope property value. Indicates the scope of how the item is shared: anonymous, organization, or users. Read-only.
            ## @return a string
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. Indicates the scope of how the item is shared: anonymous, organization, or users. Read-only.
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("owner", @owner)
                writer.write_string_value("scope", @scope)
                writer.write_object_value("sharedBy", @shared_by)
                writer.write_date_time_value("sharedDateTime", @shared_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharedBy property value. The identity of the user who shared the item. Read-only.
            ## @return a identity_set
            ## 
            def shared_by
                return @shared_by
            end
            ## 
            ## Sets the sharedBy property value. The identity of the user who shared the item. Read-only.
            ## @param value Value to set for the shared_by property.
            ## @return a void
            ## 
            def shared_by=(value)
                @shared_by = value
            end
            ## 
            ## Gets the sharedDateTime property value. The UTC date and time when the item was shared. Read-only.
            ## @return a date_time
            ## 
            def shared_date_time
                return @shared_date_time
            end
            ## 
            ## Sets the sharedDateTime property value. The UTC date and time when the item was shared. Read-only.
            ## @param value Value to set for the shared_date_time property.
            ## @return a void
            ## 
            def shared_date_time=(value)
                @shared_date_time = value
            end
        end
    end
end
