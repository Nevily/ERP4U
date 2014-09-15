class Company < ActiveRecord::Base

  belongs_to :user, inverse_of: :company 
  belongs_to :brach, inverse_of: :company
  belongs_to :erp_system, inverse_of: :company
  belongs_to :improve_process, inverse_of: :company
  belongs_to :inventary_system, inverse_of: :company
  belongs_to :logistics_system, inverse_of: :company
  belongs_to :province, inverse_of: :company
  belongs_to :salary_system, inverse_of: :company

  validates :name, :province_id, :branch_id,  presence: true
  validates_format_of :phone, with: /(^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)/, allow_blank: true
  validate :has_a_system

  private

    def has_a_system
      unless [self.erp_system_id, self.improve_process_id, self.inventory_system_id, self.logistics_system_id, self.salary_system_id].any?{|val| val.present? }
        errors[:base] << ("Please choose at least one system.")
      end
    end 
end 