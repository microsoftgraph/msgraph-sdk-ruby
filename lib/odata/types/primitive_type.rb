module OData
  class PrimitiveType < Type
  end
end

Dir[
  File.join(
    File.dirname(__FILE__),
    'primitive_types',
    '*.rb'
  )
].each { |f| require f }
