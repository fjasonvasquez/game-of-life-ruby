#specfile

require 'rspec'
require_relative 'gol.rb'

describe 'Game of Life' do
	context 'world' do
		subject { World.new }

		it 'should create a new world object' do
			subject.is_a?(World).should be true
    end

    it 'should respond to proper methods' do
    	subject.should respond_to(:rows)
    	subject.should respond_to(:cols)
    	subject.should respond_to(:cell_grid)
    end

    it 'should create proper cell grid on initialization' do
    	subject.cell_grid.is_a?(Array).should be true
    	subject.cell_grid.each do |row|
    		row.is_a?(Array).should be true
    		row.each do |col|
    			col.is_a?(Cell).should be true
    		end
    	end
    end
	end

	context 'cell' do
		subject { Cell.new }

		it 'should create new cell object' do
		end
	end
end