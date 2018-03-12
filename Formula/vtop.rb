require "language/node"

class Vtop < Formula
  desc "Command-line graphical activity monitor"
  homepage "https://parall.ax/vtop"
  url "https://registry.npmjs.org/vtop/-/vtop-0.5.7.tgz"
  sha256 "697856d427a440416b845d300f83f9ac812e1ae5c8fae1eec498cca71f179e46"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/vtop", "--quit-after", "0.1"
  end
end
