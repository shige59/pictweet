class Tweet < ApplicationRecord
  
  # def attributes
  #   {'text' => nil, 'image' => nil}
  # end
  def as_json(options = {})
    super(only: [:text, :image])
  end

  validates :text,presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

end
