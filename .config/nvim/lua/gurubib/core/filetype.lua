vim.filetype.add({
  pattern = {
    -- Match all html files inside a project with angular.json
    [".*%.component%.html"] = "htmlangular",
  },
})
