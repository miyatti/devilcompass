class User < ActiveRecord::Base
  has_many :answers, dependent: :destroy
  belongs_to :ideology
  belongs_to  :element
  belongs_to  :temper
  belongs_to  :devil
  accepts_nested_attributes_for :answers
end
