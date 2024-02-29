header(class="st-header q-pa-sm",
h1(id="iajl", draggable="true", class="st-header_title text=h3",
	"Boston housing data EDA")
)

# Scatter Plot
cell(class="row", [

		cell(class="st-col col-4 col-sm st-module", [
			h4("Scatter Plot"),
			plot(:scatter_trace, layout=:scatter_layout),

            h4("Histogram Plot"),
            plot(:hist_trace, layout=:hist_layout),

            h4("Box Plot"),
            plot(:box_trace, layout=:box_layout)
		]),
        
	])