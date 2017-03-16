module Application
  module Services
    module Money
      class Error < StandardError
        attr_accessor :message

        def initialize(message)
          @message = message
        end

        class InvalidAmount < Error
          def message
            "Amount should be less than account amount"
          end
        end
      end
    end
  end
end
