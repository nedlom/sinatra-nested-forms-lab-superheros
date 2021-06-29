class Team
    attr_reader :name, :motto

    @@all = []

    def self.all 
        @@all
    end

    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
        self.save
    end

    def save
        self.class.all << self
    end
end