class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags

  def short_content
    #the "content" below is part of post 
    "#{object.content[0..39]}..."
  end
end
