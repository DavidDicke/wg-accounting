# == Schema Information
#
# Table name: bank_accounts
#
#  id         :bigint           not null, primary key
#  bank_name  :string
#  bic        :string
#  close_date :date
#  iban       :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class BankAccountTest < ActiveSupport::TestCase
  test "should not save a Bank Account without Content" do
    review = BookingReview.new(rating: 5, user: users(:pablo), booking: bookings(:second_booking))
    assert_not review.save, "Saved the Review without a Content"
   end
end
