class Pokemon
  attr_accessor :name,:type,:db, :id

  def initialize(name,type,db,id)
    @name = name,
    @type = type,
    @db = db,
    @id = id
  end

  def self.save(name , type , db)
    db.execute("INSERT INTO pokemon (name,type) VALUES (?, ?)" ,name, type)
  end

  def self.find(id , db)
    db.execute("SELECT*FROM pokemon WHERE pokemon.id = id")
  end

end
# describe ".find" do
#   it 'finds a pokemon from the database' do
#     Pokemon.save("Pikachu", "fire", @db)
#
#     pikachu_from_db = Pokemon.find(1, @db)
#     expect(pikachu_from_db).to eq([[1, "Pikachu", "fire"]])
#   end
# end
