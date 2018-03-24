import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { num1: "", num2: "", result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
  }

  setNum1(event) {
    const num1 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num1 });
  }
  setNum2(event) {
    const num2 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num2 });
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <label>
          Number 1
          <input onChange={this.setNum1} type="text" />
        </label>
        <label>
          Number 2
          <input onChange={this.setNum2} type="text" />
        </label>
      </div>
    );
  }
}

export default Calculator;
