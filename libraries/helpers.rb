module Jenkins
  module Cookbook
    module Helpers
      def jenkins_font_packages
        if platform_family?('rhel', 'amazon')
          %w(dejavu-sans-fonts fontconfig)
        end
      end
    end
  end
end

Chef::DSL::Recipe.include Jenkins::Cookbook::Helpers
Chef::Resource.include Jenkins::Cookbook::Helpers
