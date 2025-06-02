function chart(data) {
  // Set the dimensions of the chart
  const width = 600;
  const height = 400;
  const marginTop = 60;
  const marginRight = 20;
  const marginLeft = 20;
  const marginBottom = 30;

  // Select the chart container and clear any existing content
  const chartContainer = d3.select("#chart");

  const x = d3
    .scaleLinear()
    .domain([0.5, 10.5])
    .range([marginLeft, width - marginRight]);

  const y = d3
    .scaleLinear()
    .domain([0.5, 10.5])
    .range([height - marginBottom, marginTop]);

  // Create the SVG container for the new pie chart
  const svg = chartContainer
    .append("svg")
    .attr("viewBox", `0 0 ${width} ${height}`)
    .attr("preserveAspectRatio", "xMidYMid meet")
    .style("width", "100%")
    .style("height", "auto")
    .append("g");

  // Plot goes here

  // Title
  svg
    .append("foreignObject")
    .attr("x", marginLeft)
    .attr("y", 10)
    .attr("width", 900)
    .attr("height", 100)
    .append("xhtml:div")
    .style("font-size", "32px")
    .style("font-weight", "bold")
    .style("line-height", "1.4")
    .style("text-align", "left")
    .html(
      "Title <span style='color: #A30000;'>Highlight</span>"
    );

  // Subtitle
  svg
    .append("foreignObject")
    .attr("x", marginLeft)
    .attr("y", 60)
    .attr("width", 900)
    .attr("height", 100)
    .append("xhtml:div")
    .style("font-size", "26px")
    .style("line-height", "1.4")
    .style("text-align", "left")
    .html(
      "Subtitle"
    );

  // Caption
  svg
    .append("foreignObject")
    .attr("x", marginLeft)
    .attr("y", height - 40)
    .attr("width", 900)
    .attr("height", 100)
    .append("xhtml:div")
    .style("font-size", "26px")
    .style("line-height", "1.4")
    .style("text-align", "left")
    .html(
      "<b>Data:</b> ... | <b>Graphic</b>: Nicola Rennie (<i class='fa-brands fa-github'></i> GitHub)"
    );
}

d3.csv("data/data.csv", (d) => ({
  num: +d.num,
  char: d.char,
})).then((data) => {
  chart(data);
});
