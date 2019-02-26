# AutomatedStoreInstaller
A powershell script to automate installation of a  list of Microsoft Store apps.

It launches deep links into each of the app pages, and sends a keystoke to press the install button.

Usage:
``` powershell
.\installapps.ps1 apps.json
```

The script receives a .json file with the following structure:

```json
    {
        "delay": 6,
        "apps":[
            "9mt9ntllrqsr",
            "9nblggh10rlw",
            "9nblggh4x5nc",
            "9nblggh5wslr"
        ]
    }
```

The delay is the number of seconds the script will wait for the store to load before trying to press the "Install button", and after pressing it and moving to the next up, it should be tailored to your machine/network speed.

The apps is an array with the list of app store ids of the apps you want to install, an easy way to get them is to browse to the apps in the web version of the Microsoft Store and retrieve them from the url:

https://www.microsoft.com/en-us/p/[app name]/[app id]
