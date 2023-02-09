require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceManagementReports < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Entity representing a job to export a report
            @export_jobs
            ## 
            ## Instantiates a new deviceManagementReports and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_reports
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementReports.new
            end
            ## 
            ## Gets the exportJobs property value. Entity representing a job to export a report
            ## @return a device_management_export_job
            ## 
            def export_jobs
                return @export_jobs
            end
            ## 
            ## Sets the exportJobs property value. Entity representing a job to export a report
            ## @param value Value to set for the export_jobs property.
            ## @return a void
            ## 
            def export_jobs=(value)
                @export_jobs = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "exportJobs" => lambda {|n| @export_jobs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DeviceManagementExportJob.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("exportJobs", @export_jobs)
            end
        end
    end
end
