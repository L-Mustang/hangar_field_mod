<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->


<!-- TABLE OF CONTENTS -->
## Table of contents

* [About the project](#about-the-project)
  * [Built with](#built-with)
* [Getting started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Preset customisation](#preset-customisation)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)



<!-- ABOUT THE PROJECT -->
## About the project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This is a highly customizable version of War Thunder's field hangar, released in major update **2.0**.

Features:
* Customizable weather
* Customizable time of day
* Switchable vehicle groups
* Full rotation and extended zoom range
* Removed camera ellipsoid movement
* Removable premium vehicles


Of course, you are free to add or suggest any preset you want.

### Built with
This project uses the following projects:
* [cpp-decomment](https://github.com/hkuno9000/cpp-decomment)
* [wt-tools](https://github.com/klensy/wt-tools)
* [War Thunder CDK](https://wiki.warthunder.com/Download_War_Thunder_CDK)
* [War Thunder](https://warthunder.com/)


<!-- GETTING STARTED -->
## Getting started


### Prerequisites

1. Install War Thunder. Download: [https://warthunder.com/](https://warthunder.com/)

### Installation

1. Unzip the downloaded folder
2. Copy the contents of the .zip archive into your `War Thunder` install directory

### Installation from source

1. Clone the repo
```sh
git clone https://github.com/Lord-Mustang/hangar_field_mod.git
```
2. Make any necessary edits
3. Create a release version by running  `create_release.cmd`
4. Copy the contents of the `release` folder into your `War Thunder` install directory

<!-- USAGE EXAMPLES -->
## Usage

You can customise the hangar in your `config.blk` file in the root folder of your War Thunder installation.

It's important to launch the game via the launcher after adjusting these parameters, otherwise the changes will not be reflected in the game.

The following parameters are available:
```
hangar{
  weatherPreset:t="default"
  timePreset:t="env_realistic"
  vehiclePreset:t="ww2"
  premiumVehicles:b=yes
}
```

All parameters can be set using the launcher, but here's an overview if you want to do it manually.

weatherPreset:
```
"default"
"rain_uk"
"clear"
"good"
"hazy"
"cloudy"
"thin_clouds"
"thin_clouds_storm"
"poor"
"blind:
"rain"
"storm"
"thunder"
```

timePreset:
```
"env_current"
"env_dawn"
"env_default"
"env_dusk"
"env_realistic"
"env_realistic_day"
"env_realistic_night"
```

vehiclePreset:
```
"ww2"
"coldwar"
"modern"
```

premiumVehicles:
```
yes
no
```

<!-- PRESET EXAMPLES -->
## Preset customisation

** Advanced users only. Change any values here at your own risk **

Customisation of the hangar presets can be done in the `hangar_field_mod.blk` file in the top directory.

### Weather

The weather presets can be adjusted in the files in the following file:
```
/content/pkg_local/gameData/environments/weather_types_hangar_field_mod.blk
```

### Time of day

The time of day can be set with the files in the following directory:
```
content/pkg_local/gameData/scenes/timePresets/
```

The following time presets can be picked:
```
content/pkg_local/gameData/scenes/timePresets/env_current.blk
```
Current system time is applied as the hangar time. The launcher uses this preset.
```
content/pkg_local/gameData/scenes/timePresets/env_default.blk
```
Default hangar time.
```
content/pkg_local/gameData/scenes/timePresets/env_dawn.blk
```
Always dawn.
```
content/pkg_local/gameData/scenes/timePresets/env_dusk.blk
```
Always dusk.
```
content/pkg_local/gameData/scenes/timePresets/env_realistic_day.blk
```
Increased chance of daytime, but still a chance of nighttime.
```
content/pkg_local/gameData/scenes/timePresets/env_realistic_night.blk
```
Increased chance of nighttime, but still a chance of daytime.
```
content/pkg_local/gameData/scenes/timePresets/env_realistic.blk
```
Equal chances of night and daytime.


### Vehicles

You can adjust the vehicles that drive, shoot and fly in the hangar.

```
content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_modern.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_modern.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_modern.blk
```

The following presets are available:

Modern vehicles:
```
content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_modern.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_modern.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_modern.blk
```

Cold war vehicles:
```
content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_coldwar.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_coldwar.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_coldwar.blk
```

WW2 vehicles:
```
content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_ww2.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_ww2.blk
content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_ww2.blk
```

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing
Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License
Distributed under the MIT License. See `LICENSE` for more information.

* [War Thunder Terms of Use](https://warthunder.com/en/support/termsofuse/)
* [War Thunder End User License Agreement](https://warthunder.com/en/support/eula/)
* [War Thunder Contribution Agreement](https://live.warthunder.com/contribution_agreement/)


<!-- CONTACT -->
## Contact
Project Link: [https://github.com/Lord-Mustang/hangar_field_mod](https://github.com/Lord-Mustang/hangar_field_mod)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screenshot00.jpg