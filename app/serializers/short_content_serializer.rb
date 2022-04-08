class ShortContentSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags

  def short_content
    short = object.content[0..39]
    "#{short}..."
  end

end
