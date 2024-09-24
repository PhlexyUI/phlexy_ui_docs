module Examples
  module Tables
    class WithPinnedRowsAndPinnedColsComponent < Base
      def title
        "Table with pinned rows and pinned cols"
      end

      def example
        section class: "h-96 w-8/12 overflow-x-auto" do
          Table :xs, :pin_rows, :pin_cols do |table|
            table.header do |header|
              header.row do |row|
                row.head
                row.column { "Name" }
                row.column { "Job" }
                row.column { "Company" }
                row.column { "Location" }
                row.column { "Last Login" }
                row.column { "Favorite Color" }
                row.head
              end
            end

            table.body do |body|
              people.each.with_index do |person, index|
                body.row do |row|
                  row.head { index + 1 }
                  row.column { person.name }
                  row.column { person.job }
                  row.column { person.company }
                  row.column { person.location }
                  row.column { person.last_login }
                  row.column { person.favorite_color }
                  row.head { index + 1 }
                end
              end
            end

            table.footer do |footer|
              footer.row do |row|
                row.head
                row.column { "Name" }
                row.column { "Job" }
                row.column { "Company" }
                row.column { "Location" }
                row.column { "Last Login" }
                row.column { "Favorite Color" }
                row.head
              end
            end
          end
        end
      end

      private

      def people
        [
          {name: "Cy Ganderton", job: "Quality Control Specialist", company: "Littel, Schaden and Vandervort", location: "Canada", last_login: "12/16/2020", favorite_color: "Blue"},
          {name: "Hart Hagerty", job: "Desktop Support Technician", company: "Zemlak, Daniel and Leannon", location: "United States", last_login: "12/5/2020", favorite_color: "Purple"},
          {name: "Brice Swyre", job: "Tax Accountant", company: "Carroll Group", location: "China", last_login: "8/15/2020", favorite_color: "Red"},
          {name: "Marjy Ferencz", job: "Office Assistant I", company: "Rowe-Schoen", location: "Russia", last_login: "3/25/2021", favorite_color: "Crimson"},
          {name: "Yancy Tear", job: "Community Outreach Specialist", company: "Wyman-Ledner", location: "Brazil", last_login: "5/22/2020", favorite_color: "Indigo"},
          {name: "Irma Vasilik", job: "Editor", company: "Wiza, Bins and Emard", location: "Venezuela", last_login: "12/8/2020", favorite_color: "Purple"},
          {name: "Meghann Durtnal", job: "Staff Accountant IV", company: "Schuster-Schimmel", location: "Philippines", last_login: "2/17/2021", favorite_color: "Yellow"},
          {name: "Sammy Seston", job: "Accountant I", company: "O'Hara, Welch and Keebler", location: "Indonesia", last_login: "5/23/2020", favorite_color: "Crimson"},
          {name: "Lesya Tinham", job: "Safety Technician IV", company: "Turner-Kuhlman", location: "Philippines", last_login: "2/21/2021", favorite_color: "Maroon"},
          {name: "Zaneta Tewkesbury", job: "VP Marketing", company: "Sauer LLC", location: "Chad", last_login: "6/23/2020", favorite_color: "Green"},
          {name: "Andy Tipple", job: "Librarian", company: "Hilpert Group", location: "Poland", last_login: "7/9/2020", favorite_color: "Indigo"},
          {name: "Sophi Biles", job: "Recruiting Manager", company: "Gutmann Inc", location: "Indonesia", last_login: "2/12/2021", favorite_color: "Maroon"},
          {name: "Florida Garces", job: "Web Developer IV", company: "Gaylord, Pacocha and Baumbach", location: "Poland", last_login: "5/31/2020", favorite_color: "Purple"},
          {name: "Maribeth Popping", job: "Analyst Programmer", company: "Deckow-Pouros", location: "Portugal", last_login: "4/27/2021", favorite_color: "Aquamarine"},
          {name: "Moritz Dryburgh", job: "Dental Hygienist", company: "Schiller, Cole and Hackett", location: "Sri Lanka", last_login: "8/8/2020", favorite_color: "Crimson"},
          {name: "Reid Semiras", job: "Teacher", company: "Sporer, Sipes and Rogahn", location: "Poland", last_login: "7/30/2020", favorite_color: "Green"},
          {name: "Alec Lethby", job: "Teacher", company: "Reichel, Glover and Hamill", location: "China", last_login: "2/28/2021", favorite_color: "Khaki"},
          {name: "Aland Wilber", job: "Quality Control Specialist", company: "Kshlerin, Rogahn and Swaniawski", location: "Czech Republic", last_login: "9/29/2020", favorite_color: "Purple"},
          {name: "Teddie Duerden", job: "Staff Accountant III", company: "Pouros, Ullrich and Windler", location: "France", last_login: "10/27/2020", favorite_color: "Aquamarine"},
          {name: "Lorelei Blackstone", job: "Data Coordinator", company: "Witting, Kutch and Greenfelder", location: "Kazakhstan", last_login: "6/3/2020", favorite_color: "Red"}
        ].map do |person|
          OpenStruct.new(person)
        end
      end
    end
  end
end
