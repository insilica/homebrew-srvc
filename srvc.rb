class Srvc < Formula
    version '0.17.1'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "f7c517093e290e199685800ba2448e62c8a07b51de2c479ad9d3dfd59e4b5380"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "b273051f4eae68e564ade94adaef198e471550723db66ed8f0aa9d7724219efa"
    end

    def install
        bin.install "sr"
    end
end
