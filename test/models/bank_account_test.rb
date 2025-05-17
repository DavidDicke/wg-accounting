require "test_helper"

class BankAccountTest < ActiveSupport::TestCase
  test "should not save a Bank Account without Content" do
    review = BookingReview.new(rating: 5, user: users(:pablo), booking: bookings(:second_booking))
    assert_not review.save, "Saved the Review without a Content"
   end
end
