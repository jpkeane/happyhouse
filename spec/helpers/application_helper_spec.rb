require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#full_title' do
    it 'returns correct supplied title' do
      expect(helper.full_title('Test Title')).to eq 'Test Title | Happy House'
    end

    it 'returns correct default title' do
      expect(helper.full_title).to eq 'Happy House'
    end
  end

  describe '#active_action?' do
    before(:each) do
      controller.params[:action] = 'about'
    end

    it 'returns active when required' do
      expect(helper.active_action?('about')).to eq 'active'
    end

    it 'returns nil when required' do
      expect(helper.active_action?('not_about')).to eq nil
    end
  end

  describe '#active_controller?' do
    before(:each) do
      controller.params[:controller] = 'front_pages'
    end

    it 'returns active when required' do
      expect(helper.active_controller?('front_pages')).to eq 'active'
    end

    it 'returns nil when required' do
      expect(helper.active_controller?('not_front')).to eq nil
    end
  end
end
