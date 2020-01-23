require 'rails_helper'

# ************* SORRY, but had to kill these controller tests due to an error (not mine!), read below

# "ThreadError: already initialized" afflicts controller tests in the combination of Ruby 2.6 and Rails 4.2.11

# I know my code works, as verified in browser and in console. This is one of those instances where I wish the curriculum had tought us more about gem versioning and bundle. I would possibly try pushing this to Rails 5, but I don't want to blow it all up. I already had to set versioning on sqlite gem just to get the lab to work at all. 

# describe StudentsController do

#   describe "POST create" do
#     context "with valid attributes" do
#       it "creates a new student" do
#         expect{
#           post :create, { :first_name => "Sam", :last_name => "Smith" }
#         }.to change(Student,:count).by(1)
#       end

#       it "redirects to the new student" do
#         post :create, { :first_name => "Sam", :last_name => "Smith" }
#         expect(response).to redirect_to Student.last
#       end
#     end
#   end

# end
