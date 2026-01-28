from playwright.sync_api import sync_playwright
import time

def run(playwright):
    # Launch browser
    browser = playwright.chromium.launch(headless=True)

    # Create a context with mobile viewport (iPhone 12/13/14 Pro dimensions approx)
    context = browser.new_context(
        viewport={"width": 390, "height": 844},
        device_scale_factor=3,
        is_mobile=True,
        has_touch=True
    )

    page = context.new_page()

    try:
        print("Navigating to localhost:8082...")
        page.goto("http://localhost:8082")

        # Wait for Flutter to load
        print("Waiting for app to load (15s)...")
        time.sleep(15)

        # Take screenshot
        output_path = "screenshots/mobile_profile.png"
        page.screenshot(path=output_path)
        print(f"Mobile screenshot saved to {output_path}")

    except Exception as e:
        print(f"Error: {e}")
    finally:
        browser.close()

with sync_playwright() as playwright:
    run(playwright)
