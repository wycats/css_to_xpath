require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "Elements" do
  it "<E> should return a list of all nodes with the element" do
    HTML.should have_nodes("span", 4)
  end

  it "<E> should return a list of all nodes with the element" do
    pending
    HTML.should have_nodes("SPAN", 4)
  end
end