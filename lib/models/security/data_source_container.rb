require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class DataSourceContainer < MicrosoftGraph::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Created date and time of the dataSourceContainer entity.
                @created_date_time
                ## 
                # Display name of the dataSourceContainer entity.
                @display_name
                ## 
                # The hold status of the dataSourceContainer. The possible values are: notApplied, applied, applying, removing, partial
                @hold_status
                ## 
                # Last modified date and time of the dataSourceContainer.
                @last_modified_date_time
                ## 
                # Date and time that the dataSourceContainer was released from the case.
                @released_date_time
                ## 
                # Latest status of the dataSourceContainer. Possible values are: Active, Released.
                @status
                ## 
                ## Instantiates a new dataSourceContainer and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. Created date and time of the dataSourceContainer entity.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. Created date and time of the dataSourceContainer entity.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a data_source_container
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.ediscoveryCustodian"
                                return EdiscoveryCustodian.new
                            when "#microsoft.graph.security.ediscoveryNoncustodialDataSource"
                                return EdiscoveryNoncustodialDataSource.new
                        end
                    end
                    return DataSourceContainer.new
                end
                ## 
                ## Gets the displayName property value. Display name of the dataSourceContainer entity.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. Display name of the dataSourceContainer entity.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "holdStatus" => lambda {|n| @hold_status = n.get_enum_value(MicrosoftGraph::Models::Security::DataSourceHoldStatus) },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "releasedDateTime" => lambda {|n| @released_date_time = n.get_date_time_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::Security::DataSourceContainerStatus) },
                    })
                end
                ## 
                ## Gets the holdStatus property value. The hold status of the dataSourceContainer. The possible values are: notApplied, applied, applying, removing, partial
                ## @return a data_source_hold_status
                ## 
                def hold_status
                    return @hold_status
                end
                ## 
                ## Sets the holdStatus property value. The hold status of the dataSourceContainer. The possible values are: notApplied, applied, applying, removing, partial
                ## @param value Value to set for the hold_status property.
                ## @return a void
                ## 
                def hold_status=(value)
                    @hold_status = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. Last modified date and time of the dataSourceContainer.
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. Last modified date and time of the dataSourceContainer.
                ## @param value Value to set for the last_modified_date_time property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the releasedDateTime property value. Date and time that the dataSourceContainer was released from the case.
                ## @return a date_time
                ## 
                def released_date_time
                    return @released_date_time
                end
                ## 
                ## Sets the releasedDateTime property value. Date and time that the dataSourceContainer was released from the case.
                ## @param value Value to set for the released_date_time property.
                ## @return a void
                ## 
                def released_date_time=(value)
                    @released_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_enum_value("holdStatus", @hold_status)
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_date_time_value("releasedDateTime", @released_date_time)
                    writer.write_enum_value("status", @status)
                end
                ## 
                ## Gets the status property value. Latest status of the dataSourceContainer. Possible values are: Active, Released.
                ## @return a data_source_container_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Latest status of the dataSourceContainer. Possible values are: Active, Released.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
            end
        end
    end
end
