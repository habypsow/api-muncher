class Recipe
  attr_reader :name, :image, :url, :r_yield, :diet_labels, :health_labels, :ingredients, :calories, :nutrients
  attr_accessor :uri

  


  def initialize(name, uri, image, options = {} )
    #  url=nil, r_yield=nil, diet_labels=nil, health_labels=nil, ingredients=nil, calories=nil, nutrients=nil)
    raise ArgumentError if name == nil || name == "" || uri == nil || uri == ""

    @name = name
    @uri = uri.gsub('#','%23')
    @image = image
    @url = options[:url]
    @r_yield = options[:r_yield].to_i
    @diet_labels = options[:diet_labels]
    @health_labels = options[:health_labels]
    @ingredients = options[:ingredients]
    @calories = options[:calories].to_i
    @nutrients = options[:nutrients]
  end
end

# uri, name, image, img_source, url, r_yield, diet_labels, health_labels, ingredients, calories)
