require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Admin
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A container for Microsoft Edge resources. Read-only.
            @edge
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents a setting to control people-related admin settings in the tenant.
            @people
            ## 
            # A container for service communications resources. Read-only.
            @service_announcement
            ## 
            # The sharepoint property
            @sharepoint
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
            ## Instantiates a new Admin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a admin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Admin.new
            end
            ## 
            ## Gets the edge property value. A container for Microsoft Edge resources. Read-only.
            ## @return a edge
            ## 
            def edge
                return @edge
            end
            ## 
            ## Sets the edge property value. A container for Microsoft Edge resources. Read-only.
            ## @param value Value to set for the edge property.
            ## @return a void
            ## 
            def edge=(value)
                @edge = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "edge" => lambda {|n| @edge = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Edge.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "people" => lambda {|n| @people = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PeopleAdminSettings.create_from_discriminator_value(pn) }) },
                    "serviceAnnouncement" => lambda {|n| @service_announcement = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ServiceAnnouncement.create_from_discriminator_value(pn) }) },
                    "sharepoint" => lambda {|n| @sharepoint = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Sharepoint.create_from_discriminator_value(pn) }) },
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
            ## Gets the people property value. Represents a setting to control people-related admin settings in the tenant.
            ## @return a people_admin_settings
            ## 
            def people
                return @people
            end
            ## 
            ## Sets the people property value. Represents a setting to control people-related admin settings in the tenant.
            ## @param value Value to set for the people property.
            ## @return a void
            ## 
            def people=(value)
                @people = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("edge", @edge)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("people", @people)
                writer.write_object_value("serviceAnnouncement", @service_announcement)
                writer.write_object_value("sharepoint", @sharepoint)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the serviceAnnouncement property value. A container for service communications resources. Read-only.
            ## @return a service_announcement
            ## 
            def service_announcement
                return @service_announcement
            end
            ## 
            ## Sets the serviceAnnouncement property value. A container for service communications resources. Read-only.
            ## @param value Value to set for the serviceAnnouncement property.
            ## @return a void
            ## 
            def service_announcement=(value)
                @service_announcement = value
            end
            ## 
            ## Gets the sharepoint property value. The sharepoint property
            ## @return a sharepoint
            ## 
            def sharepoint
                return @sharepoint
            end
            ## 
            ## Sets the sharepoint property value. The sharepoint property
            ## @param value Value to set for the sharepoint property.
            ## @return a void
            ## 
            def sharepoint=(value)
                @sharepoint = value
            end
        end
    end
end
