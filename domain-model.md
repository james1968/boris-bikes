
|object      |message        |
|------------|---------------|
|person      |               |
|bike        |in_use         |
|bike        | check_if_working|
|docking_station|release_bike|

bike <-- in_use --> true/false
bike <-- check_if_working --> true/flase
docking_station <-- release_bike --> bike
