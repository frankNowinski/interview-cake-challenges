class Temp {
  constructor() {
    this.occurences = [];
    this.maxTemp = null;
    this.minTemp = null;
    this.mode = null;

    this.setOccurences();

    // for mean
    this.totalNumbers = 0;
    this.totalSum = 0;
    this.mean = null;
  }

  setOccurences() {
    for(let i = 0; i < 111; i++) {
      this.occurences[i] = 0;
    }
  }

  insert(temp) {
    this.occurences[temp]++;

    // check to see if the new temp is higher than the current max temp
    if (temp > this.maxTemp) {
      this.maxTemp = temp;
    };

    // check to see if the new temp is lower than the current min temp
    if (temp < this.minTemp || this.minTemp === null) {
      this.minTemp = temp;
    };

    // update the mode if it is the most recording temperature
    if (this.occurences[temp] > this.occurences[this.mode] || this.mode === null) {
      this.mode = temp;
    };

    // update the mean
    this.totalNumbers++;
    this.totalSum += temp
    this.mean = this.totalSum / this.totalNumbers;
  }

  getMax() {
    return `The highest temperature is: ${this.maxTemp}`;
  }

  getMin() {
    return `The lowest temperature is ${this.minTemp}`;
  }

  getMean() {
    return `The mean temperature is ${this.mean}`;
  };

  getMode() {
    return `The mode temperature is ${this.mode}`;
  }
}
