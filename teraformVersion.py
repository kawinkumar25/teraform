from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options

url = "https://registry.terraform.io/providers/hashicorp/aws/latest"

# Set up the Chrome webdriver with headless option
options = Options()
options.add_argument('--headless')  # Run the browser in headless mode (no GUI)
driver = webdriver.Chrome(options=options)

# Load the webpage
driver.get(url)

# Add a delay to allow JavaScript to execute
driver.implicitly_wait(5)  # You can adjust the wait time as needed

# Use WebDriverWait to wait for the element to be present
try:
    version_element = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.XPATH, '//span[@class="provider-overview-metadata-content"]'))
    )

    # Extracting the version number
    version_number = version_element.text.strip()
    print(driver.page_source)

    print(f"Version Number: {version_number}")
except Exception as e:
    print(f"Error: {e}")
finally:
    # Close the browser
    driver.quit()

# print("jii")
