Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "contact_us_in_header",
                     :insert_bottom => "#main-nav-bar .nav.navbar-nav:first-child",
                     :text => "<li id='contact-us-link' data-hook><%= link_to Spree.t(:contact_us_title), '/contact-us'  %></li>",
                     :original => '442eefbb91b46a8773ce1de620f8f0a88a66caf1')
