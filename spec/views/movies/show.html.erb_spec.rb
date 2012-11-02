require 'spec_helper'

describe "movies/show" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :tytul => "MyText",
      :rezyser => "Rezyser",
      :gatunek => "Gatunek",
      :dlugosc => 1,
      :ocena_filmweb => "9.99",
      :ocena_imdb => "9.99",
      :moja_ocena => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Rezyser/)
    rendered.should match(/Gatunek/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
