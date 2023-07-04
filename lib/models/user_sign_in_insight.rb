require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class UserSignInInsight < MicrosoftGraph::Models::GovernanceInsight
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates when the user last signed in.
            @last_sign_in_date_time
            ## 
            ## Instantiates a new UserSignInInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userSignInInsight"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_sign_in_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSignInInsight.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastSignInDateTime" => lambda {|n| @last_sign_in_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastSignInDateTime property value. Indicates when the user last signed in.
            ## @return a date_time
            ## 
            def last_sign_in_date_time
                return @last_sign_in_date_time
            end
            ## 
            ## Sets the lastSignInDateTime property value. Indicates when the user last signed in.
            ## @param value Value to set for the last_sign_in_date_time property.
            ## @return a void
            ## 
            def last_sign_in_date_time=(value)
                @last_sign_in_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastSignInDateTime", @last_sign_in_date_time)
            end
        end
    end
end
