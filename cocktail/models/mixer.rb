require_relative('../db/sql_runner')

class Mixer

  attr_reader (:name, :id)

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options ['name']
  end

  # def save()
  #   sql = "INSERT INTO MIXERS"

end
