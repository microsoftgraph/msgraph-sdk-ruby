require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Training < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Training availability status. Possible values are: unknown, notAvailable, available, archive, delete, unknownFutureValue.
            @availability_status
            ## 
            # Identity of the user who created the training.
            @created_by
            ## 
            # Date and time when the training was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The description for the training.
            @description
            ## 
            # The display name for the training.
            @display_name
            ## 
            # Training duration.
            @duration_in_minutes
            ## 
            # Indicates whether the training has any evaluation.
            @has_evaluation
            ## 
            # Language specific details on a training.
            @language_details
            ## 
            # Identity of the user who last modified the training.
            @last_modified_by
            ## 
            # Date and time when the training was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # Training content source. Possible values are: unknown, global, tenant, unknownFutureValue.
            @source
            ## 
            # Supported locales for content for the associated training.
            @supported_locales
            ## 
            # Training tags.
            @tags
            ## 
            # The type of training. Possible values are: unknown, phishing, unknownFutureValue.
            @type
            ## 
            ## Gets the availabilityStatus property value. Training availability status. Possible values are: unknown, notAvailable, available, archive, delete, unknownFutureValue.
            ## @return a training_availability_status
            ## 
            def availability_status
                return @availability_status
            end
            ## 
            ## Sets the availabilityStatus property value. Training availability status. Possible values are: unknown, notAvailable, available, archive, delete, unknownFutureValue.
            ## @param value Value to set for the availabilityStatus property.
            ## @return a void
            ## 
            def availability_status=(value)
                @availability_status = value
            end
            ## 
            ## Instantiates a new Training and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the training.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the training.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the training was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the training was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Training.new
            end
            ## 
            ## Gets the description property value. The description for the training.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the training.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the training.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the training.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the durationInMinutes property value. Training duration.
            ## @return a integer
            ## 
            def duration_in_minutes
                return @duration_in_minutes
            end
            ## 
            ## Sets the durationInMinutes property value. Training duration.
            ## @param value Value to set for the durationInMinutes property.
            ## @return a void
            ## 
            def duration_in_minutes=(value)
                @duration_in_minutes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availabilityStatus" => lambda {|n| @availability_status = n.get_enum_value(MicrosoftGraph::Models::TrainingAvailabilityStatus) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "durationInMinutes" => lambda {|n| @duration_in_minutes = n.get_number_value() },
                    "hasEvaluation" => lambda {|n| @has_evaluation = n.get_boolean_value() },
                    "languageDetails" => lambda {|n| @language_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::TrainingLanguageDetail.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::SimulationContentSource) },
                    "supportedLocales" => lambda {|n| @supported_locales = n.get_collection_of_primitive_values(String) },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraph::Models::TrainingType) },
                })
            end
            ## 
            ## Gets the hasEvaluation property value. Indicates whether the training has any evaluation.
            ## @return a boolean
            ## 
            def has_evaluation
                return @has_evaluation
            end
            ## 
            ## Sets the hasEvaluation property value. Indicates whether the training has any evaluation.
            ## @param value Value to set for the hasEvaluation property.
            ## @return a void
            ## 
            def has_evaluation=(value)
                @has_evaluation = value
            end
            ## 
            ## Gets the languageDetails property value. Language specific details on a training.
            ## @return a training_language_detail
            ## 
            def language_details
                return @language_details
            end
            ## 
            ## Sets the languageDetails property value. Language specific details on a training.
            ## @param value Value to set for the languageDetails property.
            ## @return a void
            ## 
            def language_details=(value)
                @language_details = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who last modified the training.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who last modified the training.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the training was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the training was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("availabilityStatus", @availability_status)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("durationInMinutes", @duration_in_minutes)
                writer.write_boolean_value("hasEvaluation", @has_evaluation)
                writer.write_collection_of_object_values("languageDetails", @language_details)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("source", @source)
                writer.write_collection_of_primitive_values("supportedLocales", @supported_locales)
                writer.write_collection_of_primitive_values("tags", @tags)
                writer.write_enum_value("type", @type)
            end
            ## 
            ## Gets the source property value. Training content source. Possible values are: unknown, global, tenant, unknownFutureValue.
            ## @return a simulation_content_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Training content source. Possible values are: unknown, global, tenant, unknownFutureValue.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the supportedLocales property value. Supported locales for content for the associated training.
            ## @return a string
            ## 
            def supported_locales
                return @supported_locales
            end
            ## 
            ## Sets the supportedLocales property value. Supported locales for content for the associated training.
            ## @param value Value to set for the supportedLocales property.
            ## @return a void
            ## 
            def supported_locales=(value)
                @supported_locales = value
            end
            ## 
            ## Gets the tags property value. Training tags.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Training tags.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the type property value. The type of training. Possible values are: unknown, phishing, unknownFutureValue.
            ## @return a training_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of training. Possible values are: unknown, phishing, unknownFutureValue.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
