require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'do_more/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", signin_path
    assert_select "a[href=?]", about_path, count: 2
  end
end