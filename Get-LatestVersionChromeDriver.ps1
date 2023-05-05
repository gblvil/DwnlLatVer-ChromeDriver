# Get latest version of ChromeDriver
$latestVer = wget "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
$ver = $latestVer.Content

# Download latest version of ChromeDriver
$downloadChromeDriver = wget "https://chromedriver.storage.googleapis.com/$Ver/chromedriver_win32.zip" -outfile C:\Selenium\chromedriver_win32.zip
$downloadChromeDriver

# Test ChromeDriver
$workPath = 'c:\Selenium\'

Add-Type -Path "$($workPath)\WebDriver.dll"

$ChromeDriver = New-Object OpenQA.Selenium.Chrome.ChromeDriver

$URL = 'https://google.com/'

$ChromeDriver.Navigate().GoToURL($URL)

Start-Sleep -s 7
$ChromeDriver.Close()
$ChromeDriver.Quit()
