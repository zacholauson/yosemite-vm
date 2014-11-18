require "chefspec"

PLATFORMS = {
  "arch"     => ["3.10.5-1-ARCH"],
  "mac_os_x" => ["10.9.2", "10.10"],
  "ubuntu"   => ["10.04", "12.04", "14.04", "14.10"]
}

def test_against_platforms(platforms = PLATFORMS, &block)
  platforms.each do |platform, versions|
    versions.each do |version|
      Fauxhai.mock(platform: platform, version: version)

      yield(platform, version)
    end
  end
end

