require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class UnifiedGroupSource < MicrosoftGraph::Models::Security::DataSource
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The group property
                @group
                ## 
                # Specifies which sources are included in this group. Possible values are: mailbox, site.
                @included_sources
                ## 
                ## Instantiates a new UnifiedGroupSource and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.unifiedGroupSource"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a unified_group_source
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UnifiedGroupSource.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "group" => lambda {|n| @group = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                        "includedSources" => lambda {|n| @included_sources = n.get_enum_value(MicrosoftGraph::Models::Security::SourceType) },
                    })
                end
                ## 
                ## Gets the group property value. The group property
                ## @return a group
                ## 
                def group
                    return @group
                end
                ## 
                ## Sets the group property value. The group property
                ## @param value Value to set for the group property.
                ## @return a void
                ## 
                def group=(value)
                    @group = value
                end
                ## 
                ## Gets the includedSources property value. Specifies which sources are included in this group. Possible values are: mailbox, site.
                ## @return a source_type
                ## 
                def included_sources
                    return @included_sources
                end
                ## 
                ## Sets the includedSources property value. Specifies which sources are included in this group. Possible values are: mailbox, site.
                ## @param value Value to set for the included_sources property.
                ## @return a void
                ## 
                def included_sources=(value)
                    @included_sources = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("group", @group)
                    writer.write_enum_value("includedSources", @included_sources)
                end
            end
        end
    end
end
