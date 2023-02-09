require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Entity representing a job to export a report
        class DeviceManagementExportJob < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Time that the exported report expires
            @expiration_date_time
            ## 
            # Filters applied on the report
            @filter
            ## 
            # Possible values for the file format of a report
            @format
            ## 
            # Configures how the requested export job is localized
            @localization_type
            ## 
            # Name of the report
            @report_name
            ## 
            # Time that the exported report was requested
            @request_date_time
            ## 
            # Columns selected from the report
            @select
            ## 
            # A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id.
            @snapshot_id
            ## 
            # Possible statuses associated with a generated report
            @status
            ## 
            # Temporary location of the exported report
            @url
            ## 
            ## Instantiates a new deviceManagementExportJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_export_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementExportJob.new
            end
            ## 
            ## Gets the expirationDateTime property value. Time that the exported report expires
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Time that the exported report expires
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the filter property value. Filters applied on the report
            ## @return a string
            ## 
            def filter
                return @filter
            end
            ## 
            ## Sets the filter property value. Filters applied on the report
            ## @param value Value to set for the filter property.
            ## @return a void
            ## 
            def filter=(value)
                @filter = value
            end
            ## 
            ## Gets the format property value. Possible values for the file format of a report
            ## @return a device_management_report_file_format
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. Possible values for the file format of a report
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "filter" => lambda {|n| @filter = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementReportFileFormat) },
                    "localizationType" => lambda {|n| @localization_type = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementExportJobLocalizationType) },
                    "reportName" => lambda {|n| @report_name = n.get_string_value() },
                    "requestDateTime" => lambda {|n| @request_date_time = n.get_date_time_value() },
                    "select" => lambda {|n| @select = n.get_collection_of_primitive_values(String) },
                    "snapshotId" => lambda {|n| @snapshot_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::DeviceManagementReportStatus) },
                    "url" => lambda {|n| @url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the localizationType property value. Configures how the requested export job is localized
            ## @return a device_management_export_job_localization_type
            ## 
            def localization_type
                return @localization_type
            end
            ## 
            ## Sets the localizationType property value. Configures how the requested export job is localized
            ## @param value Value to set for the localization_type property.
            ## @return a void
            ## 
            def localization_type=(value)
                @localization_type = value
            end
            ## 
            ## Gets the reportName property value. Name of the report
            ## @return a string
            ## 
            def report_name
                return @report_name
            end
            ## 
            ## Sets the reportName property value. Name of the report
            ## @param value Value to set for the report_name property.
            ## @return a void
            ## 
            def report_name=(value)
                @report_name = value
            end
            ## 
            ## Gets the requestDateTime property value. Time that the exported report was requested
            ## @return a date_time
            ## 
            def request_date_time
                return @request_date_time
            end
            ## 
            ## Sets the requestDateTime property value. Time that the exported report was requested
            ## @param value Value to set for the request_date_time property.
            ## @return a void
            ## 
            def request_date_time=(value)
                @request_date_time = value
            end
            ## 
            ## Gets the select property value. Columns selected from the report
            ## @return a string
            ## 
            def select
                return @select
            end
            ## 
            ## Sets the select property value. Columns selected from the report
            ## @param value Value to set for the select property.
            ## @return a void
            ## 
            def select=(value)
                @select = value
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
                writer.write_string_value("filter", @filter)
                writer.write_enum_value("format", @format)
                writer.write_enum_value("localizationType", @localization_type)
                writer.write_string_value("reportName", @report_name)
                writer.write_date_time_value("requestDateTime", @request_date_time)
                writer.write_collection_of_primitive_values("select", @select)
                writer.write_string_value("snapshotId", @snapshot_id)
                writer.write_enum_value("status", @status)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the snapshotId property value. A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id.
            ## @return a string
            ## 
            def snapshot_id
                return @snapshot_id
            end
            ## 
            ## Sets the snapshotId property value. A snapshot is an identifiable subset of the dataset represented by the ReportName. A sessionId or CachedReportConfiguration id can be used here. If a sessionId is specified, Filter, Select, and OrderBy are applied to the data represented by the sessionId. Filter, Select, and OrderBy cannot be specified together with a CachedReportConfiguration id.
            ## @param value Value to set for the snapshot_id property.
            ## @return a void
            ## 
            def snapshot_id=(value)
                @snapshot_id = value
            end
            ## 
            ## Gets the status property value. Possible statuses associated with a generated report
            ## @return a device_management_report_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Possible statuses associated with a generated report
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the url property value. Temporary location of the exported report
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. Temporary location of the exported report
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
