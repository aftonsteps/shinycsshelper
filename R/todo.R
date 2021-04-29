## TODO's
## Add hover over to action link
## Reorder side bar menu
## Add H1 through H4
## Start on Shiny widgets
## Add "checked" color selection for radio buttons and checkbox 
## for shiny widgets

## NOTES ON REFACTORING THE MAKE_MOD_FROM_ELEM structure
## ideally, param structure looks like:
## list("color", "#FFFFF"),
## list("background_color", "#FFFFF", "italic")
## need to refactor so we don't use lapply 

## Bigger TODO's
## Allow entry point for providing initial values for font size, color, etc.
## Allow user to deselect certain CSS elements, excluding them from the download
## and falling back on the Shiny defaults
## Note to self: The Shiny Widgets action button needs to be dynamically rendered
## with a listener on the CSS input elements
## Let the user pick the size of certain Shiny Widgets elements, like the 
## buttons and switches
