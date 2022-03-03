class Memo < ApplicationRecord
    belongs_to :category
    validates :title, :body, :category_id, presence: true
    validates_uniqueness_of :body && :title
end
