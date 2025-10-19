Pod::Spec.new do |spec|
  spec.name         = "NativeScriptSDK"
  spec.version      = "8.8.0"
  spec.summary      = "NativeScript iOS Runtime SDK"
  spec.description  = <<-DESC
                      NativeScript iOS Runtime SDK for embedding NativeScript applications in native iOS projects.
                      This SDK provides the core runtime and embedding capabilities for NativeScript v8.
                      DESC

  spec.homepage     = "https://github.com/yourusername/nativescript-ios-cocoapods"
  spec.license      = { :type => "MIT", :text => <<-LICENSE
    Copyright OpenJS Foundation and other contributors, https://openjsf.org

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
    LICENSE
  }

  spec.author       = { "NativeScript Team" => "support@nativescript.org" }
  spec.source       = { :git => "https://github.com/yourusername/nativescript-ios-cocoapods.git", :tag => "#{spec.version}" }

  spec.platform     = :ios, "13.0"
  spec.ios.deployment_target = "13.0"

  spec.vendored_frameworks = "NativeScript.xcframework"
  
  # Include NativeScriptEmbedder source files
  spec.source_files = "Sources/**/*.{h,m,swift}"
  spec.public_header_files = "Sources/**/*.h"
  
  # Module map for proper Swift/ObjC interop
  spec.module_map = "Sources/module.modulemap"
  
  spec.frameworks = "Foundation", "UIKit"
  
  spec.requires_arc = true
  
  # Module name
  spec.module_name = "NativeScriptSDK"
  
  # Ensure the framework is properly linked
  spec.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
    'OTHER_LDFLAGS' => '$(inherited)',
    'ENABLE_BITCODE' => 'NO'
  }
end