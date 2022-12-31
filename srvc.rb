class Srvc < Formula
    version '0.10.1'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "28075c6f10344be2fa996d7b23d3f7914faa19e5235bb2c8af1fb7fc48668940"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "1c8e5705f165d6421a4477217dcd439a7a9ad17c25c8dee6f13428dd93e6d0ba"
    end

    def install
        bin.install "sr"
    end
end
