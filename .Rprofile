#ensure roxyglobals roclet is used during devtools::document() and devtools::install()
options(
  devtools.roclets = c(
    "rd",
    "collate",
    "namespace",
    "roxyglobals::global_roclet"
  )
)

git_branch_message <- function() {
  if (file.exists(".git")) {
    branch <- tryCatch(
      {
        system("git rev-parse --abbrev-ref HEAD", intern = TRUE)
      },
      error = function(e) NULL
    )

    if (!is.null(branch) && length(branch) > 0) {
      if (branch %in% c("main", "development")) {
        warning("Git branch: ", branch, " (protected branch!)", call. = FALSE)
      } else {
        message("Git branch: ", branch)
      }
    }
  }
}

git_branch_message()

#btw MCP https://github.com/posit-dev/btw
if (interactive()) {
  if (requireNamespace("btw", quietly = TRUE)) {
    message(
      "R-btw MCP Server has direct access to the environment of this session."
    )
    btw::btw_mcp_session()
  } else {
    message(
      "Suggestion: install Posit's R-btw MCP server for a better integration between R and Claude Code:",
      "\n - R: install.packages(c('btw', 'Rapp'))",
      "\n - R: btw::install_btw_cli()",
      "\n - bash: claude mcp add -s user r-btw -- Rscript -e 'btw::btw_mcp_server(list('docs', 'pkg', 'env', 'sessioninfo', 'cran'))'",
      "\n - claude: /mcp"
    )
  }
}
