This is the repo [for the docs](https://phlexyui.com/) of PhlexyUI, a Ruby UI component library for DaisyUI using Phlex ✨

# 🔧 Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests.

# 💻 Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/PhlexyUI/phlexy_ui_docs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/phlexy_ui/blob/main/CODE_OF_CONDUCT.md).

1. Visit [the docs](https://phlexyui.com/) to see which components are still not implemented or not yet added to the docs.

2. If not implemented yet, implement it on the [PhlexyUI repo](https://github.com/PhlexyUI/phlexy_ui).

3. After your PR is merged, add it to the docs by adding it to this repo and making sure to add it to the `components.yml` file.

4. Celebrate 🎉

## Using the generators

You can use the generators to make your life easier:

**New component**

If you're adding a new component, use `bin/rails generate example_view`. This generates a new component example view and a basic component.

e.g. `bin/rails generate example_view Menu Navigation`

This will create:

- app/views/examples/menus/show_view.rb
- app/views/components/examples/menus/basic_component.rb

It will also append the component in `components.yml` file under the "Navigation" section and restart the server.

**New example**

If you're adding a new example to an existing component, use `bin/rails generate example_component`. This generates a new component example.

e.g. `bin/rails generate example_component Cards::Responsive "Optional title"`

This will create:

- app/views/components/examples/cards/responsive_component.rb

# 📃 License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# ☝️ Code of Conduct

Everyone interacting in the PhlexyUI project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/phlexy_ui/blob/main/CODE_OF_CONDUCT.md).
