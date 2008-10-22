require File.expand_path(File.join(File.dirname(__FILE__), "spec_helper"))

describe "*=" do
  it "<[foo*=ar]> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo*=ar]", 4)
  end

  it "<[foo*='ar']> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo*='ar']", 4)
  end

  it "<[foo*=\"ar\"]> should return a list of all nodes with the element" do
    HTML.should have_nodes("[foo*=\"ar\"]", 4)
  end
end