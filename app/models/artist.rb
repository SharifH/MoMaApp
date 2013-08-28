class Artist < ActiveRecord::Base
   attr_accessible :name, :dob, :nationality, :period, :image

   has_many :paintings


   # def early_years_paintings
   #  year = self.dob + 20.years
   #  self.paintings.
end
