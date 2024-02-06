require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class MembershipOutlierInsight < MicrosoftGraph::Models::GovernanceInsight
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Navigation link to the container directory object. For example, to a group.
            @container
            ## 
            # Indicates the identifier of the container, for example, a group ID.
            @container_id
            ## 
            # Navigation link to a member object who modified the record. For example, to a user.
            @last_modified_by
            ## 
            # Navigation link to a member object. For example, to a user.
            @member
            ## 
            # Indicates the identifier of the user.
            @member_id
            ## 
            # The outlierContainerType property
            @outlier_container_type
            ## 
            # The outlierMemberType property
            @outlier_member_type
            ## 
            ## Instantiates a new membershipOutlierInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.membershipOutlierInsight"
            end
            ## 
            ## Gets the container property value. Navigation link to the container directory object. For example, to a group.
            ## @return a directory_object
            ## 
            def container
                return @container
            end
            ## 
            ## Sets the container property value. Navigation link to the container directory object. For example, to a group.
            ## @param value Value to set for the container property.
            ## @return a void
            ## 
            def container=(value)
                @container = value
            end
            ## 
            ## Gets the containerId property value. Indicates the identifier of the container, for example, a group ID.
            ## @return a string
            ## 
            def container_id
                return @container_id
            end
            ## 
            ## Sets the containerId property value. Indicates the identifier of the container, for example, a group ID.
            ## @param value Value to set for the containerId property.
            ## @return a void
            ## 
            def container_id=(value)
                @container_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a membership_outlier_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MembershipOutlierInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "container" => lambda {|n| @container = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "containerId" => lambda {|n| @container_id = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "member" => lambda {|n| @member = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "memberId" => lambda {|n| @member_id = n.get_string_value() },
                    "outlierContainerType" => lambda {|n| @outlier_container_type = n.get_enum_value(MicrosoftGraph::Models::OutlierContainerType) },
                    "outlierMemberType" => lambda {|n| @outlier_member_type = n.get_enum_value(MicrosoftGraph::Models::OutlierMemberType) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Navigation link to a member object who modified the record. For example, to a user.
            ## @return a user
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Navigation link to a member object who modified the record. For example, to a user.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the member property value. Navigation link to a member object. For example, to a user.
            ## @return a directory_object
            ## 
            def member
                return @member
            end
            ## 
            ## Sets the member property value. Navigation link to a member object. For example, to a user.
            ## @param value Value to set for the member property.
            ## @return a void
            ## 
            def member=(value)
                @member = value
            end
            ## 
            ## Gets the memberId property value. Indicates the identifier of the user.
            ## @return a string
            ## 
            def member_id
                return @member_id
            end
            ## 
            ## Sets the memberId property value. Indicates the identifier of the user.
            ## @param value Value to set for the memberId property.
            ## @return a void
            ## 
            def member_id=(value)
                @member_id = value
            end
            ## 
            ## Gets the outlierContainerType property value. The outlierContainerType property
            ## @return a outlier_container_type
            ## 
            def outlier_container_type
                return @outlier_container_type
            end
            ## 
            ## Sets the outlierContainerType property value. The outlierContainerType property
            ## @param value Value to set for the outlierContainerType property.
            ## @return a void
            ## 
            def outlier_container_type=(value)
                @outlier_container_type = value
            end
            ## 
            ## Gets the outlierMemberType property value. The outlierMemberType property
            ## @return a outlier_member_type
            ## 
            def outlier_member_type
                return @outlier_member_type
            end
            ## 
            ## Sets the outlierMemberType property value. The outlierMemberType property
            ## @param value Value to set for the outlierMemberType property.
            ## @return a void
            ## 
            def outlier_member_type=(value)
                @outlier_member_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("container", @container) unless @container.nil?
                writer.write_string_value("containerId", @container_id) unless @container_id.nil?
                writer.write_object_value("lastModifiedBy", @last_modified_by) unless @last_modified_by.nil?
                writer.write_object_value("member", @member) unless @member.nil?
                writer.write_string_value("memberId", @member_id) unless @member_id.nil?
                writer.write_enum_value("outlierContainerType", @outlier_container_type) unless @outlier_container_type.nil?
                writer.write_enum_value("outlierMemberType", @outlier_member_type) unless @outlier_member_type.nil?
            end
        end
    end
end
