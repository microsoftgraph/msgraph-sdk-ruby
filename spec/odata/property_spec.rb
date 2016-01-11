require "spec_helper"
require "odata"

describe OData::Property do
  Given(:subject) { OData::Property.new(type: type) }
  When(:result) { subject.coerce_to_type(example) }

  context "with primitive type" do

    describe "Edm.String" do
      Given(:type) { OData::StringType.new }
      Given(:matcher) { String }

      context "with a value" do
        Invariant { matcher === result }

        context "with a string" do
          Given(:example) { "hello" }
          Then { result == example }
        end

        context "with an integer" do
          Given(:example) { 1 }
          Then { result == "1" }
        end

        context "with a symbol" do
          Given(:example) { :goodbye }
          Then { result == "goodbye" }
        end
      end

      context "with a null value" do
        Given(:example) { nil }
        Then { result.nil? }
      end
    end

    describe "Edm.Date" do
      Given(:type) { OData::DateType.new }
      Given(:matcher) { Date }

      describe "coercable values" do
        Invariant { matcher === result }

        context "with a date object (should return the same object)" do
          Given(:example) { Date.new(2001, 2, 3) }
          Then { result.equal? example }
        end

        context "with a string that is a real date" do
          Given(:example) { "2000-01-02" }
          Then { result == Date.new(2000, 1, 2) }
        end
      end

      describe "un-coercable values" do
        context "with a string that is not a real date" do
          Given(:example) { "hello" }
          Then { result == Failure(TypeError) }
        end

        context "with an integer" do
          Given(:example) { 1 }
          Then { result == Failure(TypeError) }
        end
      end
    end

    describe "Edm.Double" do
      Given(:type) { OData::DoubleType.new }
      Given(:matcher) { Numeric }

      describe "coercable values" do
        Invariant { matcher === result }

        context "with a Float (should return the same object)" do
          Given(:example) { 1.2e999 }
          Then { result.equal? example }
        end

        context "with an integer" do
          Given(:example) { 1 }
          Then { result == 1.0 }
        end

        context "with a string" do
          Given(:example) { "3.14159" }
          Then { result == 3.14159 }
        end
      end

      describe "un-coercable values" do
        context "with a boolean" do
          Given(:example) { true }
          Then { result == Failure(TypeError) }
        end
      end
    end

    describe "Edm.Guid" do
      Given(:type) { OData::GuidType.new }
      Given(:matcher) { String }

      describe "coercable values" do
        Invariant { matcher === result }

        context "with an string" do
          Given(:example) { "thequickbrownfoxjumpsoverthelazydog" }
          Then { result.equal? example }
        end

        context "with a symbol" do
          Given(:example) { :abc123xyz890 }
          Then { result == "abc123xyz890" }
        end

        context "with a number" do
          Given(:example) { 1234567890 }
          Then { result == "1234567890" }
        end
      end

      describe "un-coercable values" do
        context "with a boolean" do
          Given(:example) { true }
          Then { result == Failure(TypeError) }
        end
      end
    end

    describe "Edm.Int16" do
      Given(:type) { OData::Int16Type.new }
      Given(:matcher) { Numeric }

      describe "coercable values" do
        Invariant { matcher === result }

        context "with an integer" do
          Given(:example) { 57 }
          Then { result == example }
        end

        context "with a string" do
          Given(:example) { "30000" }
          Then { result == 30000 }
        end
      end

      describe "un-coercable values" do
        context "with a boolean" do
          Given(:example) { true }
          Then { result == Failure(TypeError) }
        end

        context "with too large of a number" do
          Given(:example) { 33000 }
          Then { result == Failure(TypeError) }
        end

        context "with too large of a number" do
          Given(:example) { "33000" }
          Then { result == Failure(TypeError) }
        end
      end
    end

  end

end
