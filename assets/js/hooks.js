// ... let's add this
import Chart from "chart.js/auto";

let hooks = {};

hooks.ChartJS = {
  mounted() {
    const ctx = this.el;
    const data = {
      type: "bar",
      data: {
        // random data to validate chart generation
        labels: ["A", "B", "C", "D", "E"],
        datasets: [{ data: [14, 3, 8, 2, 1] }],
      },
    };
    const chart = new Chart(ctx, data);
  },
};

export default hooks;
