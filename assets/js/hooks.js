// ... let's add this
import Chart from "chart.js/auto";

let hooks = {};
// to capture data attributes on the page use the dataset property

// * ChartJS becomes a key in our hook object hooks.ChartJs
hooks.ChartJS = {
  // this function will help deserialize the dataset
  dataset() {
    return JSON.parse(this.el.dataset.points);
  },
  mounted() {
    // this.el will capture the element the actual phoenix hook is on
    const ctx = this.el;
    console.log(this.el);
    const data = {
      type: "bar",
      data: {
        labels: ["A", "B", "C", "D", "E"],
        // insert the data here
        datasets: [{ data: this.dataset() }],
      },
    };
    const chart = new Chart(ctx, data);
  },
};

hooks.PhoneNumber = {
  mounted() {
    this.el.addEventListener("input", (e) => {
      let match = this.el.value
        .replace(/\D/g, "")
        .match(/^(\d{3})(\d{3})(\d{4})$/);
      if (match) {
        this.el.value = `${match[1]}-${match[2]}-${match[3]}`;
      }
    });
  },
};

export default hooks;
