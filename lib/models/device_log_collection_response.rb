require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Windows Log Collection request entity.
        class DeviceLogCollectionResponse < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The User Principal Name (UPN) of the user that enrolled the device.
            @enrolled_by_user
            ## 
            # The DateTime of the expiration of the logs.
            @expiration_date_time_u_t_c
            ## 
            # The UPN for who initiated the request.
            @initiated_by_user_principal_name
            ## 
            # Indicates Intune device unique identifier.
            @managed_device_id
            ## 
            # The DateTime the request was received.
            @received_date_time_u_t_c
            ## 
            # The DateTime of the request.
            @requested_date_time_u_t_c
            ## 
            # The size of the logs in KB. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @size_in_k_b
            ## 
            # AppLogUploadStatus
            @status
            ## 
            ## Instantiates a new DeviceLogCollectionResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_log_collection_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceLogCollectionResponse.new
            end
            ## 
            ## Gets the enrolledByUser property value. The User Principal Name (UPN) of the user that enrolled the device.
            ## @return a string
            ## 
            def enrolled_by_user
                return @enrolled_by_user
            end
            ## 
            ## Sets the enrolledByUser property value. The User Principal Name (UPN) of the user that enrolled the device.
            ## @param value Value to set for the enrolledByUser property.
            ## @return a void
            ## 
            def enrolled_by_user=(value)
                @enrolled_by_user = value
            end
            ## 
            ## Gets the expirationDateTimeUTC property value. The DateTime of the expiration of the logs.
            ## @return a date_time
            ## 
            def expiration_date_time_u_t_c
                return @expiration_date_time_u_t_c
            end
            ## 
            ## Sets the expirationDateTimeUTC property value. The DateTime of the expiration of the logs.
            ## @param value Value to set for the expirationDateTimeUTC property.
            ## @return a void
            ## 
            def expiration_date_time_u_t_c=(value)
                @expiration_date_time_u_t_c = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enrolledByUser" => lambda {|n| @enrolled_by_user = n.get_string_value() },
                    "expirationDateTimeUTC" => lambda {|n| @expiration_date_time_u_t_c = n.get_date_time_value() },
                    "initiatedByUserPrincipalName" => lambda {|n| @initiated_by_user_principal_name = n.get_string_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_guid_value() },
                    "receivedDateTimeUTC" => lambda {|n| @received_date_time_u_t_c = n.get_date_time_value() },
                    "requestedDateTimeUTC" => lambda {|n| @requested_date_time_u_t_c = n.get_date_time_value() },
                    "sizeInKB" => lambda {|n| @size_in_k_b = n.get_object_value(lambda {|pn| DeviceLogCollectionResponse::DeviceLogCollectionResponseSizeInKB.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AppLogUploadState) },
                })
            end
            ## 
            ## Gets the initiatedByUserPrincipalName property value. The UPN for who initiated the request.
            ## @return a string
            ## 
            def initiated_by_user_principal_name
                return @initiated_by_user_principal_name
            end
            ## 
            ## Sets the initiatedByUserPrincipalName property value. The UPN for who initiated the request.
            ## @param value Value to set for the initiatedByUserPrincipalName property.
            ## @return a void
            ## 
            def initiated_by_user_principal_name=(value)
                @initiated_by_user_principal_name = value
            end
            ## 
            ## Gets the managedDeviceId property value. Indicates Intune device unique identifier.
            ## @return a guid
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Indicates Intune device unique identifier.
            ## @param value Value to set for the managedDeviceId property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the receivedDateTimeUTC property value. The DateTime the request was received.
            ## @return a date_time
            ## 
            def received_date_time_u_t_c
                return @received_date_time_u_t_c
            end
            ## 
            ## Sets the receivedDateTimeUTC property value. The DateTime the request was received.
            ## @param value Value to set for the receivedDateTimeUTC property.
            ## @return a void
            ## 
            def received_date_time_u_t_c=(value)
                @received_date_time_u_t_c = value
            end
            ## 
            ## Gets the requestedDateTimeUTC property value. The DateTime of the request.
            ## @return a date_time
            ## 
            def requested_date_time_u_t_c
                return @requested_date_time_u_t_c
            end
            ## 
            ## Sets the requestedDateTimeUTC property value. The DateTime of the request.
            ## @param value Value to set for the requestedDateTimeUTC property.
            ## @return a void
            ## 
            def requested_date_time_u_t_c=(value)
                @requested_date_time_u_t_c = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("enrolledByUser", @enrolled_by_user)
                writer.write_date_time_value("expirationDateTimeUTC", @expiration_date_time_u_t_c)
                writer.write_string_value("initiatedByUserPrincipalName", @initiated_by_user_principal_name)
                writer.write_guid_value("managedDeviceId", @managed_device_id)
                writer.write_date_time_value("receivedDateTimeUTC", @received_date_time_u_t_c)
                writer.write_date_time_value("requestedDateTimeUTC", @requested_date_time_u_t_c)
                writer.write_object_value("sizeInKB", @size_in_k_b)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sizeInKB property value. The size of the logs in KB. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a device_log_collection_response_size_in_k_b
            ## 
            def size_in_k_b
                return @size_in_k_b
            end
            ## 
            ## Sets the sizeInKB property value. The size of the logs in KB. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the sizeInKB property.
            ## @return a void
            ## 
            def size_in_k_b=(value)
                @size_in_k_b = value
            end
            ## 
            ## Gets the status property value. AppLogUploadStatus
            ## @return a app_log_upload_state
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. AppLogUploadStatus
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end

            ## 
            # Composed type wrapper for classes Double, ReferenceNumeric, string
            class DeviceLogCollectionResponseSizeInKB
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Composed type representation for type Double
                @double
                ## 
                # Composed type representation for type ReferenceNumeric
                @reference_numeric
                ## 
                # Composed type representation for type string
                @string
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_log_collection_response_size_in_k_b
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "ReferenceNumeric"
                                return ReferenceNumeric.new
                        end
                    end
                    return DeviceLogCollectionResponseSizeInKB.new
                end
                ## 
                ## Gets the double property value. Composed type representation for type Double
                ## @return a double
                ## 
                def double
                    return @double
                end
                ## 
                ## Sets the double property value. Composed type representation for type Double
                ## @param value Value to set for the double property.
                ## @return a void
                ## 
                def double=(value)
                    @double = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "ReferenceNumeric" => lambda {|n| @reference_numeric = n.get_enum_value(MicrosoftGraph::Models::ReferenceNumeric) },
                        "string" => lambda {|n| @string = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @return a reference_numeric
                ## 
                def reference_numeric
                    return @reference_numeric
                end
                ## 
                ## Sets the ReferenceNumeric property value. Composed type representation for type ReferenceNumeric
                ## @param value Value to set for the ReferenceNumeric property.
                ## @return a void
                ## 
                def reference_numeric=(value)
                    @reference_numeric = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("double", @double)
                    writer.write_enum_value("ReferenceNumeric", @reference_numeric)
                    writer.write_string_value("string", @string)
                end
                ## 
                ## Gets the string property value. Composed type representation for type string
                ## @return a string
                ## 
                def string
                    return @string
                end
                ## 
                ## Sets the string property value. Composed type representation for type string
                ## @param value Value to set for the string property.
                ## @return a void
                ## 
                def string=(value)
                    @string = value
                end
            end
        end
    end
end
