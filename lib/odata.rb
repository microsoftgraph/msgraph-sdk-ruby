require 'date'

Dir[
  File.join(
    File.dirname(__FILE__),
    'odata',
    '*.rb'
  )
].each { |f| require f }

module OData

  def self.convert_to_snake_case(str)
    first_letter, rest = str.to_s.split("", 2)
    "#{first_letter}#{rest.to_s.gsub(/([A-Z])/, '_\1')}".downcase
  end

  def self.convert_to_camel_case(str)
    first_letter, rest = str.to_s.split("", 2)
    cameled_rest = rest.gsub(/_(.)/) { |l| l[1].upcase }
    first_letter.downcase.concat(cameled_rest)
  end

  def self.convert_keys_to_snake_case(properties)
    if properties.respond_to? :keys
      results = {}
      properties.each do |key, value|
        results[convert_to_snake_case(key)] = convert_keys_to_snake_case(value)
      end
      results
    else
      properties
    end
  end

  def self.convert_keys_to_camel_case(properties)
    if properties.respond_to? :keys
      results = {}
      properties.each do |key, value|
        results[convert_to_camel_case(key)] = convert_keys_to_camel_case(value)
      end
      results
    elsif properties.is_a? Array
      properties.map { |m| convert_keys_to_camel_case(m) }
    else
      properties
    end
  end
end
