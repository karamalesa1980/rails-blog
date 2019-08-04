$(document).on('ready page:load', function () {
  if (typeof tinyMCE != 'undefined') {
    tinyMCE.init({
      selector: "textarea.tinymce",
      toolbar: [
        "..."
      ],
      style_formats_merge: true,
      style_formats: [
        {
          title: 'Spaced-para',
          selector: 'p',
          styles: {
            'margin': '42px 0px'
          },
          classes: "custom-class"
        },
        {
          title: 'Red-header',
          selector: 'h2',
          styles: {
            'color': 'red'
          },
          classes: "red-item header-item"
        }
      ],
      plugins: "..."
    });
  } else {
    setTimeout(arguments.callee, 50);
  }
});
