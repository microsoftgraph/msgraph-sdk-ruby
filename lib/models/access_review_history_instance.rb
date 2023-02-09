require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessReviewHistoryInstance < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Uri which can be used to retrieve review history data. This URI will be active for 24 hours after being generated. Required.
            @download_uri
            ## 
            # Timestamp when this instance and associated data expires and the history is deleted. Required.
            @expiration_date_time
            ## 
            # Timestamp when all of the available data for this instance was collected. This will be set after this instance's status is set to done. Required.
            @fulfilled_date_time
            ## 
            # Timestamp, reviews ending on or before this date will be included in the fetched history data.
            @review_history_period_end_date_time
            ## 
            # Timestamp, reviews starting on or after this date will be included in the fetched history data.
            @review_history_period_start_date_time
            ## 
            # Timestamp when the instance's history data is scheduled to be generated.
            @run_date_time
            ## 
            # Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue. Once the status has been marked as done, a link can be generated to retrieve the instance's data by calling generateDownloadUri method.
            @status
            ## 
            ## Instantiates a new accessReviewHistoryInstance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_history_instance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewHistoryInstance.new
            end
            ## 
            ## Gets the downloadUri property value. Uri which can be used to retrieve review history data. This URI will be active for 24 hours after being generated. Required.
            ## @return a string
            ## 
            def download_uri
                return @download_uri
            end
            ## 
            ## Sets the downloadUri property value. Uri which can be used to retrieve review history data. This URI will be active for 24 hours after being generated. Required.
            ## @param value Value to set for the download_uri property.
            ## @return a void
            ## 
            def download_uri=(value)
                @download_uri = value
            end
            ## 
            ## Gets the expirationDateTime property value. Timestamp when this instance and associated data expires and the history is deleted. Required.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Timestamp when this instance and associated data expires and the history is deleted. Required.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## Gets the fulfilledDateTime property value. Timestamp when all of the available data for this instance was collected. This will be set after this instance's status is set to done. Required.
            ## @return a date_time
            ## 
            def fulfilled_date_time
                return @fulfilled_date_time
            end
            ## 
            ## Sets the fulfilledDateTime property value. Timestamp when all of the available data for this instance was collected. This will be set after this instance's status is set to done. Required.
            ## @param value Value to set for the fulfilled_date_time property.
            ## @return a void
            ## 
            def fulfilled_date_time=(value)
                @fulfilled_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "downloadUri" => lambda {|n| @download_uri = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "fulfilledDateTime" => lambda {|n| @fulfilled_date_time = n.get_date_time_value() },
                    "reviewHistoryPeriodEndDateTime" => lambda {|n| @review_history_period_end_date_time = n.get_date_time_value() },
                    "reviewHistoryPeriodStartDateTime" => lambda {|n| @review_history_period_start_date_time = n.get_date_time_value() },
                    "runDateTime" => lambda {|n| @run_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::AccessReviewHistoryStatus) },
                })
            end
            ## 
            ## Gets the reviewHistoryPeriodEndDateTime property value. Timestamp, reviews ending on or before this date will be included in the fetched history data.
            ## @return a date_time
            ## 
            def review_history_period_end_date_time
                return @review_history_period_end_date_time
            end
            ## 
            ## Sets the reviewHistoryPeriodEndDateTime property value. Timestamp, reviews ending on or before this date will be included in the fetched history data.
            ## @param value Value to set for the review_history_period_end_date_time property.
            ## @return a void
            ## 
            def review_history_period_end_date_time=(value)
                @review_history_period_end_date_time = value
            end
            ## 
            ## Gets the reviewHistoryPeriodStartDateTime property value. Timestamp, reviews starting on or after this date will be included in the fetched history data.
            ## @return a date_time
            ## 
            def review_history_period_start_date_time
                return @review_history_period_start_date_time
            end
            ## 
            ## Sets the reviewHistoryPeriodStartDateTime property value. Timestamp, reviews starting on or after this date will be included in the fetched history data.
            ## @param value Value to set for the review_history_period_start_date_time property.
            ## @return a void
            ## 
            def review_history_period_start_date_time=(value)
                @review_history_period_start_date_time = value
            end
            ## 
            ## Gets the runDateTime property value. Timestamp when the instance's history data is scheduled to be generated.
            ## @return a date_time
            ## 
            def run_date_time
                return @run_date_time
            end
            ## 
            ## Sets the runDateTime property value. Timestamp when the instance's history data is scheduled to be generated.
            ## @param value Value to set for the run_date_time property.
            ## @return a void
            ## 
            def run_date_time=(value)
                @run_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("downloadUri", @download_uri)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("fulfilledDateTime", @fulfilled_date_time)
                writer.write_date_time_value("reviewHistoryPeriodEndDateTime", @review_history_period_end_date_time)
                writer.write_date_time_value("reviewHistoryPeriodStartDateTime", @review_history_period_start_date_time)
                writer.write_date_time_value("runDateTime", @run_date_time)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue. Once the status has been marked as done, a link can be generated to retrieve the instance's data by calling generateDownloadUri method.
            ## @return a access_review_history_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Represents the status of the review history data collection. The possible values are: done, inProgress, error, requested, unknownFutureValue. Once the status has been marked as done, a link can be generated to retrieve the instance's data by calling generateDownloadUri method.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
