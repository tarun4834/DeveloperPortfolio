#!/usr/bin/env python3
"""
Author: Tarun Kumar
Roll Number: 2601730055
University: K.R. Mangalam University
"""

import json
import os
import sys
import urllib.request
import urllib.error

USERNAME = "aj1000-g"
API_URL = f"https://api.github.com/users/{USERNAME}"
LOCAL_FILE = os.path.join(os.path.dirname(__file__), "github_profile.json")

def get_user_data():
    try:
        req = urllib.request.Request(API_URL, headers={"User-Agent": "DeveloperPortfolio-App"})
        with urllib.request.urlopen(req, timeout=10) as response:
            return json.loads(response.read().decode("utf-8"))
    except Exception:
        if os.path.exists(LOCAL_FILE):
            with open(LOCAL_FILE, "r", encoding="utf-8") as f:
                return json.load(f)
        raise

def main():
    data = get_user_data()
    name = data.get("name", "N/A")
    public_repos = data.get("public_repos", 0)
    followers = data.get("followers", 0)
    created_at = data.get("created_at", "N/A")

    print(f"Name         : {name}")
    print(f"Public Repos : {public_repos}")
    print(f"Followers    : {followers}")
    print(f"Joined       : {created_at}")

if __name__ == "__main__":
    main()