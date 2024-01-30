require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/teams_app_permission_set'
require_relative '../../../../../../users'
require_relative '../../../../../item'
require_relative '../../../../joined_teams'
require_relative '../../../item'
require_relative '../../installed_apps'
require_relative '../item'
require_relative './upgrade'

module MicrosoftGraph
    module Users
        module Item
            module JoinedTeams
                module Item
                    module InstalledApps
                        module Item
                            module Upgrade
                                class UpgradePostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The consentedPermissionSet property
                                    @consented_permission_set
                                    ## 
                                    ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @return a i_dictionary
                                    ## 
                                    def additional_data
                                        return @additional_data
                                    end
                                    ## 
                                    ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @param value Value to set for the AdditionalData property.
                                    ## @return a void
                                    ## 
                                    def additional_data=(value)
                                        @additional_data = value
                                    end
                                    ## 
                                    ## Gets the consentedPermissionSet property value. The consentedPermissionSet property
                                    ## @return a teams_app_permission_set
                                    ## 
                                    def consented_permission_set
                                        return @consented_permission_set
                                    end
                                    ## 
                                    ## Sets the consentedPermissionSet property value. The consentedPermissionSet property
                                    ## @param value Value to set for the consentedPermissionSet property.
                                    ## @return a void
                                    ## 
                                    def consented_permission_set=(value)
                                        @consented_permission_set = value
                                    end
                                    ## 
                                    ## Instantiates a new upgradePostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a upgrade_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return UpgradePostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "consentedPermissionSet" => lambda {|n| @consented_permission_set = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::TeamsAppPermissionSet.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("consentedPermissionSet", @consented_permission_set)
                                        writer.write_additional_data(@additional_data)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
