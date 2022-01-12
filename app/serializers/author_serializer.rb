class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :short_content
  has_one :profile
  has_many :posts

  def short_content
    "#{self.object.content[0..50]}..."
  end
end
