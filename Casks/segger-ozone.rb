cask "segger-ozone" do
  version "3.20c"
  sha256 "711dc249ab4753dda095a22208bfddd2dc736be9dc376a499d8e238cdc61825d"

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"
  appcast "https://www.segger.com/downloads/jlink/ReleaseNotes_Ozone.html"
  name "Ozone"
  homepage "https://www.segger.com/products/development-tools/ozone-j-link-debugger"

  pkg "Ozone_MacOSX_V#{version.no_dots}_Universal.pkg"

  uninstall quit:    "com.yourcompany.Ozone",
            pkgutil: "com.segger.pkg.Ozone"

  zap trash: [
    "~/Library/Application Support/SEGGER",
    '~/Library/Application Support/SEGGER\\RTTViewer.ini',
    "~/Library/Saved Application State/com.segger.JFlashLite.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState",
    "~/Library/Saved Application State/com.yourcompany.Ozone.savedState",
  ]
end
