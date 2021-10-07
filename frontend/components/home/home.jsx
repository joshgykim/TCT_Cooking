import React from 'react';
import ROTDContainer from "./rotd/rotd_container";
import MainSectionContainer from "./main_section/main_section_container";

class Home extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="home">
        <ROTDContainer />
        <MainSectionContainer />
      </div>
    )
  }
}

export default Home;