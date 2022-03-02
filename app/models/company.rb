require 'pry'

class Company < ActiveRecord::Base
    has_many :freebies
    # many to many; need to devs through the freebies table (JOIN)
    has_many :devs, through: :freebies


    def give_freebie(dev, item_name, value)
        # binding.pry
        # rake console
        # Company.last.give_freebie(Dev.last, "computer", 1)
        # Binding.pry session is in Company. 
        # usey = self.all.minimum(:founding_year)
        # self.find_by(founding_year: y) the self.id & company.id
        Freebie.create(item_name: item_name, value: value, company_id: self.id, dev_id: dev.id)
    end
    # c = Company.first
    # d = Dev.first
    # c.give_freebie(d, "food", 1)

    #self.all is an array
    def self.oldest_company
        # self.all.order(:founding_year).first
        y = self.all.minimum(:founding_year)
        self.find_by(founding_year: y)
    end
end
