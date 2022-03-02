class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company

    def print_details
        binding.pry
        #Freebie.first.print_details
        # then, test out the code in pry: self.dev.name
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end
    # f1 = Freebie.first
    # f1.print_details
end
