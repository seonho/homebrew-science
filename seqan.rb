class Seqan < Formula
  homepage "http://www.seqan.de/"
  # doi "10.1186/1471-2105-9-11"
  # tag "bioinformatics"

  url "http://packages.seqan.de/seqan-library/seqan-library-1.4.2.tar.bz2"
  sha1 "2413d558c2665ae813bb0a2ab3aa57e07cc00675"

  devel do
    url "http://packages.seqan.de/seqan-library/seqan-library-2.0.0.tar.bz2"
    sha1 "872335665632ca63d115ac3042b4f1d28ab0d872"
  end

  head "http://svn.seqan.de/seqan/trunk/core"

  def install
    include.install "include/seqan"
    doc.install Dir["share/doc/seqan/*"] unless build.head?
  end
end
