class Srvc < Formula
    version '0.2.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "6e93717d42b8b596100943e32b84b82eae00e7b9ced997b893fc2e9562decbbf"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "776eedff81472daa228dfa20fb95d6235afdea66ade14b71846f6393056c29ea"
    end

    def install
        bin.install "sr"
    end
end
