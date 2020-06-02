require_relative('../db/sql_runner')
require_relative('drink')
require_relative('mixer')

class Cocktail

  attr_reader :name, :drink_id, :mixer_id, :id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @drink_id = options['drink_id']
    @mixer_id = options['mixer_id']
  end

  def self.delete_all()
    sql ="DELETE FROM cocktails"
    SqlRunner.run
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


  def self.find(d_id, m_id)
    sql = "SELECT * FROM cocktails WHERE drink_id = $1 AND mixer_id = $2"
    values = [d_id, m_id]
    result = SqlRunner.run(sql, values).first
    cocktail = Cocktail.new(result)
    return cocktail
  end
  
  def make_cocktail(d_id, m_id)
    for cocktail in cocktails
      if drink.id == $1 && mixer.id == $2
        return "Vodka & Coke"
      else
        return "Sorry, those don't go together!"
      end
    end
  end
end
