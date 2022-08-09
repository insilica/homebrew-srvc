class Srvc < Formula
    version '0.3.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "538ddcbe7516a261bc047a93ad60045a9199867e3768c7de1fbdf155ca2efcc9"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "a03e3cd5e40d4960b45c44a306cf5c9f128fbee855827c49b648a5ddb2ddba9b"
    end

    def install
        bin.install "sr"
    end
end
