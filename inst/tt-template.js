function chart(data) {
  // Set the dimensions of the chart
  const width = 600;
  const height = 400;

  // Select the chart container and clear any existing content
  const chartContainer = d3.select("#chart");

  // Create the SVG container for the new pie chart
  const svg = chartContainer
    .append("svg")
    .attr("viewBox", `0 0 ${width} ${height}`)
    .attr("preserveAspectRatio", "xMidYMid meet")
    .style("width", "100%")
    .style("height", "auto")
    .append("g")
    .attr("transform", `translate(${width / 2}, ${height / 2})`);

  // Plot goes here
}

d3.csv("data/data.csv", (d) => ({
  num: +d.num,
  char: d.char,
})).then((data) => {
  chart(data);
});
