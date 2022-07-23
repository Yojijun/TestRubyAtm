class BankAccount #寫出使用者會需要的功能 也可以說運作功能方法
  def initialize(amount)
    @amount = amount   #帳戶
  end
  def balance        #餘額 
    @amount
  end
  def deposit(amount) #存錢
    @amount += amount if amount > 0
  end
  def withdraw(amount) #領錢
    if amount > 0 && @amount >= amount
      @amount -= amount
    else
      0
    end
  end
end