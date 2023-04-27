# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all #delete all rows in companies, but keep the table
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new

new_company["name"] = "Apple"
new_company.save 

puts new_company.inspect


company2 = Company.new
company2["name"] = "Amazon"
company2.save

company3 = Company.new
company3["name"] = "Twitter"
company3.save

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all
puts all_companies.inspect

# CAli_companies = Company.where({"state" => "CA"})
# puts a_companies.inspect

# puts "A Companies: #{a_companies.count}"

# 4. query companies table to find single row for Apple

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value

puts apple["name"]

# 6. update a row's column value

# amazon = Company.find_by({"name" => "Amazon"})
# puts amazon["name"]
# amazon["name"] = "Amazon2"
# amazon.save

# 7. delete a row

twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy_all

puts "There are #{Company.all.count} companies"