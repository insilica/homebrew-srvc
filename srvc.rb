class Srvc < Formula
    version '0.1.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "39c2b1b19a55735bf332e673411154aba102a7d4924c49180d87a75465ebc600"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "a63a06faa8d469115752cae116a18a9baaa3ee35e97015ef62b50b3e037ec331"
    end

    def install
        bin.install "sr"
    end
end
