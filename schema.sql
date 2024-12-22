CREATE TABLE peopleswaterdata.physical
(
    `uuid` String,
    `parentUuid` String,
    `totalChlorineMg` Float32,
    `freeChlorineMgL` Float32,
    `hardnessMgL` Float32,
    `alkalinityMgL` Float32,
    `pH` Float32,
    `turbidityNTU` Float32,
    `orpMv` Float32,
    `tdsPpt` Float32,
    `tdsPpm` Float32,
    `conductivityS` Float32,
    `conductivityMs` Float32
)
ENGINE = MergeTree
ORDER BY uuid
SETTINGS index_granularity = 8192
CREATE TABLE peopleswaterdata.biological
(
    `uuid` String,
    `parentUuid` String,
    `presenceOfEColi` UInt8,
    `presenceOfTotalColiform` UInt8
)
ENGINE = MergeTree
ORDER BY uuid
SETTINGS index_granularity = 8192
CREATE TABLE peopleswaterdata.main
(
    `uuid` String,
    `createdAt` DateTime,
    `createdBy` String,
    `sampleId` String,
    `latitude` Float64,
    `longitude` Float64,
    `waterSourceType` Enum8(\'Household water sample\' = 1, \'Water bodies\' = 2),
    `respondentName` String,
    `gender` String,
    `ageGroup` Int32,
    `position` String,
    `education` String,
    `numberOfChildren` Int32,
    `drinkingWaterSource` String,
    `materialOfWaterContainer` String,
    `sourceOfAwareness` String,
    `waterTreatmentMethod` String,
    `drinkingWaterFeel` String,
    `drinkingWaterTaste` String,
    `drinkingWaterEffect` String,
    `familyHealth` Array(String),
    `drinkingWaterType` String,
    `utilizationPurpose` Array(String)
)
ENGINE = MergeTree
ORDER BY uuid
SETTINGS index_granularity = 8192
