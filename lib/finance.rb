require 'YahooFinance'

class Client
  attr_accessor :name, :account_balance,
  def initialize(name, account_balance)
    @name = name
    @account_balance = account_balance
  end

  def to_s
    "#{@name} has an account balance of #{@account_balance}"
  end
end


class Portfolio
  attr_accessor :stocks
  stocks = []
end



class Stock
  attr_accessor :company, :share_price
  def initialize(company, share_price) #get share price from API
    @company = company
  end

  def get_share_price()
    return YahooFinance::get_quotes(YahooFinance::StandardQuote, 'AAPL')['AAPL'].lastTrade
  end

  def to_s
    "#{@company} has a share price of #{@share_price}"
  end

 end