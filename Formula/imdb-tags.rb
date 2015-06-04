require 'formula'

class ImdbTags < Formula
  homepage "http://imdb-tags.dillonhafer.com"
  url "https://github.com/dillonhafer/imdb-tags/archive/v0.4.2.tar.gz"
  sha1 "83e6ab490b9664da7ae73ec2deaa31c4cd3f2d2c"

  depends_on 'go' => :build

  def install
    ENV["GOPATH"] = "#{buildpath}/Godeps/_workspace"
    system("go build -o imdb-tags")
    bin.install("imdb-tags")
  end
end
