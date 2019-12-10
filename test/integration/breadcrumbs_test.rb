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
    @post = nil
    @county = @post.county
    get "/posts/#{@post.slug}/"
    assert body =~ /#{@county.name}/
  end
end
