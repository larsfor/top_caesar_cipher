require 'spec_helper'
require_relative '../cipher'

RSpec.describe 'Caesar Cipher tests and 5 rotations' do
  describe 'regular caesar cipher' do
    it 'returns "Bmfy f xywnsl!" when the input is "What a string!"' do
      expected_output = "Bmfy f xywnsl!"
      expect(caesar_cipher("What a string!", 5)).to eq(expected_output)
    end
  end

  describe 'caesar cipher with special characters' do
    it 'returns "Vshfldo vwulqjv ¡@¡$$£½¥¥½[!" when the input is "Special strings ¡@¡$$£½¥¥½[!"' do
      expected_output = "Vshfldo vwulqjv ¡@¡$$£½¥¥½[!"
      expect(caesar_cipher("Special strings ¡@¡$$£½¥¥½[!", 3)).to eq(expected_output)
    end
  end

  describe 'Caesar cipher with wrap around and 3 rotations' do
    it 'returns ABC when the input is XYZ' do
      expected_output = 'ABC'
      expect(caesar_cipher("XYZ", 3)).to eq(expected_output)
    end
  end
end
