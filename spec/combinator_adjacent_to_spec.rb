require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "The adjacent to combinator" do
  
  it "<div + p> should return the p tag" do
    HTML.should have_nodes("div + p", 1)
  end
  
  it "<span + span> should return the last 3 span tags" do
    HTML.should have_nodes("span[foo] + span", 3)
  end
  
  it "<span[foo] + span> should return the last 3 span tags" do
    HTML.should have_nodes("span[foo] + span", 2)
  end
  
  it "<body + div> should not return anything" do
    HTML.should have_nodes("body + div", 0)
  end
  
  it "<p + body> should not return anything" do
    HTML.should have_nodes("p + body", 0)
  end
  
end