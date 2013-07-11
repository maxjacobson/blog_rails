module ApplicationHelper
  def title
    if @title
      "#{@title} | Rails Blog"
    else
      "Rails Blog"
    end
  end
  def to_markdown(text)
    Kramdown::Document.new(text).to_html
  end
end
