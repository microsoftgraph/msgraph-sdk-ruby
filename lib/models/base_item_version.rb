require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class BaseItemVersion < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Identity of the user which last modified the version. Read-only.
            @last_modified_by
            ## 
            # Date and time the version was last modified. Read-only.
            @last_modified_date_time
            ## 
            # Indicates the publication status of this particular version. Read-only.
            @publication
            ## 
            ## Instantiates a new baseItemVersion and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a base_item_version
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.documentSetVersion"
                            return DocumentSetVersion.new
                        when "#microsoft.graph.driveItemVersion"
                            return DriveItemVersion.new
                        when "#microsoft.graph.listItemVersion"
                            return ListItemVersion.new
                    end
                end
                return BaseItemVersion.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "publication" => lambda {|n| @publication = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PublicationFacet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user which last modified the version. Read-only.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user which last modified the version. Read-only.
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time the version was last modified. Read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time the version was last modified. Read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the publication property value. Indicates the publication status of this particular version. Read-only.
            ## @return a publication_facet
            ## 
            def publication
                return @publication
            end
            ## 
            ## Sets the publication property value. Indicates the publication status of this particular version. Read-only.
            ## @param value Value to set for the publication property.
            ## @return a void
            ## 
            def publication=(value)
                @publication = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("publication", @publication)
            end
        end
    end
end
