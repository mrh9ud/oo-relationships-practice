class Bakery
    
    attr_reader :bakery_name, :dessert
    @@all = []
    
    def initialize(bakery_name, dessert)
        @bakery_name = bakery_name
        @dessert = dessert
        @@all << self
    end

    def desserts
        self.dessert
    end

    def ingredients
        self.desserts.map do |dessert|
            arr = dessert.ingredient.flatten
        end
    end

    def average_calories
        sum = 0
        self.ingredients.map do |ingredient|
            ingredient.each do |inner|
                sum += inner.calorie_count
            end
        end
        result = sum/(@@all.length)
        result
    end

    def shopping_list
        arr = []
        self.ingredients.each do |ingredient|
            ingredient.each do |inner|
                arr << inner.ingredient_name
            end
        end
        arr
    end

    def self.all
        @@all
    end
end