Pod::Spec.new do |s|
  s.name              = "Puppy"
  s.version           = "0.1.2"
  s.summary           = "A flexible logging library written in Swift"
  s.homepage          = "https://github.com/sushichop/Puppy"
  s.license           = { :type => "MIT", :file => "LICENSE" }
  s.author            = { "Koichi Yokota" => "sushifarm2012@gmail.com" }

  s.osx.deployment_target     = "10.12"
  s.ios.deployment_target     = "10.0"
  s.tvos.deployment_target    = "10.0"
  s.watchos.deployment_target = "3.0"

  s.source            = { :git => "https://github.com/sushichop/Puppy.git", :tag => "#{s.version}" }
  
  s.default_subspec   = "Default"
  s.preserve_paths    = "Sources/CPuppy/**/*"

  s.subspec "Default" do |default|
    default.dependency "Puppy/Core"
    default.dependency "Logging", "~> 1.4"
  end

  s.subspec "Core" do |core|
    core.source_files = "Sources/Puppy/**/*.{swift}"
  end

  s.cocoapods_version = ">= 1.7.0"
  s.swift_versions    = ["5.0"]
end
