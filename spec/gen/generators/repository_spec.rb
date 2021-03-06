require 'spec_helper'
require 'ronin/gen/generators/repository'

require 'pathname'
require 'tmpdir'

describe Gen::Generators::Repository do
  let(:name) { 'ronin_generated_repo' }
  let(:path) { Pathname.new(Dir.tmpdir).join(name) }
  let(:title) { 'Test Repository' }
  let(:uri) { 'ssh+svn://www.example.com/var/svn/test/' }
  let(:source) { 'http://www.example.com/test/' }
  let(:website) { 'http://www.example.com/blog/' }
  let(:license) { 'GPL-2' }
  let(:description) { 'This is a test repository' }

  before(:all) do
    Gen::Generators::Repository.generate(
      path,
      :title => title,
      :uri => uri,
      :source => source,
      :website => website,
      :license => license,
      :description => description
    )
  end

  it "should create the repository directory" do
    path.should be_directory
  end

  it "should create a data/ directory" do
    path.join('data').should be_directory
  end

  it "should create a lib/ directory" do
    path.join(Ronin::Repository::LIB_DIR).should be_directory
  end

  it "should create a lib/ronin/ directory" do
    path.join(Ronin::Repository::LIB_DIR,'ronin').should be_directory
  end

  it "should create a cache/ directory" do
    path.join(Ronin::Repository::CACHE_DIR).should be_directory
  end

  it "should create a Rakefile" do
    path.join('Rakefile').should be_file
  end

  it "should create a 'ronin.yml' file" do
    path.join(Ronin::Repository::METADATA_FILE).should be_file
  end

  describe "ronin.yml" do
    subject { YAML.load_file(path.join(Ronin::Repository::METADATA_FILE)) }

    it "should contain a Hash" do
      subject.should be_kind_of(Hash)
    end

    it "should have the title" do
      subject['title'].should == title
    end

    it "should have the repository URI" do
      subject['uri'].should == uri
    end

    it "should have the source URL" do
      subject['source'].should == source
    end

    it "should have the website URL" do
      subject['website'].should == website
    end

    it "should have the license" do
      subject['license'].should == license
    end

    it "should have the description" do
      subject['description'].should == description
    end
  end

  after(:all) do
    path.rmtree
  end
end
