class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :entries

  def link
    "localhost3000/#{token}"
  end
end
