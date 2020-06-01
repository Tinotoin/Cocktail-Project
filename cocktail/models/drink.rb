require_relative('../db/sql_runner')

class Drink

  attr_reader :id
  attr_accessor :name, :type, :abv

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @abv = options['abv']
  end

  def save()
    sql = "INSERT INTO drinks
      (name, type, abv)
      VALUES
      ($1, $2, $3)
      RETURNING $4"
    values = [@name, @type, @abv]
    drinks = SqlRunner.run(sql, values)
    @id = drinks.first()['id'].to_i
  end

  def Drink.find(id)
    sql = "SELECT * FROM DRINKS WHERE id = $1"
    values = [id]
    drink = SqlRunner.run(sql, values)
    return Drinks.new(drink.first)
  end

  def Drink.all()
    sql = "SELECT * FROM DRINKS"
    drink = SqlRunner.run(sql)
    return drink.map{|drink| Drink.new(drink)}
  end

  def Drink.delete()
    sql = "DELETE * FROM DRINKS WHERE id =$1"
    values = [id]
    SqlRunner.run (sql, values)
  end

  def Drink.delete_all()
    sql = "DELETE * FROM DRINKS"
    SqlRunner.run (sql)
  end

end
