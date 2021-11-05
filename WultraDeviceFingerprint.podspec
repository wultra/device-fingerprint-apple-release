Pod::Spec.new do |s|
    s.cocoapods_version = '>= 1.10'
    s.name         = "WultraDeviceFingerprint"
    s.version      = "0.0.4"
    s.summary      = "Device fingerprinting by Wultra"
    s.homepage     = "https://www.wultra.com"
    s.social_media_url = 'https://twitter.com/wultra'
    s.author       = { 'Wultra s.r.o.' => 'support@wultra.com' }
    s.source       = { :git => 'https://github.com/wultra/device-fingerprint-apple-release.git', :tag => "#{s.version}" }
    s.license      = { :type => 'proprietary', :text => <<-LICENSE
      Copyright (c) 2021, Wultra s.r.o. (www.wultra.com).
      
      All rights reserved. This source code can be used only for purposes specified
      by the given license contract signed by the rightful deputy of Wultra s.r.o.
      This source code can be used only by the owner of the license.
      
      Any disputes arising in respect of this agreement (license) shall be brought
      before the Municipal Court of Prague.
    LICENSE
    }
    s.prepare_command = <<-CMD
        ./prepare.sh 0.0.4 97f7b866c4703a554f915f475fc7bca49b7cdadc9c5245a6817009603f146130
    CMD
    s.vendored_frameworks = "WultraDeviceFingerprint.xcframework"

    s.swift_version             = '5.0'

    s.ios.deployment_target     = '9.0'
    s.tvos.deployment_target    = '9.0'
    s.watchos.deployment_target = '2.0'
    s.osx.deployment_target     = '10.15'
end