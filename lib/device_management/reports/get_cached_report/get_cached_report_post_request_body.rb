require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../device_management'
require_relative '../reports'
require_relative './get_cached_report'

module MicrosoftGraph
    module DeviceManagement
        module Reports
            module GetCachedReport
                class GetCachedReportPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The groupBy property
                    @group_by
                    ## 
                    # The id property
                    @id
                    ## 
                    # The orderBy property
                    @order_by
                    ## 
                    # The search property
                    @search
                    ## 
                    # The select property
                    @select
                    ## 
                    # The skip property
                    @skip
                    ## 
                    # The top property
                    @top
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
                    ## Instantiates a new getCachedReportPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a get_cached_report_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return GetCachedReportPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "groupBy" => lambda {|n| @group_by = n.get_collection_of_primitive_values(String) },
                            "id" => lambda {|n| @id = n.get_string_value() },
                            "orderBy" => lambda {|n| @order_by = n.get_collection_of_primitive_values(String) },
                            "search" => lambda {|n| @search = n.get_string_value() },
                            "select" => lambda {|n| @select = n.get_collection_of_primitive_values(String) },
                            "skip" => lambda {|n| @skip = n.get_number_value() },
                            "top" => lambda {|n| @top = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the groupBy property value. The groupBy property
                    ## @return a string
                    ## 
                    def group_by
                        return @group_by
                    end
                    ## 
                    ## Sets the groupBy property value. The groupBy property
                    ## @param value Value to set for the group_by property.
                    ## @return a void
                    ## 
                    def group_by=(value)
                        @group_by = value
                    end
                    ## 
                    ## Gets the id property value. The id property
                    ## @return a string
                    ## 
                    def id
                        return @id
                    end
                    ## 
                    ## Sets the id property value. The id property
                    ## @param value Value to set for the id property.
                    ## @return a void
                    ## 
                    def id=(value)
                        @id = value
                    end
                    ## 
                    ## Gets the orderBy property value. The orderBy property
                    ## @return a string
                    ## 
                    def order_by
                        return @order_by
                    end
                    ## 
                    ## Sets the orderBy property value. The orderBy property
                    ## @param value Value to set for the order_by property.
                    ## @return a void
                    ## 
                    def order_by=(value)
                        @order_by = value
                    end
                    ## 
                    ## Gets the search property value. The search property
                    ## @return a string
                    ## 
                    def search
                        return @search
                    end
                    ## 
                    ## Sets the search property value. The search property
                    ## @param value Value to set for the search property.
                    ## @return a void
                    ## 
                    def search=(value)
                        @search = value
                    end
                    ## 
                    ## Gets the select property value. The select property
                    ## @return a string
                    ## 
                    def select
                        return @select
                    end
                    ## 
                    ## Sets the select property value. The select property
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
                        writer.write_collection_of_primitive_values("groupBy", @group_by)
                        writer.write_string_value("id", @id)
                        writer.write_collection_of_primitive_values("orderBy", @order_by)
                        writer.write_string_value("search", @search)
                        writer.write_collection_of_primitive_values("select", @select)
                        writer.write_number_value("skip", @skip)
                        writer.write_number_value("top", @top)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the skip property value. The skip property
                    ## @return a integer
                    ## 
                    def skip
                        return @skip
                    end
                    ## 
                    ## Sets the skip property value. The skip property
                    ## @param value Value to set for the skip property.
                    ## @return a void
                    ## 
                    def skip=(value)
                        @skip = value
                    end
                    ## 
                    ## Gets the top property value. The top property
                    ## @return a integer
                    ## 
                    def top
                        return @top
                    end
                    ## 
                    ## Sets the top property value. The top property
                    ## @param value Value to set for the top property.
                    ## @return a void
                    ## 
                    def top=(value)
                        @top = value
                    end
                end
            end
        end
    end
end
