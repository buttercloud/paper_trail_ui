# PaperTrailUI
Provides an index for paper trail versions

PaperTrailUI is a mountable engine that provides an index of PaperTrail versions for all objects in the database, along with a search form that allows filters such as:
1. PaperTrail object ID
2. Date
3. Serialized Object Data 
4. Model
5. Event

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'paper_trail_ui'
```
And then execute:
```bash
$ bundle
```
Or install it yourself as:
```bash
$ gem install paper_trail_ui
```

## Requirements

Ruby `>= 1.9.3`

RSpec

## Usage

Add this line to your routes
```ruby
  mount PaperTrailUi::Engine => "/paper_trail_ui", :as => "paper_trail_ui"
```
And you're ready to go! Just navigate to /paper_trail_ui/reports

## Contributing

* Fork it
* Create your feature branch
* Add your changes, and add a test for the changes.
* Run tests using

```bash
  $ rspec spec
```
* Make sure everything is passing
* Push to the branch
* Create a new Pull Request

## License

Copyright (c) 2017 ButterCloud LLC.

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
