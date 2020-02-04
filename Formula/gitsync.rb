class Gitsync < Formula
  desc "gitsync is a tool to keep local git repos in sync with remote git servers."
  homepage "https://github.com/rdkr/gitsync"
  url "https://github.com/rdkr/gitsync/tarball/5eb4b52811db8a7e31ad0f287af3caec58712f72"
  version "5eb4b52811db8a7e31ad0f287af3caec58712f72"
  sha256 "95c9c0574357c000dbf673a6afeb2170e32fbd672fa52118b552bc20e9334b0a"

  depends_on "go" => :build

  def install
    system "go build"
    bin.install "gitsync"
  end

  test do
    system "gitsync --help"
  end

end
