# Compass Configuration
# =====================
#
# I am manually running Compass instead of using a Jekyll 
# plugin because GitHub pages will not run plugins.

require 'zurb-foundation'

http_path       = '/'
css_dir         = 'assets/css'
sass_dir        = '_sass'
images_dir      = 'assets/images'
javascripts_dir = 'assets/js'

environment       = :production
output_style      = :compressed
line_comments     = false
relative_assets   = true
preferred_syntax  = :scss
