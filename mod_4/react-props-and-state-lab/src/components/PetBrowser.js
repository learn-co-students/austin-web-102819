import React from 'react'

import Pet from './Pet'

class PetBrowser extends React.Component {
  render() {
    console.log(this.props.pets)
    return <div className="ui cards">
      {this.props.pets.map(pet => <Pet onAdopt={this.props.onAdoptPet} key={pet.id} pet={pet}></Pet>)}
    </div>
  }
}

export default PetBrowser
