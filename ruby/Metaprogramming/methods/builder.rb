require 'builder'
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)

xml.language {
  xml.class 'ruby'
  xml.class 'perl'
}
