class Srvc < Formula
    version '0.7.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "3e424c858eb258c4ca83ff22579ac4329d4abd0ea3403dd01ac037300a78a64b"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "04f8e7fdc512aa00b93bda7f9303ca4189ba277b50c31f1a3ea8e5c9960a7ed5"
    end

    def install
        bin.install "sr"
    end
end
