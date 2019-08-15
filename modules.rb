#cant instanciate a manager as its module

module ManagmentTraining
    def yelling
        p 'work idiot'
    end
end

class Enginier
    def work
        p "working"
    end
end

class LeadEnginier < Enginier
    include ManagmentTraining
end

eng = LeadEnginier.new
eng.yelling
eng.work


