class Component
  include ActiveModel::Model

  attr_accessor :name, :category, :enabled
  attr_reader :id

  @@registry = {}

  def initialize(name:, **)
    @id = name.parameterize

    super
  end

  def self.register(name, category:, enabled:)
    Category.from_name(category).then do |category|
      new_component = new(name:, category:, enabled:)

      category.components << new_component
      @@registry[name] = new_component
    end
  end

  def self.from_name(name)
    @@registry[name]
  end

  def self.all
    @@registry
  end

  def ==(other)
    id == other.id
  end

  def to_param
    id
  end

  # Actions
  with_options category: "Actions", enabled: true do
    register "Button"
    register "Dropdown"
  end

  with_options category: "Actions", enabled: false do
    register "Modal"
    register "Swap"
    register "Theme Controller"
  end

  # Data display
  with_options category: "Data display", enabled: true do
    register "Badge"
    register "Card"
  end

  with_options category: "Data display", enabled: false do
    register "Accordion"
    register "Avatar"
    register "Carousel"
    register "Chat Bubble"
    register "Collapse"
    register "Countdown"
    register "Diff"
    register "Kbd"
    register "Stat"
    register "Table"
    register "Timeline"
  end

  # Data Input
  with_options category: "Data Input", enabled: true do
    register "Checkbox"
    register "File Input"
    register "Radio"
    register "Range"
    register "Rating"
    register "Select"
    register "Text input"
    register "Textarea"
    register "Toggle"
  end

  with_options category: "Data Input", enabled: false do
  end

  # Layout
  with_options category: "Layout", enabled: true do
  end

  with_options category: "Layout", enabled: false do
    register "Artboard"
    register "Divider"
    register "Drawer"
    register "Footer"
    register "Hero"
    register "Indicator"
    register "Join (group items)"
    register "Mask"
    register "Stack"
  end

  # Mockup
  with_options category: "Mockup", enabled: true do
  end

  with_options category: "Mockup", enabled: false do
    register "Browser"
    register "Code"
    register "Phone"
    register "Window"
  end

  # Feedback
  with_options category: "Feedback", enabled: true do
    register "Loading"
  end

  with_options category: "Feedback", enabled: false do
    register "Alert"
    register "Progress"
    register "Radial Progress"
    register "Skeleton"
    register "Toast"
    register "Tooltip"
  end

  # Navigation
  with_options category: "Navigation", enabled: true do
    register "Menu"
    register "Link"
  end

  with_options category: "Navigation", enabled: false do
    register "Breadcrumbs"
    register "Bottom Navigation"
    register "Navbar"
    register "Pagination"
    register "Steps"
    register "Tab"
  end
end
