class SalarySystem < ActiveRecord::Base
  has_many :companies, dependent: :nullify

  validates :title, presence: true
  validates :title, uniqueness: true

  def self.find_all
    SalarySystem.where(approved: true)
  end
end
