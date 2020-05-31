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
    (
      name, type, abv
      )
      VALUES
      [
        $1, $2, $3
      ]
        RETURNING id"
    values = [@name, @type, @abv]
    drinks = SqlRunner.run(sql, values)
    @id = drinks.first()['id'].to_i
  end
end
