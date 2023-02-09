require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SharingDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The user who shared the document.
            @shared_by
            ## 
            # The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @shared_date_time
            ## 
            # The sharingReference property
            @sharing_reference
            ## 
            # The subject with which the document was shared.
            @sharing_subject
            ## 
            # Determines the way the document was shared, can be by a 'Link', 'Attachment', 'Group', 'Site'.
            @sharing_type
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
            ## Instantiates a new sharingDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sharing_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharingDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sharedBy" => lambda {|n| @shared_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::InsightIdentity.create_from_discriminator_value(pn) }) },
                    "sharedDateTime" => lambda {|n| @shared_date_time = n.get_date_time_value() },
                    "sharingReference" => lambda {|n| @sharing_reference = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ResourceReference.create_from_discriminator_value(pn) }) },
                    "sharingSubject" => lambda {|n| @sharing_subject = n.get_string_value() },
                    "sharingType" => lambda {|n| @sharing_type = n.get_string_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sharedBy", @shared_by)
                writer.write_date_time_value("sharedDateTime", @shared_date_time)
                writer.write_string_value("sharingSubject", @sharing_subject)
                writer.write_string_value("sharingType", @sharing_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharedBy property value. The user who shared the document.
            ## @return a insight_identity
            ## 
            def shared_by
                return @shared_by
            end
            ## 
            ## Sets the sharedBy property value. The user who shared the document.
            ## @param value Value to set for the shared_by property.
            ## @return a void
            ## 
            def shared_by=(value)
                @shared_by = value
            end
            ## 
            ## Gets the sharedDateTime property value. The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def shared_date_time
                return @shared_date_time
            end
            ## 
            ## Sets the sharedDateTime property value. The date and time the file was last shared. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the shared_date_time property.
            ## @return a void
            ## 
            def shared_date_time=(value)
                @shared_date_time = value
            end
            ## 
            ## Gets the sharingReference property value. The sharingReference property
            ## @return a resource_reference
            ## 
            def sharing_reference
                return @sharing_reference
            end
            ## 
            ## Sets the sharingReference property value. The sharingReference property
            ## @param value Value to set for the sharing_reference property.
            ## @return a void
            ## 
            def sharing_reference=(value)
                @sharing_reference = value
            end
            ## 
            ## Gets the sharingSubject property value. The subject with which the document was shared.
            ## @return a string
            ## 
            def sharing_subject
                return @sharing_subject
            end
            ## 
            ## Sets the sharingSubject property value. The subject with which the document was shared.
            ## @param value Value to set for the sharing_subject property.
            ## @return a void
            ## 
            def sharing_subject=(value)
                @sharing_subject = value
            end
            ## 
            ## Gets the sharingType property value. Determines the way the document was shared, can be by a 'Link', 'Attachment', 'Group', 'Site'.
            ## @return a string
            ## 
            def sharing_type
                return @sharing_type
            end
            ## 
            ## Sets the sharingType property value. Determines the way the document was shared, can be by a 'Link', 'Attachment', 'Group', 'Site'.
            ## @param value Value to set for the sharing_type property.
            ## @return a void
            ## 
            def sharing_type=(value)
                @sharing_type = value
            end
        end
    end
end
