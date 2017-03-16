module Application
  module Services
    class AttributeValidator
      def self.attribute(name)
        new(name)
      end

      def initialize(name)
        @name = name
      end

      def with(value)
        @value = value
        self
      end

      def must_be(type)
        railse_error unless @value.is_a?(type)
      end

      private

      def railse_error
        raise ArgumentError, "#{@name} must be #{@type}"
      end
    end
  end
end
