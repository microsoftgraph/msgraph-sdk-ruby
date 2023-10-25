require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Training < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The availabilityStatus property
            @availability_status
            ## 
            # The createdBy property
            @created_by
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The durationInMinutes property
            @duration_in_minutes
            ## 
            # The hasEvaluation property
            @has_evaluation
            ## 
            # The languageDetails property
            @language_details
            ## 
            # The lastModifiedBy property
            @last_modified_by
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The source property
            @source
            ## 
            # The supportedLocales property
            @supported_locales
            ## 
            # The tags property
            @tags
            ## 
            # The type property
            @type
            ## 
            ## Gets the availabilityStatus property value. The availabilityStatus property
            ## @return a training_availability_status
            ## 
            def availability_status
                return @availability_status
            end
            ## 
            ## Sets the availabilityStatus property value. The availabilityStatus property
            ## @param value Value to set for the availabilityStatus property.
            ## @return a void
            ## 
            def availability_status=(value)
                @availability_status = value
            end
            ## 
            ## Instantiates a new training and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
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
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the durationInMinutes property value. The durationInMinutes property
            ## @return a integer
            ## 
            def duration_in_minutes
                return @duration_in_minutes
            end
            ## 
            ## Sets the durationInMinutes property value. The durationInMinutes property
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
            ## Gets the hasEvaluation property value. The hasEvaluation property
            ## @return a boolean
            ## 
            def has_evaluation
                return @has_evaluation
            end
            ## 
            ## Sets the hasEvaluation property value. The hasEvaluation property
            ## @param value Value to set for the hasEvaluation property.
            ## @return a void
            ## 
            def has_evaluation=(value)
                @has_evaluation = value
            end
            ## 
            ## Gets the languageDetails property value. The languageDetails property
            ## @return a training_language_detail
            ## 
            def language_details
                return @language_details
            end
            ## 
            ## Sets the languageDetails property value. The languageDetails property
            ## @param value Value to set for the languageDetails property.
            ## @return a void
            ## 
            def language_details=(value)
                @language_details = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The lastModifiedBy property
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The lastModifiedBy property
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
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
            ## Gets the source property value. The source property
            ## @return a simulation_content_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the supportedLocales property value. The supportedLocales property
            ## @return a string
            ## 
            def supported_locales
                return @supported_locales
            end
            ## 
            ## Sets the supportedLocales property value. The supportedLocales property
            ## @param value Value to set for the supportedLocales property.
            ## @return a void
            ## 
            def supported_locales=(value)
                @supported_locales = value
            end
            ## 
            ## Gets the tags property value. The tags property
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. The tags property
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a training_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
