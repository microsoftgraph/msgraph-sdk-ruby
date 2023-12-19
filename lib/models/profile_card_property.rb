require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ProfileCardProperty < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.
            @annotations
            ## 
            # Identifies a profileCardProperty resource in Get, Update, or Delete operations. Allows an administrator to surface hidden Microsoft Entra ID properties on the Microsoft 365 profile card within their tenant. When present, the Microsoft Entra ID field referenced in this property is visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: UserPrincipalName, Fax, StreetAddress, PostalCode, StateOrProvince, Alias, CustomAttribute1,  CustomAttribute2, CustomAttribute3, CustomAttribute4, CustomAttribute5, CustomAttribute6, CustomAttribute7, CustomAttribute8, CustomAttribute9, CustomAttribute10, CustomAttribute11, CustomAttribute12, CustomAttribute13, CustomAttribute14, CustomAttribute15.
            @directory_property_name
            ## 
            ## Gets the annotations property value. Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.
            ## @return a profile_card_annotation
            ## 
            def annotations
                return @annotations
            end
            ## 
            ## Sets the annotations property value. Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.
            ## @param value Value to set for the annotations property.
            ## @return a void
            ## 
            def annotations=(value)
                @annotations = value
            end
            ## 
            ## Instantiates a new profileCardProperty and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a profile_card_property
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProfileCardProperty.new
            end
            ## 
            ## Gets the directoryPropertyName property value. Identifies a profileCardProperty resource in Get, Update, or Delete operations. Allows an administrator to surface hidden Microsoft Entra ID properties on the Microsoft 365 profile card within their tenant. When present, the Microsoft Entra ID field referenced in this property is visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: UserPrincipalName, Fax, StreetAddress, PostalCode, StateOrProvince, Alias, CustomAttribute1,  CustomAttribute2, CustomAttribute3, CustomAttribute4, CustomAttribute5, CustomAttribute6, CustomAttribute7, CustomAttribute8, CustomAttribute9, CustomAttribute10, CustomAttribute11, CustomAttribute12, CustomAttribute13, CustomAttribute14, CustomAttribute15.
            ## @return a string
            ## 
            def directory_property_name
                return @directory_property_name
            end
            ## 
            ## Sets the directoryPropertyName property value. Identifies a profileCardProperty resource in Get, Update, or Delete operations. Allows an administrator to surface hidden Microsoft Entra ID properties on the Microsoft 365 profile card within their tenant. When present, the Microsoft Entra ID field referenced in this property is visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: UserPrincipalName, Fax, StreetAddress, PostalCode, StateOrProvince, Alias, CustomAttribute1,  CustomAttribute2, CustomAttribute3, CustomAttribute4, CustomAttribute5, CustomAttribute6, CustomAttribute7, CustomAttribute8, CustomAttribute9, CustomAttribute10, CustomAttribute11, CustomAttribute12, CustomAttribute13, CustomAttribute14, CustomAttribute15.
            ## @param value Value to set for the directoryPropertyName property.
            ## @return a void
            ## 
            def directory_property_name=(value)
                @directory_property_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "annotations" => lambda {|n| @annotations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProfileCardAnnotation.create_from_discriminator_value(pn) }) },
                    "directoryPropertyName" => lambda {|n| @directory_property_name = n.get_string_value() },
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
                writer.write_collection_of_object_values("annotations", @annotations)
                writer.write_string_value("directoryPropertyName", @directory_property_name)
            end
        end
    end
end
