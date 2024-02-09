require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SynchronizationJob < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The bulkUpload property
            @bulk_upload
            ## 
            # Schedule used to run the job. Read-only.
            @schedule
            ## 
            # The synchronization schema configured for the job.
            @schema
            ## 
            # Status of the job, which includes when the job was last run, current job state, and errors.
            @status
            ## 
            # Settings associated with the job. Some settings are inherited from the template.
            @synchronization_job_settings
            ## 
            # Identifier of the synchronization template this job is based on.
            @template_id
            ## 
            ## Gets the bulkUpload property value. The bulkUpload property
            ## @return a bulk_upload
            ## 
            def bulk_upload
                return @bulk_upload
            end
            ## 
            ## Sets the bulkUpload property value. The bulkUpload property
            ## @param value Value to set for the bulkUpload property.
            ## @return a void
            ## 
            def bulk_upload=(value)
                @bulk_upload = value
            end
            ## 
            ## Instantiates a new SynchronizationJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a synchronization_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SynchronizationJob.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bulkUpload" => lambda {|n| @bulk_upload = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::BulkUpload.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationSchedule.create_from_discriminator_value(pn) }) },
                    "schema" => lambda {|n| @schema = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationSchema.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::SynchronizationStatus.create_from_discriminator_value(pn) }) },
                    "synchronizationJobSettings" => lambda {|n| @synchronization_job_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "templateId" => lambda {|n| @template_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the schedule property value. Schedule used to run the job. Read-only.
            ## @return a synchronization_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. Schedule used to run the job. Read-only.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Gets the schema property value. The synchronization schema configured for the job.
            ## @return a synchronization_schema
            ## 
            def schema
                return @schema
            end
            ## 
            ## Sets the schema property value. The synchronization schema configured for the job.
            ## @param value Value to set for the schema property.
            ## @return a void
            ## 
            def schema=(value)
                @schema = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("bulkUpload", @bulk_upload)
                writer.write_object_value("schedule", @schedule)
                writer.write_object_value("schema", @schema)
                writer.write_object_value("status", @status)
                writer.write_collection_of_object_values("synchronizationJobSettings", @synchronization_job_settings)
                writer.write_string_value("templateId", @template_id)
            end
            ## 
            ## Gets the status property value. Status of the job, which includes when the job was last run, current job state, and errors.
            ## @return a synchronization_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the job, which includes when the job was last run, current job state, and errors.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the synchronizationJobSettings property value. Settings associated with the job. Some settings are inherited from the template.
            ## @return a key_value_pair
            ## 
            def synchronization_job_settings
                return @synchronization_job_settings
            end
            ## 
            ## Sets the synchronizationJobSettings property value. Settings associated with the job. Some settings are inherited from the template.
            ## @param value Value to set for the synchronizationJobSettings property.
            ## @return a void
            ## 
            def synchronization_job_settings=(value)
                @synchronization_job_settings = value
            end
            ## 
            ## Gets the templateId property value. Identifier of the synchronization template this job is based on.
            ## @return a string
            ## 
            def template_id
                return @template_id
            end
            ## 
            ## Sets the templateId property value. Identifier of the synchronization template this job is based on.
            ## @param value Value to set for the templateId property.
            ## @return a void
            ## 
            def template_id=(value)
                @template_id = value
            end
        end
    end
end
