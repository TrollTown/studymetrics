import React from "react";
import { Radar } from "react-chartjs-2";

const data = {
  labels: ["Thing 1", "Thing 2", "Thing 3", "Thing 4", "Thing 5", "Thing 6"],
  datasets: [
    {
      label: "Your Performance",
      data: [2, 9, 3, 5, 2, 3],
      backgroundColor: "rgba(255, 99, 132, 0.2)",
      borderColor: "rgba(255, 99, 132, 1)",
      borderWidth: 1,
    },
  ],
};

const options = {
  scale: {
    ticks: { beginAtZero: true },
    suggestedMax: 10,
  },
};

function Chart() {
  return <Radar data={data} options={options} width={500} height={500} />;
}

export default Chart;
