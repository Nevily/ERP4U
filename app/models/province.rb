class Province < ActiveRecord::Base
  has_many :companies, inverse_of: :province, dependent: :nullify
end
