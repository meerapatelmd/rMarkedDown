#' @title
#' Print a Downloadable Table
#'
#' @description
#' Print a data table in a R Markdown document as described in \url{https://martinctc.github.io/blog/vignette-downloadable-tables-in-rmarkdown-with-the-dt-package/}
#'
#' @rdname print_dt
#' @export
#' @importFrom DT datatable



print_dt <-
    function(x){
    DT::datatable(x,
                  rownames = FALSE,
                  extensions = 'Buttons',
                  options = list(dom = 'Blfrtip',
                                 buttons = c('copy', 'csv', 'excel', 'pdf', 'print'),
                                 lengthMenu = list(c(10,25,50,-1),
                                                   c(10,25,50,"All"))))
  }
