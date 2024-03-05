require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class CloudPcDomainJoinConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The domainJoinType property
            @domain_join_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The onPremisesConnectionId property
            @on_premises_connection_id
            ## 
            # The regionGroup property
            @region_group
            ## 
            # The regionName property
            @region_name
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new CloudPcDomainJoinConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_domain_join_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDomainJoinConfiguration.new
            end
            ## 
            ## Gets the domainJoinType property value. The domainJoinType property
            ## @return a cloud_pc_domain_join_type
            ## 
            def domain_join_type
                return @domain_join_type
            end
            ## 
            ## Sets the domainJoinType property value. The domainJoinType property
            ## @param value Value to set for the domainJoinType property.
            ## @return a void
            ## 
            def domain_join_type=(value)
                @domain_join_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "domainJoinType" => lambda {|n| @domain_join_type = n.get_enum_value(MicrosoftGraph::Models::CloudPcDomainJoinType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onPremisesConnectionId" => lambda {|n| @on_premises_connection_id = n.get_string_value() },
                    "regionGroup" => lambda {|n| @region_group = n.get_enum_value(MicrosoftGraph::Models::CloudPcRegionGroup) },
                    "regionName" => lambda {|n| @region_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the onPremisesConnectionId property value. The onPremisesConnectionId property
            ## @return a string
            ## 
            def on_premises_connection_id
                return @on_premises_connection_id
            end
            ## 
            ## Sets the onPremisesConnectionId property value. The onPremisesConnectionId property
            ## @param value Value to set for the onPremisesConnectionId property.
            ## @return a void
            ## 
            def on_premises_connection_id=(value)
                @on_premises_connection_id = value
            end
            ## 
            ## Gets the regionGroup property value. The regionGroup property
            ## @return a cloud_pc_region_group
            ## 
            def region_group
                return @region_group
            end
            ## 
            ## Sets the regionGroup property value. The regionGroup property
            ## @param value Value to set for the regionGroup property.
            ## @return a void
            ## 
            def region_group=(value)
                @region_group = value
            end
            ## 
            ## Gets the regionName property value. The regionName property
            ## @return a string
            ## 
            def region_name
                return @region_name
            end
            ## 
            ## Sets the regionName property value. The regionName property
            ## @param value Value to set for the regionName property.
            ## @return a void
            ## 
            def region_name=(value)
                @region_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("domainJoinType", @domain_join_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("onPremisesConnectionId", @on_premises_connection_id)
                writer.write_enum_value("regionGroup", @region_group)
                writer.write_string_value("regionName", @region_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
