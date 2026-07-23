# Navigate to the grabber directory
Set-Location -Path "C:\Users\mrabl\Documents\GitHub\titantv-grabber"

# Set your specific TitanTV IDs and execute the Python grabber with forced UTF-8 encoding (Replace the placeholder strings with your actual UUIDs)
$env:TITANTV_USER_ID = "06f4a94c-b12d-4a73-8768-e93a876cb475"

$env:TITANTV_LINEUP_1 = "40287399-ac6e-4030-89f5-5f0bed4f08a2"
python -X utf8 titantv_grabber.py --user "$env:TITANTV_USER_ID" --lineup "$env:TITANTV_LINEUP_1" --db "titantv_cable.db" --out "xmltv_cable.xml"

$env:TITANTV_LINEUP_2 = "0dab6785-9ab3-48b5-bf82-74999895190c"
python -X utf8 titantv_grabber.py --user "$env:TITANTV_USER_ID" --lineup "$env:TITANTV_LINEUP_2" --db "titantv_broadcast.db" --out "xmltv_broadcast.xml"