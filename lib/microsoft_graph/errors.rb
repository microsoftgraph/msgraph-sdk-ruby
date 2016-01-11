class MicrosoftGraph
  class TypeError < ::TypeError; end
  class NonNullableError < TypeError; end
  class NoGraphError < ::RuntimeError; end
  class NoAssociationError < ::RuntimeError; end
end
