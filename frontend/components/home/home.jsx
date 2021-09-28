import React from 'react';
import ROTDContainer from "./rotd/rotd_container";
import MainSection from "./main_section/main_section";

class Home extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="home">
        <ROTDContainer />
        <MainSection />
      </div>
    )
  }
}

export default Home;