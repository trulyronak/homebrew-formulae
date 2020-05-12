require "language/node"

class Gitc < Formula
  desc "Streamlined Git. Saving Precious Key Strokes and Enter Keys"
  homepage "https://github.com/trulyronak/gitc"
  url "https://registry.npmjs.org/@trulyronak/gitc/-/gitc-0.0.0.tgz"
  version "0.0.0"
  sha256 "fd8a9f41e20f4d46d5d88e277394c1d2a48a5829851eaf40d578af4161f7c14a"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
