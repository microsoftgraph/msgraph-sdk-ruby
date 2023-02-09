require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AccessPackageSubject < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connected organization of the subject. Read-only. Nullable.
            @connected_organization
            ## 
            # The display name of the subject.
            @display_name
            ## 
            # The email address of the subject.
            @email
            ## 
            # The object identifier of the subject. null if the subject is not yet a user in the tenant.
            @object_id
            ## 
            # A string representation of the principal's security identifier, if known, or null if the subject does not have a security identifier.
            @on_premises_security_identifier
            ## 
            # The principal name, if known, of the subject.
            @principal_name
            ## 
            # The resource type of the subject. The possible values are: notSpecified, user, servicePrincipal, unknownFutureValue.
            @subject_type
            ## 
            ## Gets the connectedOrganization property value. The connected organization of the subject. Read-only. Nullable.
            ## @return a connected_organization
            ## 
            def connected_organization
                return @connected_organization
            end
            ## 
            ## Sets the connectedOrganization property value. The connected organization of the subject. Read-only. Nullable.
            ## @param value Value to set for the connected_organization property.
            ## @return a void
            ## 
            def connected_organization=(value)
                @connected_organization = value
            end
            ## 
            ## Instantiates a new accessPackageSubject and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_subject
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageSubject.new
            end
            ## 
            ## Gets the displayName property value. The display name of the subject.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the subject.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. The email address of the subject.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email address of the subject.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectedOrganization" => lambda {|n| @connected_organization = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::ConnectedOrganization.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "objectId" => lambda {|n| @object_id = n.get_string_value() },
                    "onPremisesSecurityIdentifier" => lambda {|n| @on_premises_security_identifier = n.get_string_value() },
                    "principalName" => lambda {|n| @principal_name = n.get_string_value() },
                    "subjectType" => lambda {|n| @subject_type = n.get_enum_value(MicrosoftGraph::Models::AccessPackageSubjectType) },
                })
            end
            ## 
            ## Gets the objectId property value. The object identifier of the subject. null if the subject is not yet a user in the tenant.
            ## @return a string
            ## 
            def object_id
                return @object_id
            end
            ## 
            ## Sets the objectId property value. The object identifier of the subject. null if the subject is not yet a user in the tenant.
            ## @param value Value to set for the object_id property.
            ## @return a void
            ## 
            def object_id=(value)
                @object_id = value
            end
            ## 
            ## Gets the onPremisesSecurityIdentifier property value. A string representation of the principal's security identifier, if known, or null if the subject does not have a security identifier.
            ## @return a string
            ## 
            def on_premises_security_identifier
                return @on_premises_security_identifier
            end
            ## 
            ## Sets the onPremisesSecurityIdentifier property value. A string representation of the principal's security identifier, if known, or null if the subject does not have a security identifier.
            ## @param value Value to set for the on_premises_security_identifier property.
            ## @return a void
            ## 
            def on_premises_security_identifier=(value)
                @on_premises_security_identifier = value
            end
            ## 
            ## Gets the principalName property value. The principal name, if known, of the subject.
            ## @return a string
            ## 
            def principal_name
                return @principal_name
            end
            ## 
            ## Sets the principalName property value. The principal name, if known, of the subject.
            ## @param value Value to set for the principal_name property.
            ## @return a void
            ## 
            def principal_name=(value)
                @principal_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("connectedOrganization", @connected_organization)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("objectId", @object_id)
                writer.write_string_value("onPremisesSecurityIdentifier", @on_premises_security_identifier)
                writer.write_string_value("principalName", @principal_name)
                writer.write_enum_value("subjectType", @subject_type)
            end
            ## 
            ## Gets the subjectType property value. The resource type of the subject. The possible values are: notSpecified, user, servicePrincipal, unknownFutureValue.
            ## @return a access_package_subject_type
            ## 
            def subject_type
                return @subject_type
            end
            ## 
            ## Sets the subjectType property value. The resource type of the subject. The possible values are: notSpecified, user, servicePrincipal, unknownFutureValue.
            ## @param value Value to set for the subject_type property.
            ## @return a void
            ## 
            def subject_type=(value)
                @subject_type = value
            end
        end
    end
end
