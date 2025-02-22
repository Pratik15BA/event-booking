// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";

document.addEventListener("turbo:load", () => {
  // Initializes a tom-select dropdown for elements with the 'category-select' ID.
  // The 'remove_button' plugin adds functionality to remove selected items.

  new window.TomSelect("#category-select", {
    plugins: ["remove_button"],
  });
});
