module Examples
  module Tables
    class XsComponent < Base
      def title
        "Table xs"
      end

      def example
        Table :xs do |table|
          table.header do |header|
            header.row do |row|
              row.head
              row.head { "Name" }
              row.head { "Job" }
              row.head { "Favorite Color" }
            end
          end

          table.body do |body|
            people.each.with_index do |person, index|
              body.row do |row|
                row.head { index + 1 }
                row.column { person.name }
                row.column { person.job }
                row.column { person.favorite_color }
              end
            end
          end

          table.footer do |footer|
            footer.row do |row|
              row.head
              row.head { "Name" }
              row.head { "Job" }
              row.head { "Favorite Color" }
            end
          end
        end
      end

      private

      def people
        [
          OpenStruct.new(name: "Cy Ganderton", job: "Quality Control Specialist", favorite_color: "Blue"),
          OpenStruct.new(name: "Hart Hagerty", job: "Desktop Support Technician", favorite_color: "Purple"),
          OpenStruct.new(name: "Brice Swyre", job: "Tax Accountant", favorite_color: "Red"),
          OpenStruct.new(name: "Marjy Ferencz", job: "Office Assistant I", favorite_color: "Crimson"),
          OpenStruct.new(name: "Yancy Tear", job: "Community Outreach Specialist", favorite_color: "Indigo"),
          OpenStruct.new(name: "Irma Vasilik", job: "Editor", favorite_color: "Purple"),
          OpenStruct.new(name: "Meghann Durtnal", job: "Staff Accountant IV", favorite_color: "Yellow"),
          OpenStruct.new(name: "Sammy Seston", job: "Accountant I", favorite_color: "Crimson"),
          OpenStruct.new(name: "Lesya Tinham", job: "Safety Technician IV", favorite_color: "Maroon"),
          OpenStruct.new(name: "Zaneta Tewkesbury", job: "VP Marketing", favorite_color: "Green"),
          OpenStruct.new(name: "Andy Tipple", job: "Librarian", favorite_color: "Indigo"),
          OpenStruct.new(name: "Sophi Biles", job: "Recruiting Manager", favorite_color: "Maroon"),
          OpenStruct.new(name: "Florida Garces", job: "Web Developer IV", favorite_color: "Purple"),
          OpenStruct.new(name: "Maribeth Popping", job: "Analyst Programmer", favorite_color: "Aquamarine"),
          OpenStruct.new(name: "Moritz Dryburgh", job: "Dental Hygienist", favorite_color: "Crimson"),
          OpenStruct.new(name: "Reid Semiras", job: "Teacher", favorite_color: "Green"),
          OpenStruct.new(name: "Alec Lethby", job: "Teacher", favorite_color: "Khaki"),
          OpenStruct.new(name: "Aland Wilber", job: "Quality Control Specialist", favorite_color: "Purple"),
          OpenStruct.new(name: "Teddie Duerden", job: "Staff Accountant III", favorite_color: "Aquamarine"),
          OpenStruct.new(name: "Lorelei Blackstone", job: "Data Coordiator", favorite_color: "Red")
        ]
      end
    end
  end
end
