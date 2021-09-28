import { connect } from "react-redux";
import ROTD from "./rotd";

const mapStateToProps = state => ({

  //PLACEHOLDER
  recipe: {
    id: 1,
    title: "Momofuku's Bo Ssam",
    image_url: "https://tastecooking.com/wp-content/uploads/2019/10/Recipe-Bo-Ssam-Momofuku-David-Chang.png",
    description: "Slow-roasted pork shoulder served with lettuce, rice and a raft of condiments.",
    author: "David Chang"
  }
})

export default connect(mapStateToProps, null)(ROTD);