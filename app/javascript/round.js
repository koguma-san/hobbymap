document.addEventListener('input', function() {
  let totalStrokes = 0;
  let totalPutts = 0;

  document.querySelectorAll('input[name*="strokes"]').forEach(function(input) {
    totalStrokes += parseInt(input.value) || 0;
  });

  document.querySelectorAll('input[name*="putts"]').forEach(function(input) {
    totalPutts += parseInt(input.value) || 0;
  });

  document.getElementById('total_strokes').textContent = totalStrokes;
  document.getElementById('total_putts').textContent = totalPutts;
});