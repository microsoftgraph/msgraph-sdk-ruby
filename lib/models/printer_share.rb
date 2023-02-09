require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class PrinterShare < MicrosoftGraph::Models::PrinterBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # If true, all users and groups will be granted access to this printer share. This supersedes the allow lists defined by the allowedUsers and allowedGroups navigation properties.
            @allow_all_users
            ## 
            # The groups whose users have access to print using the printer.
            @allowed_groups
            ## 
            # The users who have access to print using the printer.
            @allowed_users
            ## 
            # The DateTimeOffset when the printer share was created. Read-only.
            @created_date_time
            ## 
            # The printer that this printer share is related to.
            @printer
            ## 
            ## Gets the allowAllUsers property value. If true, all users and groups will be granted access to this printer share. This supersedes the allow lists defined by the allowedUsers and allowedGroups navigation properties.
            ## @return a boolean
            ## 
            def allow_all_users
                return @allow_all_users
            end
            ## 
            ## Sets the allowAllUsers property value. If true, all users and groups will be granted access to this printer share. This supersedes the allow lists defined by the allowedUsers and allowedGroups navigation properties.
            ## @param value Value to set for the allow_all_users property.
            ## @return a void
            ## 
            def allow_all_users=(value)
                @allow_all_users = value
            end
            ## 
            ## Gets the allowedGroups property value. The groups whose users have access to print using the printer.
            ## @return a group
            ## 
            def allowed_groups
                return @allowed_groups
            end
            ## 
            ## Sets the allowedGroups property value. The groups whose users have access to print using the printer.
            ## @param value Value to set for the allowed_groups property.
            ## @return a void
            ## 
            def allowed_groups=(value)
                @allowed_groups = value
            end
            ## 
            ## Gets the allowedUsers property value. The users who have access to print using the printer.
            ## @return a user
            ## 
            def allowed_users
                return @allowed_users
            end
            ## 
            ## Sets the allowedUsers property value. The users who have access to print using the printer.
            ## @param value Value to set for the allowed_users property.
            ## @return a void
            ## 
            def allowed_users=(value)
                @allowed_users = value
            end
            ## 
            ## Instantiates a new printerShare and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.printerShare"
            end
            ## 
            ## Gets the createdDateTime property value. The DateTimeOffset when the printer share was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The DateTimeOffset when the printer share was created. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_share
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterShare.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowAllUsers" => lambda {|n| @allow_all_users = n.get_boolean_value() },
                    "allowedGroups" => lambda {|n| @allowed_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::Group.create_from_discriminator_value(pn) }) },
                    "allowedUsers" => lambda {|n| @allowed_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::User.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "printer" => lambda {|n| @printer = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Printer.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the printer property value. The printer that this printer share is related to.
            ## @return a printer
            ## 
            def printer
                return @printer
            end
            ## 
            ## Sets the printer property value. The printer that this printer share is related to.
            ## @param value Value to set for the printer property.
            ## @return a void
            ## 
            def printer=(value)
                @printer = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowAllUsers", @allow_all_users)
                writer.write_collection_of_object_values("allowedGroups", @allowed_groups)
                writer.write_collection_of_object_values("allowedUsers", @allowed_users)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("printer", @printer)
            end
        end
    end
end
