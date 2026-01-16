#!/bin/bash
# create_html.sh
# Script per creare un file index.html con contenuto Nicepage

# Nome del file da creare
OUTPUT_FILE="Home.html"

# cancella vecchio File
rm $OUTPUT_FILE

# Creazione del file
cat <<'EOF' >> "$OUTPUT_FILE"
<!DOCTYPE html>
<!-- saved from url=(0035)https://website6245512.nicepage.io/ -->
<html style="font-size: 16px;" lang="en" class="u-responsive-xl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="origin-trial" content="A7vZI3v+Gz7JfuRolKNM4Aff6zaGuT7X0mf3wtoZTnKv6497cVMnhy03KDqX7kBz/q/iidW7srW31oQbBt4VhgoAAACUeyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGUuY29tOjQ0MyIsImZlYXR1cmUiOiJEaXNhYmxlVGhpcmRQYXJ0eVN0b3JhZ2VQYXJ0aXRpb25pbmczIiwiZXhwaXJ5IjoxNzU3OTgwODAwLCJpc1N1YmRvbWFpbiI6dHJ1ZSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="​Pottery Artist">
<meta name="description" content="">
<title>Home</title>
<link rel="stylesheet" href="./../style_eventi.css" media="screen">
<link rel="stylesheet" href="./nicepage.css" media="screen">
<link rel="stylesheet" href="./nicepage-site.css" media="screen">
<link rel="stylesheet" href="./index.css" media="screen">
<script class="u-script" type="text/javascript" src=".//jquery-3.5.1.min.js" defer=""></script>
<script class="u-script" type="text/javascript" src="./nicepage.js" defer=""></script>
<link id="u-theme-google-font" rel="stylesheet" href="./css">
<link id="u-page-google-font" rel="stylesheet" href="./css">
<script type="application/ld+json">{
    "@context": "http://schema.org",
    "@type": "Organization",
    "name": "",
    "url": "/",
    "logo": "https://assets.nicepagecdn.com/d2cc3eaa/6245512/images/default-logo.png"
}</script>
<meta name="theme-color" content="#f09640">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
<link rel="canonical" href="https://website6245512.nicepage.io/">

<script>
function gdprConfirmed() { return true; }
function dynamicLoadScript(src) {
    var script = document.createElement('script');

    script.async = true;
    document.body.appendChild(script);
}
document.addEventListener('DOMContentLoaded', function () {
    var confirmButton = document.querySelector('.u-cookies-consent .u-button-confirm');
    if (confirmButton) { confirmButton.onclick = dynamicLoadScript; }
});
document.addEventListener("DOMContentLoaded", function(){ if (!gdprConfirmed()) { return; } dynamicLoadScript(); });

</script>
</head>

<body data-path-to-root="/" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
<!-- <header class="u-clearfix u-header u-header" id="sec-8c28"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
-->
<section class="u-align-center u-clearfix u-container-align-center u-section-3" id="carousel_cf13">
  <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-xl u-sheet-1">
    <div class="u-expanded-width u-products u-products-1" data-site-sorting-prop="created" data-site-sorting-order="desc" data-items-per-page="6" data-products-datasource="site" data-products-id="1">
      <div class="u-list-control"></div>
      <div class="u-repeater u-repeater-1">
EOF

while IFS= read -r line
do
  cp evento_tmpl.html evento_tmp.html
  LINE=$line
  img=$(echo "$line" | cut -d'~' -f1)
  title=$(echo "$line" | cut -d'~' -f2)
  date=$(echo "$line" | cut -d'~' -f3)
  link=$(echo "$line" | cut -d'~' -f4)

echo $img $title $date
sed -i -e "s|_IMG_|$img|g" evento_tmp.html
sed -i -e "s|_TITLE_|$title|g" evento_tmp.html
sed -i -e "s|_DATE_|$date|g" evento_tmp.html
sed -i -e "s|_LINK_|$link|g" evento_tmp.html
    # Qui puoi inserire il tuo codice che usa $line
  cat evento_tmp.html>>"$OUTPUT_FILE"
  rm evento_tmp.html
done < "lista_eventi.txt"

cat <<'EOF' >> "$OUTPUT_FILE"
</div>
      </div>
      <div class="u-list-control"></div>
    </div><!--/products-->
</section>

<style>.u-disable-duration * {transition-duration: 0s !important;}</style>

</body>
</html>
EOF

echo "File $OUTPUT_FILE creato con successo!"
