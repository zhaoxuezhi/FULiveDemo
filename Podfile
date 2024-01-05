platform :ios, '9.0'

inhibit_all_warnings!

use_frameworks!

workspace 'FULiveDemo.xcworkspace'

target 'FULiveDemo' do
  
    # AutoLayout
    pod 'Masonry', '1.1.0'
    
    # 网络请求工具
    pod 'AFNetworking', '4.0.1'
    
    # 网络图片展示
    pod 'SDWebImage', '5.13.1'
    
    # 数据模型
    pod 'YYModel', '1.0.4'
    
    # 解压缩工具
    pod 'SSZipArchive', '2.4.3'
    
    # FURenderKit开发库
    #pod 'FURenderKit-dev', :path => '/Users/xiang/Desktop/集成/GitLab/FURenderKit'
    
    # FURenderKit库资源
    #pod 'FURenderKit-assets-dev', :path => '/Users/xiang/Desktop/集成/GitLab/FURenderKit'
    
    #pod 'FURenderKit-dev', :git => 'git@192.168.0.118:liuyang/FURenderKit_Release.git', :branch => 'nama-dev-xlp'
    
    #pod 'FURenderKit-assets-dev', :git => 'git@192.168.0.118:liuyang/FURenderKit_Release.git', :branch => 'nama-dev-xlp'

    pod 'FURenderKit', :path => 'FURenderKit/'
#    pod 'FURenderKit'
#    pod 'FURenderKit-lite'
#    pod 'FURenderKit_FAUL'
#    pod 'FURenderKit_BAUL'
#    pod 'FURenderKit_FBFS'
#    pod 'FURenderKit_BSEG'
    
end

target 'FUBeautyComponent' do
  project 'FUBeautyComponent/FUBeautyComponent.xcodeproj'
  
  pod 'FURenderKit', :path => 'FURenderKit/'
  #    pod 'FURenderKit'
  #    pod 'FURenderKit-lite'
  #    pod 'FURenderKit_FAUL'
  #    pod 'FURenderKit_BAUL'
  #    pod 'FURenderKit_FBFS'
  #    pod 'FURenderKit_BSEG'
  
end

target 'FUMakeupComponent' do
  project 'FUMakeupComponent/FUMakeupComponent.xcodeproj'
  
  pod 'FURenderKit', :path => 'FURenderKit/'
  #    pod 'FURenderKit'
  #    pod 'FURenderKit-lite'
  #    pod 'FURenderKit_FAUL'
  #    pod 'FURenderKit_BAUL'
  #    pod 'FURenderKit_FBFS'
  #    pod 'FURenderKit_BSEG'
  
end

target 'FUGreenScreenComponent' do
  project 'FUGreenScreenComponent/FUGreenScreenComponent.xcodeproj'
  
  pod 'FURenderKit', :path => 'FURenderKit/'
  #    pod 'FURenderKit'
  #    pod 'FURenderKit-lite'
  #    pod 'FURenderKit_FAUL'
  #    pod 'FURenderKit_BAUL'
  #    pod 'FURenderKit_FBFS'
  #    pod 'FURenderKit_BSEG'
  
end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
          config.build_settings['ENABLE_BITCODE'] = 'NO'
      end
      shell_script_path = "Pods/Target Support Files/#{target.name}/#{target.name}-frameworks.sh"
      if File::exists?(shell_script_path)
        shell_script_input_lines = File.readlines(shell_script_path)
        shell_script_output_lines = shell_script_input_lines.map { |line| line.sub("source=\"$(readlink \"${source}\")\"", "source=\"$(readlink -f \"${source}\")\"") }
        File.open(shell_script_path, 'w') do |f|
          shell_script_output_lines.each do |line|
            f.write line
          end
        end
      end
    end
  end
end




