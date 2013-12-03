require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :content => "MyString",
      :micropost_id => ""
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "input#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_micropost_id[name=?]", "comment[micropost_id]"
    end
  end
end
