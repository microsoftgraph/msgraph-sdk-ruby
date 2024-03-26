require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/print_job_configuration'
require_relative '../../../../../print'
require_relative '../../../../shares'
require_relative '../../../item'
require_relative '../../jobs'
require_relative '../item'
require_relative './redirect'

module MicrosoftGraph
    module Print
        module Shares
            module Item
                module Jobs
                    module Item
                        module Redirect
                            class RedirectPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The configuration property
                                @configuration
                                ## 
                                # The destinationPrinterId property
                                @destination_printer_id
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
                                ## Gets the configuration property value. The configuration property
                                ## @return a print_job_configuration
                                ## 
                                def configuration
                                    return @configuration
                                end
                                ## 
                                ## Sets the configuration property value. The configuration property
                                ## @param value Value to set for the configuration property.
                                ## @return a void
                                ## 
                                def configuration=(value)
                                    @configuration = value
                                end
                                ## 
                                ## Instantiates a new RedirectPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a redirect_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return RedirectPostRequestBody.new
                                end
                                ## 
                                ## Gets the destinationPrinterId property value. The destinationPrinterId property
                                ## @return a string
                                ## 
                                def destination_printer_id
                                    return @destination_printer_id
                                end
                                ## 
                                ## Sets the destinationPrinterId property value. The destinationPrinterId property
                                ## @param value Value to set for the destinationPrinterId property.
                                ## @return a void
                                ## 
                                def destination_printer_id=(value)
                                    @destination_printer_id = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "configuration" => lambda {|n| @configuration = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::PrintJobConfiguration.create_from_discriminator_value(pn) }) },
                                        "destinationPrinterId" => lambda {|n| @destination_printer_id = n.get_string_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_object_value("configuration", @configuration)
                                    writer.write_string_value("destinationPrinterId", @destination_printer_id)
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
