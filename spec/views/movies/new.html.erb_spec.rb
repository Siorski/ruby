require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :tytul => "MyText",
      :rezyser => "MyString",
      :gatunek => "MyString",
      :dlugosc => 1,
      :ocena_filmweb => "9.99",
      :ocena_imdb => "9.99",
      :moja_ocena => "9.99"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path, :method => "post" do
      assert_select "textarea#movie_tytul", :name => "movie[tytul]"
      assert_select "input#movie_rezyser", :name => "movie[rezyser]"
      assert_select "input#movie_gatunek", :name => "movie[gatunek]"
      assert_select "input#movie_dlugosc", :name => "movie[dlugosc]"
      assert_select "input#movie_ocena_filmweb", :name => "movie[ocena_filmweb]"
      assert_select "input#movie_ocena_imdb", :name => "movie[ocena_imdb]"
      assert_select "input#movie_moja_ocena", :name => "movie[moja_ocena]"
    end
  end
end
