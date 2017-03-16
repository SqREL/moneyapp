module Application
  module Services
    module Database
      module Money
        class Account
          attr_reader :amount
          def self.find_by_id(account_id)
            new({ id: 1, name: 'PB', amount: '1472', currency: 'UAH' })
          end

          def initialize(attributes)
            @amount = attributes[:amount]
          end

          def change(params)
            self.changes = changes.merge(params)
          end

          def changes
            @changes ||= {}
          end

          def changes=(value)
            @changes = value
          end

          def update(params)
            true
          end

          def save
          end
        end
      end
    end
  end
end
