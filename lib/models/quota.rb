require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Quota
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Total space consumed by files in the recycle bin, in bytes. Read-only.
            @deleted
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Total space remaining before reaching the quota limit, in bytes. Read-only.
            @remaining
            ## 
            # Enumeration value that indicates the state of the storage space. Read-only.
            @state
            ## 
            # Information about the drive's storage quota plans. Only in Personal OneDrive.
            @storage_plan_information
            ## 
            # Total allowed storage space, in bytes. Read-only.
            @total
            ## 
            # Total space used, in bytes. Read-only.
            @used
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
            ## Instantiates a new quota and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a quota
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Quota.new
            end
            ## 
            ## Gets the deleted property value. Total space consumed by files in the recycle bin, in bytes. Read-only.
            ## @return a int64
            ## 
            def deleted
                return @deleted
            end
            ## 
            ## Sets the deleted property value. Total space consumed by files in the recycle bin, in bytes. Read-only.
            ## @param value Value to set for the deleted property.
            ## @return a void
            ## 
            def deleted=(value)
                @deleted = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deleted" => lambda {|n| @deleted = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "remaining" => lambda {|n| @remaining = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "storagePlanInformation" => lambda {|n| @storage_plan_information = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::StoragePlanInformation.create_from_discriminator_value(pn) }) },
                    "total" => lambda {|n| @total = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "used" => lambda {|n| @used = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
            ## Gets the remaining property value. Total space remaining before reaching the quota limit, in bytes. Read-only.
            ## @return a int64
            ## 
            def remaining
                return @remaining
            end
            ## 
            ## Sets the remaining property value. Total space remaining before reaching the quota limit, in bytes. Read-only.
            ## @param value Value to set for the remaining property.
            ## @return a void
            ## 
            def remaining=(value)
                @remaining = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("deleted", @deleted)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("remaining", @remaining)
                writer.write_string_value("state", @state)
                writer.write_object_value("storagePlanInformation", @storage_plan_information)
                writer.write_object_value("total", @total)
                writer.write_object_value("used", @used)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. Enumeration value that indicates the state of the storage space. Read-only.
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Enumeration value that indicates the state of the storage space. Read-only.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the storagePlanInformation property value. Information about the drive's storage quota plans. Only in Personal OneDrive.
            ## @return a storage_plan_information
            ## 
            def storage_plan_information
                return @storage_plan_information
            end
            ## 
            ## Sets the storagePlanInformation property value. Information about the drive's storage quota plans. Only in Personal OneDrive.
            ## @param value Value to set for the storage_plan_information property.
            ## @return a void
            ## 
            def storage_plan_information=(value)
                @storage_plan_information = value
            end
            ## 
            ## Gets the total property value. Total allowed storage space, in bytes. Read-only.
            ## @return a int64
            ## 
            def total
                return @total
            end
            ## 
            ## Sets the total property value. Total allowed storage space, in bytes. Read-only.
            ## @param value Value to set for the total property.
            ## @return a void
            ## 
            def total=(value)
                @total = value
            end
            ## 
            ## Gets the used property value. Total space used, in bytes. Read-only.
            ## @return a int64
            ## 
            def used
                return @used
            end
            ## 
            ## Sets the used property value. Total space used, in bytes. Read-only.
            ## @param value Value to set for the used property.
            ## @return a void
            ## 
            def used=(value)
                @used = value
            end
        end
    end
end
