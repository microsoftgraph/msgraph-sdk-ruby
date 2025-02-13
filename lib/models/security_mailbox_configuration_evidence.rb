require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class SecurityMailboxConfigurationEvidence < MicrosoftGraph::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configurationId property
            @configuration_id
            ## 
            # The configurationType property
            @configuration_type
            ## 
            # The displayName property
            @display_name
            ## 
            # The externalDirectoryObjectId property
            @external_directory_object_id
            ## 
            # The mailboxPrimaryAddress property
            @mailbox_primary_address
            ## 
            # The upn property
            @upn
            ## 
            ## Gets the configurationId property value. The configurationId property
            ## @return a string
            ## 
            def configuration_id
                return @configuration_id
            end
            ## 
            ## Sets the configurationId property value. The configurationId property
            ## @param value Value to set for the configurationId property.
            ## @return a void
            ## 
            def configuration_id=(value)
                @configuration_id = value
            end
            ## 
            ## Gets the configurationType property value. The configurationType property
            ## @return a security_mailbox_configuration_type
            ## 
            def configuration_type
                return @configuration_type
            end
            ## 
            ## Sets the configurationType property value. The configurationType property
            ## @param value Value to set for the configurationType property.
            ## @return a void
            ## 
            def configuration_type=(value)
                @configuration_type = value
            end
            ## 
            ## Instantiates a new SecurityMailboxConfigurationEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.mailboxConfigurationEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_mailbox_configuration_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityMailboxConfigurationEvidence.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalDirectoryObjectId property value. The externalDirectoryObjectId property
            ## @return a guid
            ## 
            def external_directory_object_id
                return @external_directory_object_id
            end
            ## 
            ## Sets the externalDirectoryObjectId property value. The externalDirectoryObjectId property
            ## @param value Value to set for the externalDirectoryObjectId property.
            ## @return a void
            ## 
            def external_directory_object_id=(value)
                @external_directory_object_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "configurationId" => lambda {|n| @configuration_id = n.get_string_value() },
                    "configurationType" => lambda {|n| @configuration_type = n.get_enum_value(MicrosoftGraph::Models::SecurityMailboxConfigurationType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalDirectoryObjectId" => lambda {|n| @external_directory_object_id = n.get_guid_value() },
                    "mailboxPrimaryAddress" => lambda {|n| @mailbox_primary_address = n.get_string_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                })
            end
            ## 
            ## Gets the mailboxPrimaryAddress property value. The mailboxPrimaryAddress property
            ## @return a string
            ## 
            def mailbox_primary_address
                return @mailbox_primary_address
            end
            ## 
            ## Sets the mailboxPrimaryAddress property value. The mailboxPrimaryAddress property
            ## @param value Value to set for the mailboxPrimaryAddress property.
            ## @return a void
            ## 
            def mailbox_primary_address=(value)
                @mailbox_primary_address = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("configurationId", @configuration_id)
                writer.write_enum_value("configurationType", @configuration_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_guid_value("externalDirectoryObjectId", @external_directory_object_id)
                writer.write_string_value("mailboxPrimaryAddress", @mailbox_primary_address)
                writer.write_string_value("upn", @upn)
            end
            ## 
            ## Gets the upn property value. The upn property
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. The upn property
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
        end
    end
end
