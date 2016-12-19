class Parent < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :occupation
	validates_presence_of :salary
end
