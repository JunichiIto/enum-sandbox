require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test 'toggle status' do
    visit article_path(articles(:one))
    assert_link 'published'
    click_link 'published'
    assert_link 'draft'
    click_link 'draft'
    assert_link 'published'
  end
end
