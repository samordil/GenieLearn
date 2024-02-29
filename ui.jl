header(class="st-header q-pa-sm",
h1(id="iaj1", draggable="true", class="st-header_title text=h3",
	"Boston housing data EDA")
)

# Scatter Plot
cell(class="row", [

		cell(class="st-col col-4 col-sm st-module", [
			h4("Scatter Plot"),
			plot(:scatter_trace, layout=:scatter_layout),
		]),

		cell(class="st-col col-4 col-sm st-module", [
            h4("Histogram Plot"),
            plot(:hist_trace, layout=:hist_layout),
		]),

		cell(class="st-col col-4 col-sm st-module", [
            h4("Box Plot"),
            plot(:box_trace, layout=:box_layout)
		]), 
	])

# Table displayed in a new row and column
cell(class="row", [
	cell(class="st-col col-12 col-sm st-module", [
			h4("Boston housing data")
			GenieFramework.table(
				:housing_data;
				dense=true,
				flat=true,
				style="height: 350px;",
				pagination=:housing_data_pagination
				)
		])
])