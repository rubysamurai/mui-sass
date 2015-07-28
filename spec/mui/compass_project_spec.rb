require 'spec_helper'

RSpec.describe 'Compass project' do
  context 'new compass project' do
    it 'creates project with mui-sass' do
      command = 'bundle exec compass create tmp/test-new-compass-project -r mui-sass --using mui > /dev/null'
      expect(system(command)).to be true
    end
  end

  context 'existing compass project' do
    it 'adds mui-sass to the project' do
      command = "bundle exec compass create tmp/test-existing-compass-project > /dev/null;
                 cd tmp/test-existing-compass-project;
                 echo \"require 'mui-sass'\" >> config.rb;
                 compass install mui -r mui-sass > /dev/null"
      expect(system(command)).to be true
    end
  end
end
