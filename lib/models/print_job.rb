require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrintJob < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration property
            @configuration
            ## 
            # The createdBy property
            @created_by
            ## 
            # The DateTimeOffset when the job was created. Read-only.
            @created_date_time
            ## 
            # The documents property
            @documents
            ## 
            # If true, document can be fetched by printer.
            @is_fetchable
            ## 
            # Contains the source job URL, if the job has been redirected from another printer.
            @redirected_from
            ## 
            # Contains the destination job URL, if the job has been redirected to another printer.
            @redirected_to
            ## 
            # The status property
            @status
            ## 
            # A list of printTasks that were triggered by this print job.
            @tasks
            ## 
            ## Gets the configuration property value. The configuration property
            ## @return a print_job_configuration
            ## 
            def configuration
                return @configuration
            end
            ## 
            ## Sets the configuration property value. The configuration property
            ## @param value Value to set for the configuration property.
            ## @return a void
            ## 
            def configuration=(value)
                @configuration = value
            end
            ## 
            ## Instantiates a new printJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the created_by property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The DateTimeOffset when the job was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The DateTimeOffset when the job was created. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a print_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintJob.new
            end
            ## 
            ## Gets the documents property value. The documents property
            ## @return a print_document
            ## 
            def documents
                return @documents
            end
            ## 
            ## Sets the documents property value. The documents property
            ## @param value Value to set for the documents property.
            ## @return a void
            ## 
            def documents=(value)
                @documents = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintJobConfiguration.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "documents" => lambda {|n| @documents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintDocument.create_from_discriminator_value(pn) }) },
                    "isFetchable" => lambda {|n| @is_fetchable = n.get_boolean_value() },
                    "redirectedFrom" => lambda {|n| @redirected_from = n.get_string_value() },
                    "redirectedTo" => lambda {|n| @redirected_to = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintJobStatus.create_from_discriminator_value(pn) }) },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::PrintTask.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isFetchable property value. If true, document can be fetched by printer.
            ## @return a boolean
            ## 
            def is_fetchable
                return @is_fetchable
            end
            ## 
            ## Sets the isFetchable property value. If true, document can be fetched by printer.
            ## @param value Value to set for the is_fetchable property.
            ## @return a void
            ## 
            def is_fetchable=(value)
                @is_fetchable = value
            end
            ## 
            ## Gets the redirectedFrom property value. Contains the source job URL, if the job has been redirected from another printer.
            ## @return a string
            ## 
            def redirected_from
                return @redirected_from
            end
            ## 
            ## Sets the redirectedFrom property value. Contains the source job URL, if the job has been redirected from another printer.
            ## @param value Value to set for the redirected_from property.
            ## @return a void
            ## 
            def redirected_from=(value)
                @redirected_from = value
            end
            ## 
            ## Gets the redirectedTo property value. Contains the destination job URL, if the job has been redirected to another printer.
            ## @return a string
            ## 
            def redirected_to
                return @redirected_to
            end
            ## 
            ## Sets the redirectedTo property value. Contains the destination job URL, if the job has been redirected to another printer.
            ## @param value Value to set for the redirected_to property.
            ## @return a void
            ## 
            def redirected_to=(value)
                @redirected_to = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("configuration", @configuration)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("documents", @documents)
                writer.write_boolean_value("isFetchable", @is_fetchable)
                writer.write_string_value("redirectedFrom", @redirected_from)
                writer.write_string_value("redirectedTo", @redirected_to)
                writer.write_object_value("status", @status)
                writer.write_collection_of_object_values("tasks", @tasks)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a print_job_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the tasks property value. A list of printTasks that were triggered by this print job.
            ## @return a print_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. A list of printTasks that were triggered by this print job.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
        end
    end
end
