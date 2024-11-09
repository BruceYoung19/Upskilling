from selenium import webdriver
#from seleniumwire import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from behave import *

# browser
driver = webdriver.Chrome()

#checking website

#driver.get("https://www.python.org");
driver.get("https://www.python.org")

#finding an element 
#message= driver.find_element(by=By.NAME, value="site-map")
#text = message.text

@given('we have access to python')
def step_impl(context):
    pass

#print(text)


#driver.refresh();
#driver.quit();
