class Srvc < Formula
    version '0.17.0'
    desc "Sysrev version control."
    homepage "https://github.com/insilica/rs-srvc"

    if OS.mac?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "21adf9ba20c07ef86287ae9b4a7166a46df0fbfcae3ea02dc24a897e30b1001f"
    elsif OS.linux?
        url "https://github.com/insilica/rs-srvc/releases/download/v#{version}/srvc-v#{version}-x86_64-unknown-linux-musl.tar.gz"
        sha256 "0f6ad02784d8f106fae336c064cbece30d62fabd8dd23056d644cc7b82d0afed"
    end

    def install
        bin.install "sr"
    end
end
