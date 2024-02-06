require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Entity for AppLogCollectionRequest contains all logs values.
        class AppLogCollectionRequest < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Time at which the upload log request reached a completed state if not completed yet NULL will be returned.
            @completed_date_time
            ## 
            # List of log folders.
            @custom_log_folders
            ## 
            # Indicates error message if any during the upload process.
            @error_message
            ## 
            # AppLogUploadStatus
            @status
            ## 
            ## Gets the completedDateTime property value. Time at which the upload log request reached a completed state if not completed yet NULL will be returned.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Time at which the upload log request reached a completed state if not completed yet NULL will be returned.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new appLogCollectionRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_log_collection_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppLogCollectionRequest.new
            end
            ## 
            ## Gets the customLogFolders property value. List of log folders.
            ## @return a string
            ## 
            def custom_log_folders
                return @custom_log_folders
            end
            ## 
            ## Sets the customLogFolders property value. List of log folders.
            ## @param value Value to set for the customLogFolders property.
            ## @return a void
            ## 
            def custom_log_folders=(value)
                @custom_log_folders = value
            end
            ## 
            ## Gets the errorMessage property value. Indicates error message if any during the upload process.
            ## @return a string
            ## 
            def error_message
                return @error_message
            end
            ## 
            ## Sets the errorMessage property value. Indicates error message if any during the upload process.
            ## @param value Value to set for the errorMessage property.
            ## @return a void
            ## 
            def error_message=(value)
                @error_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "customLogFolders" => lambda {|n| @custom_log_folders = n.get_collection_of_primitive_values(String) },
                    "errorMessage" => lambda {|n| @error_message = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AppLogUploadState) },
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
                writer.write_date_time_value("completedDateTime", @completed_date_time) unless @completed_date_time.nil?
                writer.write_collection_of_primitive_values("customLogFolders", @custom_log_folders) unless @custom_log_folders.nil?
                writer.write_string_value("errorMessage", @error_message) unless @error_message.nil?
                writer.write_enum_value("status", @status) unless @status.nil?
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
        end
    end
end
