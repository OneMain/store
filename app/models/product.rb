
class Product < ApplicationRecord
  # 验证
  validates :title,:description,presence: true
  validates :title,uniqueness: true
  validates :price,numericality:{ greater_than_or_equal_to: 0.01 }

  # 关联关系
  has_many :attachments,as: :attachmentable

end
