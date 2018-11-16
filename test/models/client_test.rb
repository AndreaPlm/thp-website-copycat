require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @client = Client.new(email: "client@example.com", client_type: "example")
  end

  test "should be valid" do
    assert @client.valid?
  end

  # TEST VALEURS NON VIDES

  test "email should be present" do
    @client.email = "     "
    assert_not @client.valid?
  end

  test "client_type should be present" do
    @client.client_type = "     "
    assert_not @client.valid?
  end

  # test "client type should be student, town or company" do
  #   @client.client_type = "state"
  #   assert_not @client.valid?
  # end

  # TEST MAXIMUM TAILLES VALEURS

  test "email should not be too long" do
    @client.email = "a" * 244 + "@example.com"
    assert_not @client.valid?
  end

  # TEST ADRESSES MAILS VALIDES

  test "email validation should accept valid addresses" do
    valid_addresses = %w[client@example.com CLIENT@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @client.email = valid_address
      assert @client.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  # TEST ADRESSES MAILS INVALIDES

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[client@example,com user_at_foo.org client.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @client.email = invalid_address
      assert_not @client.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  # TEST ADRESSE MAIL UNIQUE

  test "email addresses should be unique" do
    duplicate_user = @client.dup
    @client.save
    assert_not duplicate_user.valid?
  end

  # TEST ADRESSE MAIL DOWNCASES

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @client.email = mixed_case_email
    @client.save
    assert_equal mixed_case_email.downcase, @client.reload.email
  end


end
