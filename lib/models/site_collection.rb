require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SiteCollection
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The geographic region code for where this site collection resides. Read-only.
            @data_location_code
            ## 
            # The hostname for the site collection. Read-only.
            @hostname
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If present, indicates that this is a root site collection in SharePoint. Read-only.
            @root
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
            ## Instantiates a new siteCollection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a site_collection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SiteCollection.new
            end
            ## 
            ## Gets the dataLocationCode property value. The geographic region code for where this site collection resides. Read-only.
            ## @return a string
            ## 
            def data_location_code
                return @data_location_code
            end
            ## 
            ## Sets the dataLocationCode property value. The geographic region code for where this site collection resides. Read-only.
            ## @param value Value to set for the data_location_code property.
            ## @return a void
            ## 
            def data_location_code=(value)
                @data_location_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dataLocationCode" => lambda {|n| @data_location_code = n.get_string_value() },
                    "hostname" => lambda {|n| @hostname = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "root" => lambda {|n| @root = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Root.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the hostname property value. The hostname for the site collection. Read-only.
            ## @return a string
            ## 
            def hostname
                return @hostname
            end
            ## 
            ## Sets the hostname property value. The hostname for the site collection. Read-only.
            ## @param value Value to set for the hostname property.
            ## @return a void
            ## 
            def hostname=(value)
                @hostname = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the root property value. If present, indicates that this is a root site collection in SharePoint. Read-only.
            ## @return a root
            ## 
            def root
                return @root
            end
            ## 
            ## Sets the root property value. If present, indicates that this is a root site collection in SharePoint. Read-only.
            ## @param value Value to set for the root property.
            ## @return a void
            ## 
            def root=(value)
                @root = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("dataLocationCode", @data_location_code)
                writer.write_string_value("hostname", @hostname)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("root", @root)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
