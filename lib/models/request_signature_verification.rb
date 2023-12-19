require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class RequestSignatureVerification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies which weak algorithms are allowed.  The possible values are: rsaSha1, unknownFutureValue.
            @allowed_weak_algorithms
            ## 
            # Specifies whether signed authentication requests for this application should be required.
            @is_signed_request_required
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the allowedWeakAlgorithms property value. Specifies which weak algorithms are allowed.  The possible values are: rsaSha1, unknownFutureValue.
            ## @return a request_signature_verification_allowed_weak_algorithms
            ## 
            def allowed_weak_algorithms
                return @allowed_weak_algorithms
            end
            ## 
            ## Sets the allowedWeakAlgorithms property value. Specifies which weak algorithms are allowed.  The possible values are: rsaSha1, unknownFutureValue.
            ## @param value Value to set for the allowedWeakAlgorithms property.
            ## @return a void
            ## 
            def allowed_weak_algorithms=(value)
                @allowed_weak_algorithms = value
            end
            ## 
            ## Instantiates a new requestSignatureVerification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a request_signature_verification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RequestSignatureVerification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowedWeakAlgorithms" => lambda {|n| @allowed_weak_algorithms = n.get_enum_value(MicrosoftGraph::Models::RequestSignatureVerificationAllowedWeakAlgorithms) },
                    "isSignedRequestRequired" => lambda {|n| @is_signed_request_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isSignedRequestRequired property value. Specifies whether signed authentication requests for this application should be required.
            ## @return a boolean
            ## 
            def is_signed_request_required
                return @is_signed_request_required
            end
            ## 
            ## Sets the isSignedRequestRequired property value. Specifies whether signed authentication requests for this application should be required.
            ## @param value Value to set for the isSignedRequestRequired property.
            ## @return a void
            ## 
            def is_signed_request_required=(value)
                @is_signed_request_required = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_enum_value("allowedWeakAlgorithms", @allowed_weak_algorithms)
                writer.write_boolean_value("isSignedRequestRequired", @is_signed_request_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
