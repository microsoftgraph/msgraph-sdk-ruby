require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class ConditionalAccessUsers
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Group IDs excluded from scope of policy.
        @exclude_groups
        ## 
        # Role IDs excluded from scope of policy.
        @exclude_roles
        ## 
        # User IDs excluded from scope of policy and/or GuestsOrExternalUsers.
        @exclude_users
        ## 
        # Group IDs in scope of policy unless explicitly excluded, or All.
        @include_groups
        ## 
        # Role IDs in scope of policy unless explicitly excluded, or All.
        @include_roles
        ## 
        # User IDs in scope of policy unless explicitly excluded, or None or All or GuestsOrExternalUsers.
        @include_users
        ## 
        # The OdataType property
        @odata_type
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
        ## Instantiates a new conditionalAccessUsers and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a conditional_access_users
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConditionalAccessUsers.new
        end
        ## 
        ## Gets the excludeGroups property value. Group IDs excluded from scope of policy.
        ## @return a string
        ## 
        def exclude_groups
            return @exclude_groups
        end
        ## 
        ## Sets the excludeGroups property value. Group IDs excluded from scope of policy.
        ## @param value Value to set for the excludeGroups property.
        ## @return a void
        ## 
        def exclude_groups=(value)
            @exclude_groups = value
        end
        ## 
        ## Gets the excludeRoles property value. Role IDs excluded from scope of policy.
        ## @return a string
        ## 
        def exclude_roles
            return @exclude_roles
        end
        ## 
        ## Sets the excludeRoles property value. Role IDs excluded from scope of policy.
        ## @param value Value to set for the excludeRoles property.
        ## @return a void
        ## 
        def exclude_roles=(value)
            @exclude_roles = value
        end
        ## 
        ## Gets the excludeUsers property value. User IDs excluded from scope of policy and/or GuestsOrExternalUsers.
        ## @return a string
        ## 
        def exclude_users
            return @exclude_users
        end
        ## 
        ## Sets the excludeUsers property value. User IDs excluded from scope of policy and/or GuestsOrExternalUsers.
        ## @param value Value to set for the excludeUsers property.
        ## @return a void
        ## 
        def exclude_users=(value)
            @exclude_users = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "excludeGroups" => lambda {|n| @exclude_groups = n.get_collection_of_primitive_values(String) },
                "excludeRoles" => lambda {|n| @exclude_roles = n.get_collection_of_primitive_values(String) },
                "excludeUsers" => lambda {|n| @exclude_users = n.get_collection_of_primitive_values(String) },
                "includeGroups" => lambda {|n| @include_groups = n.get_collection_of_primitive_values(String) },
                "includeRoles" => lambda {|n| @include_roles = n.get_collection_of_primitive_values(String) },
                "includeUsers" => lambda {|n| @include_users = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the includeGroups property value. Group IDs in scope of policy unless explicitly excluded, or All.
        ## @return a string
        ## 
        def include_groups
            return @include_groups
        end
        ## 
        ## Sets the includeGroups property value. Group IDs in scope of policy unless explicitly excluded, or All.
        ## @param value Value to set for the includeGroups property.
        ## @return a void
        ## 
        def include_groups=(value)
            @include_groups = value
        end
        ## 
        ## Gets the includeRoles property value. Role IDs in scope of policy unless explicitly excluded, or All.
        ## @return a string
        ## 
        def include_roles
            return @include_roles
        end
        ## 
        ## Sets the includeRoles property value. Role IDs in scope of policy unless explicitly excluded, or All.
        ## @param value Value to set for the includeRoles property.
        ## @return a void
        ## 
        def include_roles=(value)
            @include_roles = value
        end
        ## 
        ## Gets the includeUsers property value. User IDs in scope of policy unless explicitly excluded, or None or All or GuestsOrExternalUsers.
        ## @return a string
        ## 
        def include_users
            return @include_users
        end
        ## 
        ## Sets the includeUsers property value. User IDs in scope of policy unless explicitly excluded, or None or All or GuestsOrExternalUsers.
        ## @param value Value to set for the includeUsers property.
        ## @return a void
        ## 
        def include_users=(value)
            @include_users = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("excludeGroups", @exclude_groups)
            writer.write_collection_of_primitive_values("excludeRoles", @exclude_roles)
            writer.write_collection_of_primitive_values("excludeUsers", @exclude_users)
            writer.write_collection_of_primitive_values("includeGroups", @include_groups)
            writer.write_collection_of_primitive_values("includeRoles", @include_roles)
            writer.write_collection_of_primitive_values("includeUsers", @include_users)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
