class Member

    attr_reader :name, :power, :bio

    @@all = []

    def self.all 
        @@all
    end

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        self.save
    end

    def save
        self.class.all << self
    end
end