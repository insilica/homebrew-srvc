class Srvc < Formula
    version '0.16.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "8851bcc837552f840e4b9dec74bf2c1689898cdd58fdd8e8f6d548e2246794dc"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "82fda085b4059b13c0b2c2fee4cc57714d4a4be5dbfbbaf57283f65d12c05aef"
    end

    def install
        bin.install "sr"
    end
end
