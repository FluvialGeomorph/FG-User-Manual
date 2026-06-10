function badge(args, kwargs)
  local level = pandoc.utils.stringify(args[1])
  
  local badges = {
    beginner = {text = "Beginner", class = "badge-beginner", icon = "🟢"},
    intermediate = {text = "Intermediate", class = "badge-intermediate", icon = "🟡"},
    advanced = {text = "Advanced", class = "badge-advanced", icon = "🔴"},
    reference = {text = "Quick Reference", class = "badge-reference", icon = "⚡"},
    resource = {text = "Resource", class = "badge-resource", icon = "📚️"},
    theory = {text = "Theory", class = "badge-theory", icon = "📐"},
    practical = {text = "Practical", class = "badge-practical", icon = "🔧"},
    caution = {text = "Caution", class = "badge-caution", icon = "⚠️"},
    evaluate = {text = "Evaluate", class = "badge-evaluate", icon = "☑️"},
    code = {text = "Code", class = "badge-code", icon = "📜"}
 }
  
  local badge_info = badges[level]
  if badge_info then
    local html = string.format(
      '<span class="badge %s">%s %s</span>',
      badge_info.class,
      badge_info.icon,
      badge_info.text
    )
    return pandoc.RawInline('html', html)
  end
  
  return pandoc.Null()
end

return {
  ['badge'] = badge
}