require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class PrintUsageByUser < MicrosoftGraph::Models::PrintUsage
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The UPN of the user represented by these statistics.
        @user_principal_name
        ## 
        ## Instantiates a new PrintUsageByUser and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.printUsageByUser"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a print_usage_by_user
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrintUsageByUser.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userPrincipalName property value. The UPN of the user represented by these statistics.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The UPN of the user represented by these statistics.
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
