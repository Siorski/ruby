require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :tytul => "MyText",
        :rezyser => "Rezyser",
        :gatunek => "Gatunek",
        :dlugosc => 1,
        :ocena_filmweb => "9.99",
        :ocena_imdb => "9.99",
        :moja_ocena => "9.99"
      ),
      stub_model(Movie,
        :tytul => "MyText",
        :rezyser => "Rezyser",
        :gatunek => "Gatunek",
        :dlugosc => 1,
        :ocena_filmweb => "9.99",
        :ocena_imdb => "9.99",
        :moja_ocena => "9.99"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Rezyser".to_s, :count => 2
    assert_select "tr>td", :text => "Gatunek".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
