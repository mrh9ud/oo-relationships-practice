class Dessert
    
    attr_reader :dessert_name, :ingredient
    @@all = []
    
    def initialize(dessert_name, ingredient)
        @dessert_name = dessert_name
        @ingredient = ingredient
        @@all << self
    end

    def ingredients
        dessert_ingr = Dessert.all.select do |dessert|
            dessert == self
        end
        dessert_ingr.collect do |dessert|
            dessert.ingredient
        end
    end

    def bakery
        bakery_obj = Bakery.all.select do |bakery|
            bakery.dessert == self
        end
    end

    def calories
        sum = 0
        self.ingredients.each do |ingredient|
            ingredient.each do |inner|
                sum += inner.calorie_count
            end
        end
        sum
    end

    def self.all
        @@all
    end
end