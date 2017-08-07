# Ruby Style Guide
The ruby style guide consists of the community accepted and standardized rules as outlined in these guides:
 - [bbatsov/ruby-style-guide](https://github.com/bbatsov/ruby-style-guide)
 - [bbatsov/rails-style-guide](https://github.com/bbatsov/rails-style-guide)

Addendums to these standards are to be outlined and described below, and supported with additional rubocop configurations as defined in this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aquila-style_guide'
```

And then execute:
```bash
bundle
```

Add this to your project .rubocop.yml file:

```yml
inherit_gem:
  style_guide: .rubocop.yml
```
## Addendums
#### Documentation
All documentation should be generated using the minimal comments required. Following the YARD specification. Documentation check is disabled via rubocop.

 - [Yard Guide](http://www.rubydoc.info/gems/yard/file/docs/GettingStarted.md)
```ruby
# Converts the object into textual markup given a specific format.
#
# @todo Write the function
# @param format [Symbol] the format type, `:text` or `:html`
# @return [String] the object converted into the expected format.
def to_format(format = :html)
  # format the object
end
```

#### Line Length
For the purposes of eye strain and readability 80 character line limits should be followed where reasonable. Metrics/LineLength is disabled via rubocop.

#### Percent Literal Delimiters
Percent Literal Delimiters have been adjusted to reflect encoded meaning via the wrapping symbols.
 - `()` Signifies white space is captured and used
 - `[]` Signifies white space is discarded and an array is returned
```ruby
%(echo one)   => "echo one"
%q(echo one)  => "echo one"
%Q(echo one)  => "echo one"
%i[echo one]  => [:echo, :one]
%I[echo one]  => [:echo, :one]
%r(echo one)  => /echo one/
%s(echo one)  => :"echo one"
%w[echo one]  => ["echo", "one"]
%W[echo one]  => ["echo", "one"]
%x(echo one)  => "one\n"
```
