require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RestorePoint < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Expiration date time of the restore point.
            @expiration_date_time
            ## 
            # Date time when the restore point was created.
            @protection_date_time
            ## 
            # The site, drive, or mailbox units that are protected under a protection policy.
            @protection_unit
            ## 
            # The type of the restore point. The possible values are: none, fastRestore, unknownFutureValue.
            @tags
            ## 
            ## Instantiates a new RestorePoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a restore_point
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RestorePoint.new
            end
            ## 
            ## Gets the expirationDateTime property value. Expiration date time of the restore point.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Expiration date time of the restore point.
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "protectionDateTime" => lambda {|n| @protection_date_time = n.get_date_time_value() },
                    "protectionUnit" => lambda {|n| @protection_unit = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ProtectionUnitBase.create_from_discriminator_value(pn) }) },
                    "tags" => lambda {|n| @tags = n.get_enum_values(MicrosoftGraph::Models::RestorePointTags) },
                })
            end
            ## 
            ## Gets the protectionDateTime property value. Date time when the restore point was created.
            ## @return a date_time
            ## 
            def protection_date_time
                return @protection_date_time
            end
            ## 
            ## Sets the protectionDateTime property value. Date time when the restore point was created.
            ## @param value Value to set for the protectionDateTime property.
            ## @return a void
            ## 
            def protection_date_time=(value)
                @protection_date_time = value
            end
            ## 
            ## Gets the protectionUnit property value. The site, drive, or mailbox units that are protected under a protection policy.
            ## @return a protection_unit_base
            ## 
            def protection_unit
                return @protection_unit
            end
            ## 
            ## Sets the protectionUnit property value. The site, drive, or mailbox units that are protected under a protection policy.
            ## @param value Value to set for the protectionUnit property.
            ## @return a void
            ## 
            def protection_unit=(value)
                @protection_unit = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("protectionDateTime", @protection_date_time)
                writer.write_object_value("protectionUnit", @protection_unit)
                writer.write_enum_value("tags", @tags)
            end
            ## 
            ## Gets the tags property value. The type of the restore point. The possible values are: none, fastRestore, unknownFutureValue.
            ## @return a restore_point_tags
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The type of the restore point. The possible values are: none, fastRestore, unknownFutureValue.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
        end
    end
end
