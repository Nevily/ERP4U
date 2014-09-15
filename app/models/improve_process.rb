class ImproveProcess < ActiveRecord::Base
  has_many :companies, dependent: :nullify

  validates :title, presence: true
  validates :title, uniqueness: true

  def self.find_all
    ImproveProcess.where(approved: true)
  end
end
