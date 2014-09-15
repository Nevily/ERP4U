# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Users

user = User.new
user.username = 'user'
user.email = 'user@erp4u.com'
user.password = '12345678'
user.password_confirmation = '12345678'
user.save!

#Admins

admin = Admin.new
admin.username = 'admin'
admin.email = 'admin@erp4u.com'
admin.password = '12345678'
admin.password_confirmation = '12345678'
admin.save!

#Branches

branches = [
  [ "automatisering", true ],
  [ "handel", true ],
  [ "produktie", true ],
  [ "horeca", true],
  [ "transport", true],
  [ "flowers & food", true],
  [ "vastgoed", true],
  [ "zorg", true],
  [ "industrie", true ],
  [ "financiele sector", true ],
  [ "autobranche", true],
  [ "telefonie", true ],
  [ "ict", true],
  [ "beveiliging", true],
  [ "politie", true]
]

branches.each do |title, approved|
  Branch.create( title: title, approved: approved )
end

#Provinces

provinces = [
  [ "Drenthe", true ],
  [ "Flevoland", true ],
  [ "Friesland", true ],
  [ "Gelderland", true],
  [ "Groningen", true],
  [ "Limburg", true],
  [ "Noord-Brabant", true],
  [ "Noord-Holland", true],
  [ "Overijssel", true ],
  [ "Utrecht", true ],
  [ "Zeeland", true],
  [ "Zuid-Holland", true ]
]

provinces.each do |title, approved|
  Province.create( title: title, approved: approved )
end

#ERP Systems

erp_systems = [
  [ "Abas", true ],
  [ "Accountview", true ],
  [ "AFAS", true ],
  [ "AGP", true],
  [ "Ascensio", true],
  [ "Asecom", true],
  [ "Avanade", true],
  [ "Bemet", true],
  [ "Cadran", true ],
  [ "Centric", true ],
  [ "Codeless", true],
  [ "Corpex", true ],
  [ "Dimensys", true ],
  [ "Din solutions", true ],
  [ "Microsoft Dynamics", true ],
  [ "ESI", true],
  [ "Evologics", true],
  [ "ERP FastForward", true],
  [ "Exact", true],
  [ "Globis", true],
  [ "Fujitsu", true ],
  [ "IFS", true ],
  [ "Infor", true],
  [ "Inventive", true ],
  [ "Isah", true ],
  [ "Itelligence", true ],
  [ "Newway", true ],
  [ "Pantheon automatisering", true],
  [ "Prodin", true],
  [ "Prodware", true],
  [ "Pulse", true],
  [ "Pylades", true],
  [ "Quartess", true ],
  [ "Reflexsystems", true ],
  [ "Ridder", true],
  [ "SAP", true ],
  [ "SBA", true ],
  [ "SW solutions", true ],
  [ "Trimergo", true ],
  [ "Visma", true],
  [ "Xperit", true]
]

erp_systems.each do |title, approved|
  ErpSystem.create( title: title, approved: approved )
end

#Inventary Systems

inventary_systems = [
  [ "Accountview", true ],
  [ "Inconto", true ],
  [ "Visma", true ],
  [ "Inotec", true],
  [ "wmssystemen", true],
  [ "MPS food logistic", true],
  [ "Wics solutions", true],
  [ "Connor", true],
  [ "Amplus", true ],
  [ "Art systems", true ],
  [ "Infolog Benelux", true]
]

inventary_systems.each do |title, approved|
  InventarySystem.create( title: title, approved: approved )
end

#Salary Systems

salary_systems = [
  [ "ADP", true ],
  [ "Afas", true ],
  [ "Raet", true ],
  [ "Incomme", true],
  [ "Cobra", true],
  [ "Unit4", true],
  [ "Visma", true]
]

salary_systems.each do |title, approved|
  SalarySystem.create( title: title, approved: approved )
end

#Logistics Systems

logistics_systems = [
  [ "VDL systems", true ],
  [ "Inther LC", true ],
  [ "SSI Schäfer", true ],
  [ "Unikon", true],
  [ "logistiek.nl", true]
]

logistics_systems.each do |title, approved|
  LogisticsSystem.create( title: title, approved: approved )
end

#Improve Processes

improve_processess = [
  [ "Lean Manufacturing", true ],
  [ "TPM", true ],
  [ "Six Sigma", true ]
]

improve_processess.each do |title, approved|
  ImproveProcess.create( title: title, approved: approved )
end