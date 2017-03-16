module Application
  module Services
    module Money
      module Account
        class << self
          def withdraw(account_amount, withdraw_amount)
            AttributeValidator.attribute("account_amount").with(account_amount).must_be(Integer)
            AttributeValidator.attribute("withdraw_amount").with(withdraw_amount).must_be(Integer)
            raise Services::Money::Error::InvalidAmount.new unless withdraw_amount > account_amount

            account_amount - withdraw_amount
          end
        end
      end
    end
  end
end
