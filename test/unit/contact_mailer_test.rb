require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contactform" do
    @expected.subject = 'ContactMailer#contactform'
    @expected.body    = read_fixture('contactform')
    @expected.date    = Time.now

    assert_equal @expected.encoded, ContactMailer.create_contactform(@expected.date).encoded
  end

end
