require 'page-object'
class Gmail
  include  PageObject
  text_field(:username, id: 'identifierId')
end