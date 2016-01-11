require 'forwardable'

class MicrosoftGraph
  class Collection
    include Enumerable
    extend Forwardable

    attr_accessor :graph

    def_delegators :values, :size, :length, :include?, :empty?, :[]

    def initialize(type, initial_values = [])
      @type = type
      @dirty = false
      @internal_values =
        if klass = MicrosoftGraph::ClassBuilder.get_namespaced_class(type.member_type.name)
          initial_values.map { |v| klass.new(attributes: v) }
        else
          initial_values
        end
    end

    def each
      values.each do |value|
        yield value
      end
    end

    def <<(value)
      unless @type.valid_value?(value)
        raise MicrosoftGraph::TypeError.new(
          "Value \"#{value}\" does not match type #{@type.member_type.name}"
        )
      end
      @dirty = true
      @internal_values << value
      self
    end

    def []=(index, value)
      raise MicrosoftGraph::TypeError unless @type.valid_value?(value)
      @dirty = true
      values[index] = value
    end

    def dirty?
      @dirty || @internal_values.any? { |value|
        value.respond_to?(:dirty?) && value.dirty?
      }
    end

    def mark_clean
      @dirty = false
      @internal_values.each { |value|
        value.respond_to?(:mark_clean) && value.mark_clean
      }
    end

    def as_json(options = {})
      values.map do |value|
        if value.respond_to? :as_json
          value.as_json(options)
        else
          value
        end
      end
    end

    def new(attributes = {})
      klass = MicrosoftGraph::ClassBuilder.get_namespaced_class(@type.member_type.name)
      if klass
        new_instance = klass.new(graph: graph, attributes: attributes)
        self << new_instance
        new_instance
      else
        raise NoMethodError.new("undefined method `new' for #{as_json}:#{self.class}")
      end
    end

    def parental_chain
      if parent && parent.respond_to?(:parental_chain)
        parent.parental_chain.concat([parent])
      else
        [parent]
      end
    end

    private

    def values
      @internal_values
    end

  end
end
