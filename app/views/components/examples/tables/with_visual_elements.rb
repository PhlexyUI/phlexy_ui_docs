module Examples
  module Tables
    class WithVisualElements < Base
      include Phlex::Rails::Helpers::ImagePath

      def title
        "Table with visual elements"
      end

      # rubocop:disable Lint/NestedMethodDefinition
      def example
        def header(table)
          table.header do |head|
            head.row do |row|
              row.head do
                label do
                  render Checkbox
                end
              end
              row.head { "Name" }
              row.head { "Job" }
              row.head { "Favorite Color" }
              row.head
            end
          end
        end

        def body(table)
          table.body do |body|
            people.each do |person|
              body.row do |row|
                row.head do
                  label do
                    render Checkbox
                  end
                end

                row.cell do
                  div(class: "flex items-center gap-3") do
                    Avatar do
                      Mask :squircle, class: "h-12 w-12" do
                        img(src: person.avatar, alt: person.name)
                      end
                    end
                    div do
                      div(class: "font-bold") do
                        person.name
                      end
                      div(class: "text-sm opacity-50") do
                        person.country
                      end
                    end
                  end
                end

                row.cell do
                  plain person.company
                  Badge :ghost, :sm do
                    person.job
                  end
                end

                row.cell do
                  person.color
                end

                row.head do
                  Button :ghost, :xs do
                    "details"
                  end
                end
              end
            end
          end
        end

        def footer(table)
          table.footer do |footer|
            footer.row do |row|
              row.head
              row.head { "Name" }
              row.head { "Job" }
              row.head { "Favorite Color" }
              row.head
            end
          end
        end

        Table do |table|
          header(table)
          body(table)
          footer(table)
        end
      end
      # rubocop:enable Lint/NestedMethodDefinition

      def people
        [
          OpenStruct.new(
            name: "Hart Hagerty",
            country: "United States",
            job: "Desktop Support Technician",
            color: "Purple",
            avatar: image_path("person_1.webp")
          ),
          OpenStruct.new(
            name: "Brice Swyre",
            country: "China",
            job: "Tax Accountant",
            color: "Red",
            avatar: image_path("person_2.webp")
          ),
          OpenStruct.new(
            name: "Marjy Ferencz",
            country: "Russia",
            job: "Office Assistant I",
            color: "Crimson",
            avatar: image_path("person_3.webp")
          ),
          OpenStruct.new(
            name: "Yancy Tear",
            country: "Brazil",
            job: "Community Outreach Specialist",
            color: "Indigo",
            avatar: image_path("person_4.webp")
          )
        ]
      end
    end
  end
end
