class Category < ApplicationRecord
    has_many :memos
    validates :title, :body, :category_id, presence: true
    validates_uniqueness_of :body && :title
end
