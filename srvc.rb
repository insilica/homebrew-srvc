class Srvc < Formula
    version '0.11.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "3ac9541bf8446fd40a2be46a4de81e95bab77fc8d9493d82632742ce9342931d"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "6dcd370c9f6392ae0c3cfcf59588312f60e5556a4c6db06ff10bf43f3a0d570a"
    end

    def install
        bin.install "sr"
    end
end
