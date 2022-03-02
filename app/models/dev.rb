class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # self.freebies.filter do |freebie|
        #     freebie.item_name == item_name
        # end

        # if self.freebies.find_by(item_name: item_name) == nil ? false : true

        if self.freebies.find_by(item_name: item_name) == nil
            false
        else
            true
        end

        # self.freebies.any? do |freebie|
        #     freebie.item_name == item_name
        # end
        # dev = Dev.first
        # dev.freebies
        # dev.received_one? "cash"

        # opposite: check this
        # self.freebies.none? do |freebie|
        #     freebie.item_name == item_name
        # end
    end

    #?
    def give_away(dev, freebie)
        freebie.dev_id = dev.id
        freebie.save

        # if self.received_one? (freebie.item_name)
        #     freebie.update(dev_id: dev.id)
        # end

        # if freebie.dev == self
        #     freebie.update(dev_id: dev.id)
        # end

        # freebie.update(dev: dev) unless freebie.dev != self
        # freebie.udpate(dev: dev) if freebie.dev == self

        # freebie.dev == self ? freebie.update(dev: dev) : nil

        # d4 = Dev.find(4)
        # f = Freebie.first
        # d1 = Dev.first
        # d4.give_away(d1, f)
    end
end
