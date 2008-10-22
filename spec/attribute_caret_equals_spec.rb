require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "^=" do
  it "<[foo^=bar]> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo^=bar]", 3)
  end

  it "<[foo^='bar']> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo^='bar']", 3)
  end

  it "<[foo^=\"bar\"]> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo^=\"bar\"]", 3)
  end
end