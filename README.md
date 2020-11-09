<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

This is a highly customizable version of War Thunder's field hangar, released in major update 2.0.

Features:
* Customizable weather
* Customizable time of day
* Switchable vehicle groups
* Full rotation and extended zoom range
* Removed camera ellipsoid movement
* Removable premium vehicles


Of course, you are free to add or suggest any preset you want.

### Built With
This project uses the following projects:
* [cpp-decomment](https://github.com/hkuno9000/cpp-decomment)
* [wt-tools](https://github.com/klensy/wt-tools)
* [War Thunder CDK](https://wiki.warthunder.com/Download_War_Thunder_CDK)
* [War Thunder](https://warthunder.com/)


<!-- GETTING STARTED -->
## Getting Started


### Prerequisites

1. Install War Thunder. Download: [https://warthunder.com/](https://warthunder.com/)

### Installation

1. Clone the repo
```sh
git clone https://github.com/Lord-Mustang/hangar_field_mod.git
```
2. Make any necessary edits
3. Create a release version by running  `hangar_mod_release.bat`
4. Copy the contents of the `hangar_mod_release` folder into your `War Thunder` install directory



<!-- USAGE EXAMPLES -->
## Usage

Customisation of the hangar can be done in the `hangar_field_mod.blk` file in the top directory.

### Weather

The weather can be adjusted in the following lines in the file:
```
weather:t="default"
hqWeather:t="default"
```

The following presets can be picked:
```
default
rain_uk
clear
good
hazy
cloudy
thin_clouds
thin_clouds_storm
poor
blind
rain
storm
thunder
```

### Time of day

The time of day can be set with the following line:
```
include"content/pkg_local/gameData/scenes/timePresets/env_realistic_day.blk"
```

The following time presets can be picked:
```
include"content/pkg_local/gameData/scenes/timePresets/env_default.blk"
```
Default hangar time
```
include"content/pkg_local/gameData/scenes/timePresets/env_dawn.blk"
```
Always dawn
```
include"content/pkg_local/gameData/scenes/timePresets/env_dusk.blk"
```
Always dusk
```
include"content/pkg_local/gameData/scenes/timePresets/env_realistic_day.blk"
```
Increased chance of daytime, but still a chance of nighttime.
```
include"content/pkg_local/gameData/scenes/timePresets/env_realistic_night.blk"
```
Increased chance of nighttime, but still a chance of daytime.
```
include"content/pkg_local/gameData/scenes/timePresets/env_realistic.blk"
```
Equal chances of night and daytime.


### Vehicles

You can adjust the vehicles that drive, shoot and fly in the hangar.

```
include"content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_modern.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_modern.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_modern.blk"
```

The following presets are available:

Modern vehicles:
```
include"content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_modern.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_modern.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_modern.blk"
```

Cold war vehicles:
```
include"content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_coldwar.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_coldwar.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_coldwar.blk"
```

WW2 vehicles:
```
include"content/pkg_local/gameData/scenes/vehiclePresets/shooting_tanks_ww2.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_tanks_ww2.blk"
include"content/pkg_local/gameData/scenes/vehiclePresets/moving_planes_ww2.blk"
```

### Premium vehicles

You can turn off the spots for premium vehicles. These spots will then be filled with vehicles from your lineup.

Premium vehicles enabled:
```
hangarMission:t="gameData/scenes/hangar_field_mission_mod_prem.blk"
```

Premium vehicles disabled:
```
hangarMission:t="gameData/scenes/hangar_field_mission_mod_noprem.blk"
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
All included software is 

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact
Project Link: [https://github.com/Lord-Mustang/hangar_field_mod](https://github.com/Lord-Mustang/hangar_field_mod)



<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [War Thunder Terms of Use](https://warthunder.com/en/support/termsofuse/)
* [War Thunder End User License Agreement](https://warthunder.com/en/support/eula/)
* [War Thunder Contribution Agreement](https://live.warthunder.com/contribution_agreement/)



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screenshot.png