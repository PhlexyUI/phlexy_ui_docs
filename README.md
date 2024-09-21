<picture>
  <source srcset="https://github.com/user-attachments/assets/2c4d7fdb-abe7-4f71-a6d0-ef4d41b5625a" media="(prefers-color-scheme: dark)">
  <img src="https://github.com/user-attachments/assets/9afa9755-4aab-412a-9dc9-5eb2f76c12d6" width="350" alt="PhlexUI logo"><br>
</picture>

This is the repo [for the docs](https://phlexyui.com/) of PhlexyUI, a Ruby UI component library for DaisyUI using Phlex ✨

# 🔧 Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests.

# 💻 Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/PhlexyUI/phlexy_ui_docs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/phlexy_ui/blob/main/CODE_OF_CONDUCT.md).

## How to

1. Visit [the docs](https://phlexyui.com/) to see which components are still not implemented or not yet added to the docs.

2. If not implemented yet, implement it on the [PhlexyUI repo](https://github.com/PhlexyUI/phlexy_ui).

3. Add it to the docs by adding it to this repo. See [using the generators](https://github.com/PhlexyUI/phlexy_ui_docs?tab=readme-ov-file#using-the-generators) section to see how to do so.

4. Celebrate 🎉

## Using the generators

You can use the generators to make contributing easier:

**New component**

If you're adding a new component (e.g. a component that is shown as greyed out on the docs sidebar), use `bin/rails generate example_view`. This generates a new component example view and a basic component.

e.g. To add the "Menu" component under the "Navigation" category, run:

```
bin/rails generate example_view Menu Navigation
```

This will create:

- app/views/examples/menus/show_view.rb
- app/views/components/examples/menus/basic_component.rb

It will also append the component in `components.yml` file under the "Navigation" section and restart the server.

**New example**

If you're adding a new example to an existing component (e.g. a component that is visitable on the docs sidebar), use `bin/rails generate example_component`. This generates a new component example.

e.g. To add a "Responsive menu" example to the Menu component, run:

```
bin/rails generate example_component Menus::Responsive "Optional title"
```

This will create:

- app/views/components/examples/menus/responsive_component.rb

It will also append the component to the `Examples::Menus::ShowView` under the `render_examples` section.

## Note

When adding or modifying a component example's `example` method, you might encounter a `MethodSource::SourceNotFoundError`. This is a bug with the `method_source` gem used to automatically display and render the examples. To fix it, just restart your server.

# 📃 License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# ☝️ Code of Conduct

Everyone interacting in the PhlexyUI project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/phlexy_ui/blob/main/CODE_OF_CONDUCT.md).
