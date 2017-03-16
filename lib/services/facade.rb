require_relative "validators/attribute_validator"
require_relative "money/money"
require_relative "database/money/account"

module Application
  module Services
    module Facade
      class << self
        def withdraw(account_id:, amount:)
          account = Application::Services::Database::Money::Account.find_by_id(account_id)
          amount  = Application::Services::Money.withdraw(account.amount, amount)

          account.change(amount: amount)
          account.save!
        end
      end
    end
  end
end
