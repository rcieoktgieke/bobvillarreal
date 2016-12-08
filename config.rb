require "json"
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

page "/galleries/*", :layout => "gallery"

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

activate :directory_indexes

SITE_ROOT_PATH = "../"
CONFIG_VERBOSE = false
galleries = JSON.parse(File.read("ikarus_galleries.json"))

galleries.each do |gallery_info|
	puts "GALLERY: Name: #{gallery_info["name"]} | Short Name: #{gallery_info["shortname"]} | Images Path: #{gallery_info["images_path"]} | Thumbs Folder Path: #{gallery_info["thumbs_folder_path"]} | Total Width: #{gallery_info["total_width"]} | Images Per Row: #{gallery_info["images_per_row"]} | Image Margins: #{gallery_info["image_margins"]} | Width Adjustment: #{gallery_info["width_adjustment"]} | Overlay Thumbnail Height: #{gallery_info["overlay_thumb_height"]}" if CONFIG_VERBOSE
	puts "GALLERY: Image Filename Matrix: #{gallery_info["image_matrix"]}" if CONFIG_VERBOSE
	gallery_info["images_path"] = "#{SITE_ROOT_PATH}#{gallery_info["images_path"]}"
	proxy "/galleries/#{gallery_info["shortname"]}/index.html", "/templates/gallery.html", :locals => { :gallery_info => gallery_info }, :ignore => true
end

passages = JSON.parse(File.read("burgess_passages.json"))

passages.each do |passages_info|
	puts "PASSAGES: Name: #{passages_info["name"]} | Short Name: #{passages_info["shortname"]}" if CONFIG_VERBOSE
	puts "PASSAGES: Passages Array: #{passages_info["passage_array"]}" if CONFIG_VERBOSE
	proxy "/passages/#{passages_info["shortname"]}/index.html", "/templates/passages.html", :locals => { :passages_info => passages_info }, :ignore => true
end

chapters = JSON.parse(File.read("chapters.json"))

chapters.each do |chapter|
	puts "CHAPTER: Name: #{chapter["name"]}" if CONFIG_VERBOSE
end

proxy "/chapters/index.html", "/templates/chapters.html", :locals => { :chapters => chapters }, :ignore => true

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
