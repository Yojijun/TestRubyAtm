require "./bank_account"
RSpec.describe BankAccount do
  describe "存錢功能" do
    it "帳戶原本有十元 存入五元之後 帳戶變成十五元" do
      account = BankAccount.new(10)
      account.deposit 5 #這邊設定是提領
      expect(account.balance).to be 15 #預期，經過上面編輯，我預期他的結果
    end
    
    it "帳戶原本有十元 存負五元 帳戶還是十元不能存入小於等於零" do
      account = BankAccount.new(10)
      account.deposit -5
      expect(account.balance).to be 10
    end
  end

  describe"領錢功能" do
    it "帳戶有十元 領出五元之後 帳戶變成五元"do
      account=BankAccount.new(10)
      amount=account.withdraw 5
      expect(amount).to be 5
      expect(account.balance).to be 5
    end 

    it "帳戶原本有十元 試圖領出二十元  （領不出來帳戶將還是十元）餘額不足領不出來"do
      account = BankAccount.new(10)
      amount = account.withdraw(20)
      expect(amount).to be 0
      expect(account.balance).to be 10
    end
    it "帳戶有十元 領出負五元之後 帳戶還是十元(不能領出小於等於零元)"do
      account = BankAccount.new(10)
      amount = account.withdraw(-5)
      expect(account.balance).to be(10)
      expect(amount).to be 0
    end

  end
end
# 還不知道要寫哪些程式碼 但先像是架構計畫好規格再依據規格並寫一段一段讓程式碼通過可以使用 這就是測驗 並非只是除錯抓錯