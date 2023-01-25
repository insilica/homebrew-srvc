class Srvc < Formula
    version '0.13.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "9b83791c4301000ae3a9877b50b2a14ad9f2a4f901d04244c44fcb7f2ddc48ac"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "a46ed928960f424e93b14dc3594e8b18eb6b35fd842b7b5a4a0db0ce93a15951"
    end

    def install
        bin.install "sr"
    end
end
