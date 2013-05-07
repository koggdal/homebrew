require 'formula'

class Jsdoc3 < Formula
  homepage 'http://usejsdoc.org/'
  url 'https://github.com/koggdal/jsdoc/tarball/805cb60c703c40030b35b46c9dcabf6ee977ff70'
  sha1 '1b5d2a9d2353c5cfa410eb86dee294c6a6937490'

  def install
    libexec.install Dir['*']

    # Custom invoker that just passes on whatever arguments you give it
    system "/bin/echo '#!/bin/sh' > jsdoc"
    system "/bin/echo '#{libexec}/jsdoc $@' >> jsdoc"

    bin.install "jsdoc"
  end
end
