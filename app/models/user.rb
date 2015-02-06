class User < ActiveRecord::Base

  has_many :links

  def link_urls
    links.map{ |link| link.url }.join(" == ")
  end

end
