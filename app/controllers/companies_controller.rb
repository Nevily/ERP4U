class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_company, only: [:edit]
  before_action :system_options

  def new
    @company = Company.new
  end

  def edit
  end

  def old?(options)
    if options.all?{|x| x.to_i > 0 or x.blank? }     
      return true      
    else
      return false
    end
  end

  def create
    @company = current_user.build_company(company_params)
    options = [params[:company][:branch_id], params[:company][:erp_system_id], params[:company][:improve_process_id], 
                params[:company][:inventory_system_id], params[:company][:logistics_system_id], params[:company][:salary_system_id]]
    begin
      Company.transaction do
        if old?(options)
          if @company.save
            redirect_to pages_index_path, notice: 'Company was successfully created.' 
          else
            render action: 'new' 
          end
        else
          # Branch
          if params[:company][:branch_id].to_i == 0 && !params[:company][:branch_id].blank?
            branch = Branch.create(title: params[:company][:branch_id])             
            @company.branch_id = branch.id      
          end

          # ERP System
          if params[:company][:erp_system_id].to_i == 0 && !params[:company][:erp_system_id].blank?
            erp_system = ErpSystem.create(title: params[:company][:erp_system_id])             
            @company.erp_system_id = erp_system.id            
          end

          # Improve Process
          if params[:company][:improve_process_id].to_i == 0 && !params[:company][:improve_process_id].blank?
            improve_process = ImproveProcess.create(title: params[:company][:improve_process_id])             
            @company.improve_process_id = improve_process.id         
          end

          # Inventory System
          if params[:company][:inventory_system_id].to_i == 0 && !params[:company][:inventory_system_id].blank?
            inventory_system = InventarySystem.create(title: params[:company][:inventory_system_id])             
            @company.inventory_system_id = inventory_system.id           
          end

          # Logistics System
          if params[:company][:logistics_system_id].to_i == 0 && !params[:company][:logistics_system_id].blank?
            logistics_system = LogisticsSystem.create(title: params[:company][:logistics_system_id])             
            @company.logistics_system_id = logistics_system.id            
          end

          # Salary System
          if params[:company][:salary_system_id].to_i == 0 && !params[:company][:salary_system_id].blank?
            salary_system = SalarySystem.create(title: params[:company][:salary_system_id])             
            @company.salary_system_id = salary_system.id            
          end

          if @company.save
            redirect_to pages_index_path, notice: 'Company was successfully created.' 
          else
            render action: 'new'
          end
        end
      end
    rescue ActiveRecord::RecordInvalid
      render action: 'new', status: :unprocessable_entity
    end
  end

  def update
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :phone, :description, :branch_id, :province_id, 
        :erp_system_id, :inventory_system_id, :salary_system_id, :logistics_system_id, :improve_process_id)
    end

    def system_options      
      @provinces = Province.all
      @branches = Branch.find_all
      @erp_systems = ErpSystem.find_all
      @improve_processes = ImproveProcess.find_all
      @inventary_systems = InventarySystem.find_all
      @logistics_systems = LogisticsSystem.find_all
      @salary_systems = SalarySystem.find_all
    end
end