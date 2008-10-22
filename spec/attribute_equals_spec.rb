require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "Attributes" do
  it "<[foo=bar]> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("[foo=bar]", 1)
  end  

  it "<[foo='bar']> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("[foo='bar']", 1)
  end

  it "<[foo=\"bar\"]> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("[foo=\"bar\"]", 1)
  end
end