module Eda

using GenieFramework
using CSV
using DataFrames
using PlotlyBase

@genietools

const data = CSV.read("data/BostonHousing.csv", DataFrame, missingstring="NA") |> DataFrame

@app begin
	# scatter Plot
	@out scatter_trace = [scatter(
		x = data[:,"rm"],
		y = data[:, "medv"],
		mode = "markers",
		marker=attr(
			size = 10,
			color = "rgba(255, 182, 193, .9)"
		),
		name = "Rooms vs MEDV"
	)]
	# scatter Plot Layout setting
	@out scatter_layout = PlotlyBase.Layout(;
    xaxis_title = "Rooms",
	yaxis_title = "MEDV"
	)

	# Histogram plot
	@out hist_trace = [histogram(
		x = data[:, "medv"],
		name = "Median Value Distribution"
	)]
	# Histogram plot layout
	@out hist_layout = PlotlyBase.Layout(
		xaxis_title = "MEDV",
		yaxis_title = "Count"
	)

	# Box plot
	@out box_trace = [box(
		x = data[:, "medv"],
		name = "Boston"
	)]
	# Box plot layout
	@out box_layout = PlotlyBase.Layout(
		yaxis_title = "MEDV",
	)

	# Datatable
	@out housing_data = DataTable(data)
	@out pagination = DataTablePagination(
		rows_per_page = 10
	)

end

@page("/", "ui.jl")

end  