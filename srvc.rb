class Srvc < Formula
    version '0.10.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "91a02b4fff0cdc3b581f19b7c7a428e9f34244b3aa55cd252fd41e19a250d795"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "bd13ccfa55d2dee7da0419349ea93c9cf53712c4404bd743de63edf2e271fabc"
    end

    def install
        bin.install "sr"
    end
end
