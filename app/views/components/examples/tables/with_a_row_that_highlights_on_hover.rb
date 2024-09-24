module Examples
  module Tables
    class WithARowThatHighlightsOnHover < Base
      def title
        "Table with a row that highlights on hover"
      end

      def example
        Table do |table|
          table.header do |header|
            header.row do |row|
              row.head {}
              row.head { "Name" }
              row.head { "Job" }
              row.head { "Favorite Color" }
            end
          end

          table.body do |body|
            people.each.with_index do |person, index|
              body.row :hover do |row|
                row.head { index + 1 }
                row.column { person.name }
                row.column { person.job }
                row.column { person.favorite_color }
              end
            end
          end
        end
      end

      private

      def people
        [
          OpenStruct.new(name: "Cy Ganderton", job: "Quality Control Specialist", favorite_color: "Blue"),
          OpenStruct.new(name: "Hart Hagerty", job: "Desktop Support Technician", favorite_color: "Purple"),
          OpenStruct.new(name: "Brice Swyre", job: "Tax Accountant", favorite_color: "Red")
        ]
      end
    end
  end
end
