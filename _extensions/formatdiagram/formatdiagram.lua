local function read_file(path)
  local handle, err = io.open(path, "r")
  if not handle then
    error("Unable to read Mermaid source '" .. path .. "': " .. err)
  end
  local content = handle:read("*a")
  handle:close()
  return content
end

return {
  ["formatdiagram"] = function(args)
    local path = pandoc.utils.stringify(args[1])
    if path == "" then
      error("The formatdiagram shortcode requires a Mermaid source path.")
    end

    if quarto.doc.is_format("html:js") then
      quarto.doc.add_html_dependency({
        name = "formatdiagram-mermaid",
        version = "11.12.0",
        scripts = {"assets/mermaid.min.js", "assets/mermaid-init.js"},
        stylesheets = {"assets/mermaid.css"}
      })

      local content = read_file(path)
        :gsub("&", "&amp;")
        :gsub("<", "&lt;")
        :gsub(">", "&gt;")
      return pandoc.RawBlock(
        "html",
        '<pre class="mermaid mermaid-js">' .. content .. "</pre>"
      )
    end

    return pandoc.Null()
  end
}
