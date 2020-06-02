require_relative('../db/sql_runner')

class Mixer

  attr_reader :name, :type, :id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO mixers
    (name, type)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@name, @type]
    mixers = SqlRunner.run(sql, values)
    @id = mixers.first()['id'].to_i
  end

  def update()
    sql = "UPDATE mixers SET
    (name, type)
    =
    ($1, $2)
    WHERE id = $3"
    values = [@name, @type]
    SqlRunner.run(sql, values)
  end

  def Mixer.find(id)
    sql = "SELECT * FROM MIXERS WHERE id = $1"
    values = [id]
    mixer = SqlRunner.run(sql)
    return Mixer.new(mixer.first)
  end

  def Mixer.all()
    sql = "SELECT * FROM MIXERS"
    mixer = SqlRunner.run(sql)
    return mixer.map{|mixer| Mixer.new(mixer)}
  end

  def delete()
    sql = "DELETE * FROM DRINKS WHERE id = $1"
    values = [id]
    SqlRunner.run(sql)
  end

  def Mixer.delete_all()
    sql = "DELETE * FROM DRINKS"
    SqlRunner.run(sql)
  end

end
