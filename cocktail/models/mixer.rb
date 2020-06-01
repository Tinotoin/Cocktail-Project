require_relative('../db/sql_runner')

class Mixer

  attr_reader (:name, :id)

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options ['name']
  end

  def save()
    sql = "INSERT INTO mixers
    (
      name, type
      )
      VALUES
      (
        $1, $2
      )
        RETURNING $3"
    values = [@name, @type]
    mixers = SqlRunner.run(sql, values)
    @id = mixers.first()['id'].to_i
  end

end
