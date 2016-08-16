# uswds-rails

The `uswds-rails` gem eases the use of the [US Web Design Standards](https://github.com/18F/web-design-standards)
with Ruby on Rails applications.

## Usage

**At the moment, we've confirmed that the fonts and stylesheets in this repo
work in Rails apps.  JavaScript is TBD.**

Until this gem is released, you can load it via GitHub:

```
gem 'uswds-rails', github: '18F/uswds-rails-gem'
```

Then bundle and include the stylesheets in your manifest in this order:

```
# app/assets/stylesheets/application.scss

@import 'uswds/all';
@import 'uswds_rails_overrides/all';
```

Now, all of the standard USWDS css is available in your rails app. To learn
more, visit [the docs](https://standards.usa.gov/).

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.
