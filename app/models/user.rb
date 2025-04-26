class User < ApplicationRecord
  has_many :task_lists, dependent: :destroy
  has_many :items, through: :task_lists


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
