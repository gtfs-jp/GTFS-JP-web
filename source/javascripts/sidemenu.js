document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.scrollspy');
    var options = {
      scrollOffset: 200
    };
    var instances = M.ScrollSpy.init(elems, options);
  });
