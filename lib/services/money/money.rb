require_relative 'lib/account'
require_relative 'lib/errors'

module Application
  module Services
    module Money
      extend Account
    end
  end
end
