require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "Attributes" do
  it "<[foo]> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("[foo]", 2)
  end
  
  it "<*[foo]> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("*[foo]", 2)
  end
  
  it "<E[foo]> should return a list of all nodes with the attribute" do
    HTML.should have_nodes("span[foo]", 1)
  end
end