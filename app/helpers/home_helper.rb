module HomeHelper
  def tag_list(post)
   raw  post.tag_list.map { |t| link_to t, tag_path(t) }.join(', ')
  end
  
  def date(entered_date)
    entered_date.strftime("%d %b, %Y")
  end
end
