require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class Payload < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The branch of a payload. Possible values are: unknown, other, americanExpress, capitalOne, dhl, docuSign, dropbox, facebook, firstAmerican, microsoft, netflix, scotiabank, sendGrid, stewartTitle, tesco, wellsFargo, syrinxCloud, adobe, teams, zoom, unknownFutureValue.
            @brand
            ## 
            # The complexity of a payload. Possible values are: unknown, low, medium, high, unknownFutureValue.
            @complexity
            ## 
            # Identity of the user who created the attack simulation and training campaign payload.
            @created_by
            ## 
            # Date and time when the attack simulation and training campaign payload. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Description of the attack simulation and training campaign payload.
            @description
            ## 
            # Additional details about the payload.
            @detail
            ## 
            # Display name of the attack simulation and training campaign payload. Supports $filter and $orderby.
            @display_name
            ## 
            # Industry of a payload. Possible values are: unknown, other, banking, businessServices, consumerServices, education, energy, construction, consulting, financialServices, government, hospitality, insurance, legal, courierServices, IT, healthcare, manufacturing, retail, telecom, realEstate, unknownFutureValue.
            @industry
            ## 
            # Indicates whether the attack simulation and training campaign payload was created from an automation flow. Supports $filter and $orderby.
            @is_automated
            ## 
            # Indicates whether the payload is controversial.
            @is_controversial
            ## 
            # Indicates whether the payload is from any recent event.
            @is_current_event
            ## 
            # Payload language.
            @language
            ## 
            # Identity of the user who most recently modified the attack simulation and training campaign payload.
            @last_modified_by
            ## 
            # Date and time when the attack simulation and training campaign payload was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # Free text tags for a payload.
            @payload_tags
            ## 
            # The payload delivery platform for a simulation. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            @platform
            ## 
            # Predicted probability for a payload to phish a targeted user.
            @predicted_compromise_rate
            ## 
            # Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            @simulation_attack_type
            ## 
            # The source property
            @source
            ## 
            # Simulation content status. Supports $filter and $orderby. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            @status
            ## 
            # The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue, oAuthConsentGrant. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: oAuthConsentGrant. For more information on the types of social engineering attack techniques, see simulations.
            @technique
            ## 
            # The theme of a payload. Possible values are: unknown, other, accountActivation, accountVerification, billing, cleanUpMail, controversial, documentReceived, expense, fax, financeReport, incomingMessages, invoice, itemReceived, loginAlert, mailReceived, password, payment, payroll, personalizedOffer, quarantine, remoteWork, reviewMessage, securityUpdate, serviceSuspended, signatureRequired, upgradeMailboxStorage, verifyMailbox, voicemail, advertisement, employeeEngagement, unknownFutureValue.
            @theme
            ## 
            ## Gets the brand property value. The branch of a payload. Possible values are: unknown, other, americanExpress, capitalOne, dhl, docuSign, dropbox, facebook, firstAmerican, microsoft, netflix, scotiabank, sendGrid, stewartTitle, tesco, wellsFargo, syrinxCloud, adobe, teams, zoom, unknownFutureValue.
            ## @return a payload_brand
            ## 
            def brand
                return @brand
            end
            ## 
            ## Sets the brand property value. The branch of a payload. Possible values are: unknown, other, americanExpress, capitalOne, dhl, docuSign, dropbox, facebook, firstAmerican, microsoft, netflix, scotiabank, sendGrid, stewartTitle, tesco, wellsFargo, syrinxCloud, adobe, teams, zoom, unknownFutureValue.
            ## @param value Value to set for the brand property.
            ## @return a void
            ## 
            def brand=(value)
                @brand = value
            end
            ## 
            ## Gets the complexity property value. The complexity of a payload. Possible values are: unknown, low, medium, high, unknownFutureValue.
            ## @return a payload_complexity
            ## 
            def complexity
                return @complexity
            end
            ## 
            ## Sets the complexity property value. The complexity of a payload. Possible values are: unknown, low, medium, high, unknownFutureValue.
            ## @param value Value to set for the complexity property.
            ## @return a void
            ## 
            def complexity=(value)
                @complexity = value
            end
            ## 
            ## Instantiates a new Payload and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the attack simulation and training campaign payload.
            ## @return a email_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the attack simulation and training campaign payload.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when the attack simulation and training campaign payload. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when the attack simulation and training campaign payload. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Payload.new
            end
            ## 
            ## Gets the description property value. Description of the attack simulation and training campaign payload.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the attack simulation and training campaign payload.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the detail property value. Additional details about the payload.
            ## @return a payload_detail
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. Additional details about the payload.
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## Gets the displayName property value. Display name of the attack simulation and training campaign payload. Supports $filter and $orderby.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the attack simulation and training campaign payload. Supports $filter and $orderby.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "brand" => lambda {|n| @brand = n.get_enum_value(MicrosoftGraph::Models::PayloadBrand) },
                    "complexity" => lambda {|n| @complexity = n.get_enum_value(MicrosoftGraph::Models::PayloadComplexity) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PayloadDetail.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "industry" => lambda {|n| @industry = n.get_enum_value(MicrosoftGraph::Models::PayloadIndustry) },
                    "isAutomated" => lambda {|n| @is_automated = n.get_boolean_value() },
                    "isControversial" => lambda {|n| @is_controversial = n.get_boolean_value() },
                    "isCurrentEvent" => lambda {|n| @is_current_event = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::EmailIdentity.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payloadTags" => lambda {|n| @payload_tags = n.get_collection_of_primitive_values(String) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraph::Models::PayloadDeliveryPlatform) },
                    "predictedCompromiseRate" => lambda {|n| @predicted_compromise_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "simulationAttackType" => lambda {|n| @simulation_attack_type = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackType) },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraph::Models::SimulationContentSource) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::SimulationContentStatus) },
                    "technique" => lambda {|n| @technique = n.get_enum_value(MicrosoftGraph::Models::SimulationAttackTechnique) },
                    "theme" => lambda {|n| @theme = n.get_enum_value(MicrosoftGraph::Models::PayloadTheme) },
                })
            end
            ## 
            ## Gets the industry property value. Industry of a payload. Possible values are: unknown, other, banking, businessServices, consumerServices, education, energy, construction, consulting, financialServices, government, hospitality, insurance, legal, courierServices, IT, healthcare, manufacturing, retail, telecom, realEstate, unknownFutureValue.
            ## @return a payload_industry
            ## 
            def industry
                return @industry
            end
            ## 
            ## Sets the industry property value. Industry of a payload. Possible values are: unknown, other, banking, businessServices, consumerServices, education, energy, construction, consulting, financialServices, government, hospitality, insurance, legal, courierServices, IT, healthcare, manufacturing, retail, telecom, realEstate, unknownFutureValue.
            ## @param value Value to set for the industry property.
            ## @return a void
            ## 
            def industry=(value)
                @industry = value
            end
            ## 
            ## Gets the isAutomated property value. Indicates whether the attack simulation and training campaign payload was created from an automation flow. Supports $filter and $orderby.
            ## @return a boolean
            ## 
            def is_automated
                return @is_automated
            end
            ## 
            ## Sets the isAutomated property value. Indicates whether the attack simulation and training campaign payload was created from an automation flow. Supports $filter and $orderby.
            ## @param value Value to set for the isAutomated property.
            ## @return a void
            ## 
            def is_automated=(value)
                @is_automated = value
            end
            ## 
            ## Gets the isControversial property value. Indicates whether the payload is controversial.
            ## @return a boolean
            ## 
            def is_controversial
                return @is_controversial
            end
            ## 
            ## Sets the isControversial property value. Indicates whether the payload is controversial.
            ## @param value Value to set for the isControversial property.
            ## @return a void
            ## 
            def is_controversial=(value)
                @is_controversial = value
            end
            ## 
            ## Gets the isCurrentEvent property value. Indicates whether the payload is from any recent event.
            ## @return a boolean
            ## 
            def is_current_event
                return @is_current_event
            end
            ## 
            ## Sets the isCurrentEvent property value. Indicates whether the payload is from any recent event.
            ## @param value Value to set for the isCurrentEvent property.
            ## @return a void
            ## 
            def is_current_event=(value)
                @is_current_event = value
            end
            ## 
            ## Gets the language property value. Payload language.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. Payload language.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation and training campaign payload.
            ## @return a email_identity
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who most recently modified the attack simulation and training campaign payload.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date and time when the attack simulation and training campaign payload was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date and time when the attack simulation and training campaign payload was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payloadTags property value. Free text tags for a payload.
            ## @return a string
            ## 
            def payload_tags
                return @payload_tags
            end
            ## 
            ## Sets the payloadTags property value. Free text tags for a payload.
            ## @param value Value to set for the payloadTags property.
            ## @return a void
            ## 
            def payload_tags=(value)
                @payload_tags = value
            end
            ## 
            ## Gets the platform property value. The payload delivery platform for a simulation. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            ## @return a payload_delivery_platform
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. The payload delivery platform for a simulation. Possible values are: unknown, sms, email, teams, unknownFutureValue.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the predictedCompromiseRate property value. Predicted probability for a payload to phish a targeted user.
            ## @return a double
            ## 
            def predicted_compromise_rate
                return @predicted_compromise_rate
            end
            ## 
            ## Sets the predictedCompromiseRate property value. Predicted probability for a payload to phish a targeted user.
            ## @param value Value to set for the predictedCompromiseRate property.
            ## @return a void
            ## 
            def predicted_compromise_rate=(value)
                @predicted_compromise_rate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("brand", @brand)
                writer.write_enum_value("complexity", @complexity)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_object_value("detail", @detail)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("industry", @industry)
                writer.write_boolean_value("isAutomated", @is_automated)
                writer.write_boolean_value("isControversial", @is_controversial)
                writer.write_boolean_value("isCurrentEvent", @is_current_event)
                writer.write_string_value("language", @language)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("payloadTags", @payload_tags)
                writer.write_enum_value("platform", @platform)
                writer.write_object_value("predictedCompromiseRate", @predicted_compromise_rate)
                writer.write_enum_value("simulationAttackType", @simulation_attack_type)
                writer.write_enum_value("source", @source)
                writer.write_enum_value("status", @status)
                writer.write_enum_value("technique", @technique)
                writer.write_enum_value("theme", @theme)
            end
            ## 
            ## Gets the simulationAttackType property value. Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            ## @return a simulation_attack_type
            ## 
            def simulation_attack_type
                return @simulation_attack_type
            end
            ## 
            ## Sets the simulationAttackType property value. Attack type of the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, social, cloud, endpoint, unknownFutureValue.
            ## @param value Value to set for the simulationAttackType property.
            ## @return a void
            ## 
            def simulation_attack_type=(value)
                @simulation_attack_type = value
            end
            ## 
            ## Gets the source property value. The source property
            ## @return a simulation_content_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source property
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the status property value. Simulation content status. Supports $filter and $orderby. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @return a simulation_content_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Simulation content status. Supports $filter and $orderby. Possible values are: unknown, draft, ready, archive, delete, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the technique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue, oAuthConsentGrant. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: oAuthConsentGrant. For more information on the types of social engineering attack techniques, see simulations.
            ## @return a simulation_attack_technique
            ## 
            def technique
                return @technique
            end
            ## 
            ## Sets the technique property value. The social engineering technique used in the attack simulation and training campaign. Supports $filter and $orderby. Possible values are: unknown, credentialHarvesting, attachmentMalware, driveByUrl, linkInAttachment, linkToMalwareFile, unknownFutureValue, oAuthConsentGrant. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: oAuthConsentGrant. For more information on the types of social engineering attack techniques, see simulations.
            ## @param value Value to set for the technique property.
            ## @return a void
            ## 
            def technique=(value)
                @technique = value
            end
            ## 
            ## Gets the theme property value. The theme of a payload. Possible values are: unknown, other, accountActivation, accountVerification, billing, cleanUpMail, controversial, documentReceived, expense, fax, financeReport, incomingMessages, invoice, itemReceived, loginAlert, mailReceived, password, payment, payroll, personalizedOffer, quarantine, remoteWork, reviewMessage, securityUpdate, serviceSuspended, signatureRequired, upgradeMailboxStorage, verifyMailbox, voicemail, advertisement, employeeEngagement, unknownFutureValue.
            ## @return a payload_theme
            ## 
            def theme
                return @theme
            end
            ## 
            ## Sets the theme property value. The theme of a payload. Possible values are: unknown, other, accountActivation, accountVerification, billing, cleanUpMail, controversial, documentReceived, expense, fax, financeReport, incomingMessages, invoice, itemReceived, loginAlert, mailReceived, password, payment, payroll, personalizedOffer, quarantine, remoteWork, reviewMessage, securityUpdate, serviceSuspended, signatureRequired, upgradeMailboxStorage, verifyMailbox, voicemail, advertisement, employeeEngagement, unknownFutureValue.
            ## @param value Value to set for the theme property.
            ## @return a void
            ## 
            def theme=(value)
                @theme = value
            end
        end
    end
end
