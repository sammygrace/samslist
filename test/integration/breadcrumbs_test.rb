require 'test_helper'

class BreadcrumbsTest < ActionDispatch::IntegrationTest

  test "correct post name appears on show page" do
    file = "1.png"
    path = "db/photos/1.png"
    posts(:one).photos.attach(io: File.open(path), filename: file)
    @post = posts(:one)

    get "/posts/#{@post.slug}/"
    assert body =~ /#{@post.title}/
  end

  test "post county appears on breadcrumb" do 
    @post = posts(:one)
    get "/posts/#{@post.slug}/"

    assert_select "li.breadcrumb-item", text: @post.county.name
    assert_select "li.breadcrumb-item", text: @post.city.name
    assert_select "li.breadcrumb-item", text: @post.category.name
    assert_select "li.breadcrumb-item", text: @post.subcategory.name
    assert_select "li.breadcrumb-item", text: @post.title
  end
end
