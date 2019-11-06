class Ingredient
    
    attr_reader :ingredient_name, :calorie_count
    @@all = []
    
    def initialize(ingredient_name, calorie_count)
        @ingredient_name = ingredient_name
        @calorie_count = calorie_count
        @@all << self
    end

    def dessert
        Dessert.all.find do |dessert|
            dessert.ingredient == self
        end
    end
    
    def bakery
        Bakery.all.find do |bakery|
            bakery.dessert.ingredient == self
        end
    end

    def self.find_all_by_name(ingredient)
        arr = []
        Ingredient.all.each do |ingredient_obj|
            if ingredient_obj.ingredient_name == ingredient
                arr << ingredient_obj.ingredient_name
            end
        end
        arr
    end

    def self.all
        @@all
    end
end