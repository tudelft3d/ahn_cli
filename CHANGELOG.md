

# Changelog
## [0.2.0] - 2024-05-04
### Changed
* feat: Add validation for exclusive arguments
* feat: Update CLI options for city and bbox
* chore: Update validator to return click's error message
* fix: ahn classes

# Changelog
## [0.1.7] - 2024-03-05
### Changed
* Make `city` parameter as optional when bbox is specified
* Refactor and rename `pipeline` as it's not pipeline anymore

# Changelog
## [0.1.6] - 2024-02-23
### Changed

### Added
This is the first release of AHN CLI. There are a couple of features which helps users to easily download AHN point cloud data they need.
* Validation of user input
* Multi-thread download to speed up downloading time
* Rasterization of city polygon to reduce time complexity
* Filter points out by parameters such as classification classes, decimate, bounding box, etc
* Preview of downloaded data