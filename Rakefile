# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'rubygems'
require 'motion-cocoapods'

begin
  require 'bundler'  
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'LookBackExample'
  
  setConfig(app)  
  loadFrameWorks(app)
  loadPods(app)
end

def setConfig(app)
  app.interface_orientations = [:portrait]
  app.sdk_version = "7.0"
end


def loadFrameWorks(app)
  app.frameworks << 'SystemConfiguration'
  app.frameworks << 'MessageUI'
  app.frameworks << 'CoreData'
  app.frameworks << 'QuartzCore'
  app.frameworks << 'Security'
  app.frameworks << 'StoreKit'
  app.frameworks << 'AssetsLibrary'
  app.frameworks << 'AdSupport'
  app.frameworks << 'Accelerate'
  app.frameworks << 'AVFoundation'
  app.frameworks << 'AudioToolbox'
  app.frameworks << 'CoreVideo'
  app.frameworks << 'CoreMedia'
  app.frameworks << 'SystemConfiguration'
  app.frameworks << 'MediaPlayer'
  app.frameworks << 'LookBack'
end

def loadPods(app)
  app.pods do
    pod 'Lookback'
  end
end