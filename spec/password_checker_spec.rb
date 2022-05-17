require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true when password length is greater than or equal to 8" do
    passwordchecker = PasswordChecker.new
    expect(passwordchecker.check("elephant")).to eq true
  end
  context "if password length is less than 8" do
    it "fails" do
      passwordchecker = PasswordChecker.new
      expect{ passwordchecker.check("dog") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end