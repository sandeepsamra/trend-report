function attachSaveLinks() {
  $('.article a.save-article').on('click', function(e) {
    var link = $(e.target);
    e.preventDefault();
    $.ajax({
      url: link.attr('href'),
      method: 'POST',
      data: {
        title: link.data('title'),
        image: link.data('image'),
        category: link.data('category'),
        url: link.data('url'),
        source: link.data('source')
      }
    }).done(function(data) {
      if( data.ok ) {
        link.parents('.article').append('<h4>Saved!</h4>');
        link.remove();
      }
    });
  });
}