class ExampleComponentGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  argument :title, type: :string, default: "", banner: "Title of the component"

  def check_for_show_view
    unless File.exist?(show_view_path)
      say(
        "ShowView file not found at #{show_view_path}. Component not added. " \
          "Run 'rails generate example_view " \
          "#{class_path.map(&:classify).join("::")}' to create the " \
          "ShowView file first.",
        :red
      )

      exit 1
    end
  end

  def create_component_file
    template(
      "example_component.rb.tt",
      Rails.root.join(
        "app",
        "views",
        "components",
        "examples",
        *file_path_parts,
        "#{file_name}.rb"
      )
    )

    append_component_to_show_view
  end

  private

  def file_path_parts
    class_path.map(&:underscore).map(&:pluralize)
  end

  def file_name
    name.demodulize.underscore
  end

  def component_class_name
    file_name.classify
  end

  def component_title
    (title.presence || file_name).then do |result|
      result.titleize.downcase.capitalize
    end
  end

  def append_component_to_show_view
    file_content = File.read(show_view_path)

    # Find the indentation level from an existing line in the array.
    #
    # 1. render_examples \[ matches 'render_examples ['
    # 2. \n matches the newline after the opening bracket '['
    # 3. (\s+) captures the indentation
    indentation = if file_content =~ /render_examples \[\n(\s+)/
      # Retrieve the content of the first capture group from the last match.
      # i.e. the spaces or indentation.
      Regexp.last_match(1)
    else
      "  " # Fallback to 2 spaces if no indentation found.
    end

    # The regex captures the render_examples block and the content inside the
    # array brackets.
    #
    # 1. render_examples \[: matches 'render_examples ['
    # 2. ([^\]]*) a capture group that matches everything except inside the
    #     brackets except the closing bracket ']'
    # 3. \] matches the closing bracket ']'
    # 4. /m is a multiline flag that allows the dot . to match newlines
    regex = /render_examples \[([^\]]*)\]/m

    gsub_file(show_view_path, regex) do |match|
      existing_components = match.match(regex)[1]

      # Format the new list with proper indentation.
      new_component_list = existing_components
        .split(",")
        .map(&:strip)
        .reject(&:empty?)
        .push(component_class_name)
        .map { |component| "#{indentation}#{component}" }
        .join(",\n")

      # Remove 2 spaces from the indentation for the closing bracket.
      indentation = indentation[0..-3]

      # Construct the new render_examples block with correctly indented
      # closing bracket.
      "render_examples [\n#{new_component_list}\n#{indentation}]"
    end
  end

  def show_view_path
    Rails.root.join(
      "app",
      "views",
      "examples",
      *file_path_parts,
      "show_view.rb"
    )
  end
end
