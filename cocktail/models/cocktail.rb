require_relative('../db/sql_runner')
require_relative('drink')
require_relative('mixer')

class Cocktail

  attr_reader :name, :drink_id, :mixer_id,:id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @drink = options['drink_id']
    @mixer = options['mixer_id']
  end

  def save()
    sql = "INSERT INTO cocktails
           (name, drink_id, mixer_id)
           VALUES
           ($1, $2, $3)
           RETURNING id"
    values = [@name, @drink_id, @mixer_id]
    cocktails = SqlRunner.run(sql, values)
    @id = cocktails.first()['id'].to_i
  end


  def Cocktail.find(m_id, d_id)
    sql = "SELECT * FROM cocktails WHERE 'drink_id' = $1 AND 'mixer_id' = $2"
          values = [@m_id, @d_id]
    cocktails = SqlRunner.run(sql, values)
    @id = cocktails.first()['id'].to_i
  end


end
