require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class AuditLogRoot < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The directoryAudits property
            @directory_audits
            ## 
            # The provisioning property
            @provisioning
            ## 
            # The signIns property
            @sign_ins
            ## 
            ## Instantiates a new AuditLogRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a audit_log_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuditLogRoot.new
            end
            ## 
            ## Gets the directoryAudits property value. The directoryAudits property
            ## @return a directory_audit
            ## 
            def directory_audits
                return @directory_audits
            end
            ## 
            ## Sets the directoryAudits property value. The directoryAudits property
            ## @param value Value to set for the directory_audits property.
            ## @return a void
            ## 
            def directory_audits=(value)
                @directory_audits = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "directoryAudits" => lambda {|n| @directory_audits = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::DirectoryAudit.create_from_discriminator_value(pn) }) },
                    "provisioning" => lambda {|n| @provisioning = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::ProvisioningObjectSummary.create_from_discriminator_value(pn) }) },
                    "signIns" => lambda {|n| @sign_ins = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::SignIn.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the provisioning property value. The provisioning property
            ## @return a provisioning_object_summary
            ## 
            def provisioning
                return @provisioning
            end
            ## 
            ## Sets the provisioning property value. The provisioning property
            ## @param value Value to set for the provisioning property.
            ## @return a void
            ## 
            def provisioning=(value)
                @provisioning = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("directoryAudits", @directory_audits)
                writer.write_collection_of_object_values("provisioning", @provisioning)
                writer.write_collection_of_object_values("signIns", @sign_ins)
            end
            ## 
            ## Gets the signIns property value. The signIns property
            ## @return a sign_in
            ## 
            def sign_ins
                return @sign_ins
            end
            ## 
            ## Sets the signIns property value. The signIns property
            ## @param value Value to set for the sign_ins property.
            ## @return a void
            ## 
            def sign_ins=(value)
                @sign_ins = value
            end
        end
    end
end
