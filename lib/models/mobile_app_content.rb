require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains content properties for a specific app version. Each mobileAppContent can have multiple mobileAppContentFile.
        class MobileAppContent < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of contained apps in a MobileLobApp acting as a package.
            @contained_apps
            ## 
            # The list of files for this app content version.
            @files
            ## 
            ## Instantiates a new mobileAppContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the containedApps property value. The collection of contained apps in a MobileLobApp acting as a package.
            ## @return a mobile_contained_app
            ## 
            def contained_apps
                return @contained_apps
            end
            ## 
            ## Sets the containedApps property value. The collection of contained apps in a MobileLobApp acting as a package.
            ## @param value Value to set for the contained_apps property.
            ## @return a void
            ## 
            def contained_apps=(value)
                @contained_apps = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppContent.new
            end
            ## 
            ## Gets the files property value. The list of files for this app content version.
            ## @return a mobile_app_content_file
            ## 
            def files
                return @files
            end
            ## 
            ## Sets the files property value. The list of files for this app content version.
            ## @param value Value to set for the files property.
            ## @return a void
            ## 
            def files=(value)
                @files = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "containedApps" => lambda {|n| @contained_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MobileContainedApp.create_from_discriminator_value(pn) }) },
                    "files" => lambda {|n| @files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::MobileAppContentFile.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("containedApps", @contained_apps)
                writer.write_collection_of_object_values("files", @files)
            end
        end
    end
end
