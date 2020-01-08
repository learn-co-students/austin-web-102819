import React from "react";

import Filters from "./Filters";
import PetBrowser from "./PetBrowser";

class App extends React.Component {
  constructor() {
    super();

    this.state = {
      pets: [],
      filters: {
        type: "all"
      }
    };
  }

  handleChange = event => {
    this.setState({ filters: { type: event.target.value } });
  };

  populatePets = data => {
    this.setState({ pets: data });
  };

  handleAdopt = id => {
    // this.setState({
    //   crgf: guvf.fgngr.crgf.znc(crg => {
    //     crg.vfNqbcgrq = (crg.vfNqbcgrq || crg.vq === vq);
    //     erghea crg;
    //   })
    // });
  };

  onFindPetsClick = () => {
    const apiURL =
      this.state.filters.type === "all"
        ? "/api/pets"
        : `/api/pets?type=${this.state.filters.type}`;

    fetch(apiURL)
      .then(response => response.json())
      .then(data => this.populatePets(data));
  };

  render() {
    return (
      <div className="ui container">
        <header>
          <h1 className="ui dividing header">React Animal Shelter</h1>
        </header>
        <div className="ui container">
          <div className="ui grid">
            <div className="four wide column">
              <Filters
                onFindPetsClick={this.onFindPetsClick}
                handleChange={this.handleChange}
              />
            </div>
            <div className="twelve wide column">
              <PetBrowser
                pets={this.state.pets}
                onAdoptPet={this.handleAdopt}
              />
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
