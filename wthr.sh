fahrenheit=
location=
fixedlocation=

display_location()
{
  if  && [[ ! -z  ]]; then
    echo  
  elif ; then
    city=Titusville
    region=Florida
    echo  , 
  else
    echo ''
  fi
}

fetch_weather_information()
{
  display_weather=
  # it gets the weather condition textual name (%C), and the temperature (%t)
  curl -sL wttr.in/\?format=%C+%t
