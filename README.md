# Mnrbcop

MedicalNoteのRuboCopファイル用Gem

## Installation

あなたのアプリの Gemfileに以下を追加:

```ruby
group :development, :test do

  # rubocopそのものは一緒に入れるのでコメントアウト推奨
  #gem 'rubocop', '~> 0.52.1'
  gem 'mnrbcop' , :git => 'https://github.com/medicalnote/mnrbcop.git'

end

```


## Usage

`.rubocop.yml` に以下を追加:

```yaml
inherit_gem:
  mnrbcop: "config/rubocop.yml"
```

## Development

`/config/rubocop.yml` のファイルを適宜修正してください。


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

