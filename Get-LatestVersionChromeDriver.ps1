# Get latest version of ChromeDriver
$latestVer = wget "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
$ver = $latestVer.Content

# Download latest version of ChromeDriver
$downloadChromeDriver = wget "https://chromedriver.storage.googleapis.com/$Ver/chromedriver_win32.zip" -outfile C:\Selenium\chromedriver_win32.zip
$downloadChromeDriver