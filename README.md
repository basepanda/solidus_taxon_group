# Solidus Taxon Group

Easily create and manage groups of taxons, irrespective of their parent or children taxons/taxonomies and control the position of taxons in their taxon groups.
Useful if you need flexible taxon usage, for example a group of taxons for featured categories from different parent taxon/taxonomies.

---

## Usage

```erb
<% navigation_taxon_group = Spree::TaxonGroup.find_by_key('navigation') %>
<% cache [I18n.locale, navigation_taxon_group] do %>
  <%= navigation_taxon_group.taxons.map do |taxon|
        '<li>' + link_to(taxon.name, seo_url(taxon)) + '</li>'
      end.join("\n").html_safe
  %>
<% end %>
```

---

## Basic Installation

Add to your `Gemfile`:

```ruby
gem 'solidus_taxon_group'
```

Run:

```sh
bundle && bundle exec rails g solidus_taxon_group:install
```

That's it!

---

## Contributing

See corresponding [guidelines][1] and check out the [issues][2].

---

Copyright (c) 2016 [James Whelton][3] and [contributors][4], released under the [New BSD License][5]

[1]: https://github.com/whelton/solidus_taxon_group/blob/master/CONTRIBUTING.md
[2]: https://github.com/whelton/solidus_taxon_group/issues
[3]: https://github.com/whelton
[4]: https://github.com/whelton/solidus_taxon_group/graphs/contributors
[5]: https://github.com/whelton/solidus_taxon_group/blob/master/LICENSE.md
