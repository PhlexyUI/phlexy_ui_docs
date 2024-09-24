module Examples
  module Tables
    class WithPinnedRowsComponent < Base
      def title
        "Table with pinned rows"
      end

      def example
        section class: "h-96 overflow-x-auto" do
          Table :pin_rows do |table|
            superheroes_by_letter.each do |letter, superheroes|
              table.header do |header|
                header.row do |row|
                  row.head { letter }
                end
              end

              table.body do |body|
                superheroes.each do |superhero|
                  body.row do |row|
                    row.column { superhero }
                  end
                end
              end
            end
          end
        end
      end

      private

      def superheroes_by_letter
        [
          "Ant-Man",
          "Aquaman",
          "Asterix",
          "The Atom",
          "The Avengers",
          "Batgirl",
          "Batman",
          "Batwoman",
          "Black Canary",
          "Black Panther",
          "Captain America",
          "Captain Marvel",
          "Catwoman",
          "Conan the Barbarian",
          "Daredevil",
          "The Defenders",
          "Doc Savage",
          "Doctor Strange",
          "Elektra",
          "Fantastic Four",
          "Ghost Rider",
          "Green Arrow",
          "Green Lantern",
          "Guardians of the Galaxy",
          "Hawkeye",
          "Hellboy",
          "Incredible Hulk",
          "Iron Fist",
          "Iron Man",
          "Marvelman",
          "Robin",
          "The Rocketeer",
          "The Shadow",
          "Spider-Man",
          "Sub-Mariner",
          "Supergirl",
          "Superman",
          "Teenage Mutant Ninja Turtles",
          "Thor",
          "The Wasp",
          "Watchmen",
          "Wolverine",
          "Wonder Woman",
          "X-Men",
          "X-Men",
          "Zatanna",
          "Zatara"
        ].group_by { |superhero| superhero.first }
      end
    end
  end
end
