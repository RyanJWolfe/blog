# frozen_string_literal: true

require 'test_helper'

class CommentsMailerTest < ActionMailer::TestCase
  test 'submitted' do
    puts comments(:one).inspect
    mail = CommentsMailer.submitted comments(:one)
    assert_equal 'New comment!', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    # assert_match 'Hi', mail.body.encoded
  end
end
