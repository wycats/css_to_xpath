require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "classes" do
  it "<E.foo> should return a list of all nodes with the class" do
    HTML.should have_nodes("span.foo", 2)
  end

  it "<.foo> should return a list of all nodes with the class" do
    HTML.should have_nodes(".foo", 3)
  end
end