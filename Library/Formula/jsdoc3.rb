require 'formula'

class Jsdoc3 < Formula
  homepage 'http://usejsdoc.org/'
  url 'https://github.com/jsdoc3/jsdoc/tarball/v3.1.0'
  sha1 'ec4ac5f5d0dc5ebc3508d1714a8fcf15ebf65983'

  def install
    libexec.install Dir['*']

    # Custom invoker that just passes on whatever arguments you give it
    system "/bin/echo '#!/bin/sh' > jsdoc"
    system "/bin/echo '#{libexec}/jsdoc $@' >> jsdoc"

    bin.install "jsdoc"
  end
end
