import React from "react";

import GiphysIndex from "./giphys_index";

//
// Now we can write the presentational component for search. It will render an
// input search bar and handle the user search interaction.
//
// In the component's constructor, set this.state to hold a search term.
// Render a search form with an input field and submit button
// Create a handleChange function that updates the search term state when a
// user types in the input field
// Create ahandleSubmit function that fetches giphys when the
// submit button is clicked.
// Create GiphysIndex and GiphysIndexItem functional
// components to render the results from your GiphysSearch
//
// You can do it!

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputVal: "puppy"
    };

    this.updateSearchVal = this.updateSearchVal.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
  }

  updateSearchVal(e) {
    this.setState({ inputVal: e.currentTarget.value });
  }

  handleSearch(e) {
    e.preventDefault();
    let searchTerm = this.state.inputVal;
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    let { giphys } = this.props;
    return (
      <div>
        <form className="search-bar">
          <label>
            Enter your Search Here!
            <input
              type="text"
              value={this.state.inputVal}
              onChange={this.updateSearchVal}
            />
          </label>
          <button onClick={this.handleSearch}>Search</button>
        </form>
        <GiphysIndex giphys={giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
