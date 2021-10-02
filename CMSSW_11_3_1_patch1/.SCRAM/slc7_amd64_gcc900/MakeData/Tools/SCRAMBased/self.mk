ifeq ($(strip $(CalibrationEcalAlCaRecoProducersAuto)),)
CalibrationEcalAlCaRecoProducersAuto := self/src/Calibration/EcalAlCaRecoProducers/plugins
CalibrationEcalAlCaRecoProducersAuto_LOC_USE := self cmssw clhep CalibFormats/HcalObjects CalibFormats/SiStripObjects CalibTracker/Records CommonTools/UtilAlgos CondFormats/SiPixelObjects DataFormats/EgammaCandidates DataFormats/RecoCandidate DataFormats/TrackReco FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo Geometry/EcalMapping Geometry/HcalTowerAlgo Geometry/Records
ALL_EXTERNAL_PLUGIN_PRODS += CalibrationEcalAlCaRecoProducersAuto
Calibration/EcalAlCaRecoProducers_relbigobj+=CalibrationEcalAlCaRecoProducersAuto
endif
ifeq ($(strip $(Calibration/EcalAlCaRecoProducers)),)
CalibrationEcalAlCaRecoProducers := self/Calibration/EcalAlCaRecoProducers
Calibration/EcalAlCaRecoProducers := CalibrationEcalAlCaRecoProducers
CalibrationEcalAlCaRecoProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationEcalAlCaRecoProducers_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet DataFormats/EgammaCandidates DataFormats/EcalDetId,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += CalibrationEcalAlCaRecoProducers
CalibrationEcalAlCaRecoProducers_CLASS := LIBRARY
Calibration/EcalAlCaRecoProducers_relbigobj+=CalibrationEcalAlCaRecoProducers
endif
ifeq ($(strip $(CalibrationEcalCalibAlgosAuto)),)
CalibrationEcalCalibAlgosAuto := self/src/Calibration/EcalCalibAlgos/plugins
CalibrationEcalCalibAlgosAuto_LOC_USE := self cmssw Calibration/EcalCalibAlgos
ALL_EXTERNAL_PLUGIN_PRODS += CalibrationEcalCalibAlgosAuto
Calibration/EcalCalibAlgos_relbigobj+=CalibrationEcalCalibAlgosAuto
endif
ifeq ($(strip $(Calibration/EcalCalibAlgos)),)
CalibrationEcalCalibAlgos := self/Calibration/EcalCalibAlgos
Calibration/EcalCalibAlgos := CalibrationEcalCalibAlgos
CalibrationEcalCalibAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
CalibrationEcalCalibAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EcalDetId DataFormats/EgammaReco DataFormats/TrackReco DataFormats/EgammaCandidates DataFormats/TCDS CondFormats/EcalObjects CondFormats/DataRecord Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaClusterAlgos Geometry/EcalAlgo DataFormats/Math RecoEcal/EgammaCoreTools root xerces-c Calibration/Tools CalibCalorimetry/CaloMiscalibTools CondTools/Ecal SimDataFormats/GeneratorProducts DQMServices/Core CondCore/DBOutputService stdcxx-fs,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
CalibrationEcalCalibAlgos_EX_LIB   := CalibrationEcalCalibAlgos
ALL_EXTERNAL_PRODS += CalibrationEcalCalibAlgos
CalibrationEcalCalibAlgos_CLASS := LIBRARY
Calibration/EcalCalibAlgos_relbigobj+=CalibrationEcalCalibAlgos
endif
ifeq ($(strip $(CondToolsGeometryPlugins)),)
CondToolsGeometryPlugins := self/src/CondTools/Geometry/plugins
CondToolsGeometryPlugins_LOC_USE := self cmssw root CondCore/DBOutputService CondFormats/Common CondFormats/GeometryObjects DetectorDescription/Core DetectorDescription/DDCMS FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities Geometry/Records Geometry/TrackerGeometryBuilder Geometry/TrackerNumberingBuilder Geometry/CaloGeometry Geometry/EcalAlgo Geometry/HcalCommonData Geometry/HcalTowerAlgo Geometry/ForwardGeometry Geometry/CSCGeometryBuilder Geometry/DTGeometry Geometry/DTGeometryBuilder Geometry/RPCGeometry Geometry/RPCGeometryBuilder Geometry/GEMGeometry Geometry/GEMGeometryBuilder Geometry/MuonNumbering Geometry/HGCalGeometry Geometry/VeryForwardGeometryBuilder dd4hep
ALL_EXTERNAL_PLUGIN_PRODS += CondToolsGeometryPlugins
CondTools/Geometry_relbigobj+=CondToolsGeometryPlugins
endif
ifeq ($(strip $(DQMOfflineCalibCaloPlugins)),)
DQMOfflineCalibCaloPlugins := self/src/DQMOffline/CalibCalo/plugins
DQMOfflineCalibCaloPlugins_LOC_USE := self cmssw DQMOffline/CalibCalo
ALL_EXTERNAL_PLUGIN_PRODS += DQMOfflineCalibCaloPlugins
DQMOffline/CalibCalo_relbigobj+=DQMOfflineCalibCaloPlugins
endif
ifeq ($(strip $(DQMOffline/CalibCalo)),)
DQMOfflineCalibCalo := self/DQMOffline/CalibCalo
DQMOffline/CalibCalo := DQMOfflineCalibCalo
DQMOfflineCalibCalo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineCalibCalo_EX_USE := $(foreach d, self cmssw DQMServices/Core Geometry/Records Geometry/CaloGeometry DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/HLTReco DataFormats/JetReco DataFormats/HcalIsolatedTrack DataFormats/Math DataFormats/RecoCandidate DataFormats/FEDRawData FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology EventFilter/HcalRawToDigi RecoEcal/EgammaCoreTools rootphysics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineCalibCalo_EX_LIB   := DQMOfflineCalibCalo
ALL_EXTERNAL_PRODS += DQMOfflineCalibCalo
DQMOfflineCalibCalo_CLASS := LIBRARY
DQMOffline/CalibCalo_relbigobj+=DQMOfflineCalibCalo
endif
ifeq ($(strip $(DQMOfflineEGammaPlugins)),)
DQMOfflineEGammaPlugins := self/src/DQMOffline/EGamma/plugins
DQMOfflineEGammaPlugins_LOC_USE := self cmssw DQMOffline/EGamma DataFormats/EgammaReco DataFormats/EgammaCandidates DataFormats/ParticleFlowCandidate DataFormats/EcalRecHit DataFormats/MuonReco RecoEcal/EgammaCoreTools DataFormats/Math Geometry/CaloTopology Geometry/CaloGeometry DQMServices/Core clhep CommonTools/Statistics CommonTools/UtilAlgos root roofit boost
ALL_EXTERNAL_PLUGIN_PRODS += DQMOfflineEGammaPlugins
DQMOffline/EGamma_relbigobj+=DQMOfflineEGammaPlugins
endif
ifeq ($(strip $(DQMOffline/EGamma)),)
DQMOfflineEGamma := self/DQMOffline/EGamma
DQMOffline/EGamma := DQMOfflineEGamma
DQMOfflineEGamma_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
DQMOfflineEGamma_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DQMServices/Core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
DQMOfflineEGamma_EX_LIB   := DQMOfflineEGamma
ALL_EXTERNAL_PRODS += DQMOfflineEGamma
DQMOfflineEGamma_CLASS := LIBRARY
DQMOffline/EGamma_relbigobj+=DQMOfflineEGamma
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(FastSimulation/CaloGeometryTools)),)
FastSimulationCaloGeometryTools := self/FastSimulation/CaloGeometryTools
FastSimulation/CaloGeometryTools := FastSimulationCaloGeometryTools
FastSimulationCaloGeometryTools_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCaloGeometryTools_EX_USE := $(foreach d, self cmssw DataFormats/DetId DataFormats/EcalDetId DataFormats/GeometryVector DataFormats/Math FWCore/MessageLogger FWCore/ParameterSet FastSimulation/CalorimeterProperties Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo Geometry/HcalTowerAlgo clhep rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCaloGeometryTools_EX_LIB   := FastSimulationCaloGeometryTools
ALL_EXTERNAL_PRODS += FastSimulationCaloGeometryTools
FastSimulationCaloGeometryTools_CLASS := LIBRARY
FastSimulation/CaloGeometryTools_relbigobj+=FastSimulationCaloGeometryTools
endif
ifeq ($(strip $(FastSimulation/CaloHitMakers)),)
FastSimulationCaloHitMakers := self/FastSimulation/CaloHitMakers
FastSimulation/CaloHitMakers := FastSimulationCaloHitMakers
FastSimulationCaloHitMakers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCaloHitMakers_EX_USE := $(foreach d, self cmssw DataFormats/DetId DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/Math SimG4CMS/Calo FastSimulation/CaloGeometryTools FastSimulation/CalorimeterProperties FastSimulation/Event FastSimulation/Utilities Geometry/CaloTopology Geometry/EcalAlgo FWCore/MessageLogger rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCaloHitMakers_EX_LIB   := FastSimulationCaloHitMakers
ALL_EXTERNAL_PRODS += FastSimulationCaloHitMakers
FastSimulationCaloHitMakers_CLASS := LIBRARY
FastSimulation/CaloHitMakers_relbigobj+=FastSimulationCaloHitMakers
endif
ifeq ($(strip $(FastSimulation/CalorimeterProperties)),)
FastSimulationCalorimeterProperties := self/FastSimulation/CalorimeterProperties
FastSimulation/CalorimeterProperties := FastSimulationCalorimeterProperties
FastSimulationCalorimeterProperties_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationCalorimeterProperties_EX_USE := $(foreach d, self cmssw DataFormats/DetId DataFormats/EcalDetId FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationCalorimeterProperties_EX_LIB   := FastSimulationCalorimeterProperties
ALL_EXTERNAL_PRODS += FastSimulationCalorimeterProperties
FastSimulationCalorimeterProperties_CLASS := LIBRARY
FastSimulation/CalorimeterProperties_relbigobj+=FastSimulationCalorimeterProperties
endif
ifeq ($(strip $(Geometry/CaloEventSetup)),)
src_Geometry_CaloEventSetup := self/Geometry/CaloEventSetup
Geometry/CaloEventSetup  := src_Geometry_CaloEventSetup
src_Geometry_CaloEventSetup_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
src_Geometry_CaloEventSetup_EX_USE := $(foreach d, self cmssw CondFormats/Alignment CondFormats/GeometryObjects Geometry/Records,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_Geometry_CaloEventSetup
endif

ifeq ($(strip $(GeometryCaloEventSetupPlugins)),)
GeometryCaloEventSetupPlugins := self/src/Geometry/CaloEventSetup/plugins
GeometryCaloEventSetupPlugins_LOC_USE := self cmssw FWCore/Framework Geometry/Records Geometry/CaloGeometry Geometry/EcalAlgo Geometry/CaloTopology Geometry/HcalTowerAlgo Geometry/HGCalGeometry CondFormats/Alignment FWCore/MessageLogger FWCore/ParameterSet zlib
ALL_EXTERNAL_PLUGIN_PRODS += GeometryCaloEventSetupPlugins
Geometry/CaloEventSetup_relbigobj+=GeometryCaloEventSetupPlugins
endif
ifeq ($(strip $(GeometryEcalAlgoDD4HepPlugin)),)
GeometryEcalAlgoDD4HepPlugin := self/src/Geometry/EcalAlgo/plugins
GeometryEcalAlgoDD4HepPlugin_LOC_USE := self cmssw Geometry/CaloEventSetup Geometry/CaloGeometry Geometry/EcalAlgo DetectorDescription/Core DetectorDescription/DDCMS
ALL_EXTERNAL_PLUGIN_PRODS += GeometryEcalAlgoDD4HepPlugin
Geometry/EcalAlgo_relbigobj+=GeometryEcalAlgoDD4HepPlugin
endif
ifeq ($(strip $(GeometryEcalAlgoDDDPlugin)),)
GeometryEcalAlgoDDDPlugin := self/src/Geometry/EcalAlgo/plugins
GeometryEcalAlgoDDDPlugin_LOC_USE := self cmssw Geometry/CaloEventSetup Geometry/CaloGeometry Geometry/EcalAlgo DetectorDescription/Core DetectorDescription/DDCMS
ALL_EXTERNAL_PLUGIN_PRODS += GeometryEcalAlgoDDDPlugin
Geometry/EcalAlgo_relbigobj+=GeometryEcalAlgoDDDPlugin
endif
ifeq ($(strip $(Geometry/EcalAlgo)),)
GeometryEcalAlgo := self/Geometry/EcalAlgo
Geometry/EcalAlgo := GeometryEcalAlgo
GeometryEcalAlgo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalAlgo_EX_USE := $(foreach d, self cmssw Geometry/CaloGeometry DataFormats/EcalDetId clhep CondCore/DBOutputService CondFormats/Alignment CondFormats/AlignmentRecord Geometry/Records CondCore/CondDB FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities Geometry/EcalCommonData,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalAlgo_EX_LIB   := GeometryEcalAlgo
ALL_EXTERNAL_PRODS += GeometryEcalAlgo
GeometryEcalAlgo_CLASS := LIBRARY
Geometry/EcalAlgo_relbigobj+=GeometryEcalAlgo
endif
ifeq ($(strip $(DD4hep_GeometryEcalCommonDataPlugins)),)
DD4hep_GeometryEcalCommonDataPlugins := self/src/Geometry/EcalCommonData/plugins
DD4hep_GeometryEcalCommonDataPlugins_LOC_LIB   := Geom
DD4hep_GeometryEcalCommonDataPlugins_LOC_USE := self cmssw DetectorDescription/DDCMS Geometry/EcalCommonData dd4hep
ALL_EXTERNAL_PLUGIN_PRODS += DD4hep_GeometryEcalCommonDataPlugins
Geometry/EcalCommonData_relbigobj+=DD4hep_GeometryEcalCommonDataPlugins
endif
ifeq ($(strip $(GeometryEcalCommonDataPlugins)),)
GeometryEcalCommonDataPlugins := self/src/Geometry/EcalCommonData/plugins
GeometryEcalCommonDataPlugins_LOC_USE := self cmssw DetectorDescription/Core DetectorDescription/DDCMS Geometry/EcalCommonData Geometry/Records CondFormats/GeometryObjects
ALL_EXTERNAL_PLUGIN_PRODS += GeometryEcalCommonDataPlugins
Geometry/EcalCommonData_relbigobj+=GeometryEcalCommonDataPlugins
endif
ifeq ($(strip $(Geometry/EcalCommonData)),)
GeometryEcalCommonData := self/Geometry/EcalCommonData
Geometry/EcalCommonData := GeometryEcalCommonData
GeometryEcalCommonData_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalCommonData_EX_USE := $(foreach d, self cmssw DataFormats/EcalDetId Geometry/CaloGeometry DetectorDescription/Core DetectorDescription/DDCMS,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalCommonData_EX_LIB   := GeometryEcalCommonData
ALL_EXTERNAL_PRODS += GeometryEcalCommonData
GeometryEcalCommonData_CLASS := LIBRARY
Geometry/EcalCommonData_relbigobj+=GeometryEcalCommonData
endif
ifeq ($(strip $(GeometryEcalTestBeamPlugins)),)
GeometryEcalTestBeamPlugins := self/src/Geometry/EcalTestBeam/plugins
GeometryEcalTestBeamPlugins_LOC_USE := self cmssw DetectorDescription/Core FWCore/Framework FWCore/MessageLogger FWCore/Utilities Geometry/CaloGeometry Geometry/Records Geometry/EcalTestBeam clhep
ALL_EXTERNAL_PLUGIN_PRODS += GeometryEcalTestBeamPlugins
Geometry/EcalTestBeam_relbigobj+=GeometryEcalTestBeamPlugins
endif
ifeq ($(strip $(Geometry/EcalTestBeam)),)
GeometryEcalTestBeam := self/Geometry/EcalTestBeam
Geometry/EcalTestBeam := GeometryEcalTestBeam
GeometryEcalTestBeam_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeometryEcalTestBeam_EX_USE := $(foreach d, self cmssw FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/EcalCommonData SimDataFormats/EcalTestBeam clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeometryEcalTestBeam_EX_LIB   := GeometryEcalTestBeam
ALL_EXTERNAL_PRODS += GeometryEcalTestBeam
GeometryEcalTestBeam_CLASS := LIBRARY
Geometry/EcalTestBeam_relbigobj+=GeometryEcalTestBeam
endif
ifeq ($(strip $(HLTriggerspecialAuto)),)
HLTriggerspecialAuto := self/src/HLTrigger/special/plugins
HLTriggerspecialAuto_LOC_USE := self cmssw root CalibCalorimetry/EcalLaserCorrection CalibCalorimetry/EcalTPGTools Calibration/Tools CommonTools/UtilAlgos CondFormats/DataRecord CondFormats/EcalObjects CondFormats/RunInfo DataFormats/CSCDigi DataFormats/CSCRecHit DataFormats/CTPPSDetId DataFormats/Common DataFormats/DTDigi DataFormats/DetId DataFormats/EcalDetId DataFormats/EcalDigi DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/FEDRawData DataFormats/HLTReco DataFormats/HcalIsolatedTrack DataFormats/JetReco DataFormats/L1DTTrackFinder DataFormats/L1Trigger DataFormats/METReco DataFormats/Math DataFormats/MuonDetId DataFormats/RecoCandidate DataFormats/TCDS DataFormats/TrackReco DataFormats/TrackerRecHit2D DataFormats/VertexReco DataFormats/RPCRecHit EventFilter/HcalRawToDigi FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry Geometry/CSCGeometry Geometry/CaloGeometry Geometry/CaloTopology Geometry/CommonTopologies Geometry/DTGeometry Geometry/EcalAlgo Geometry/RPCGeometry Geometry/Records Geometry/TrackerGeometryBuilder HLTrigger/HLTcore RecoEcal/EgammaClusterAlgos RecoEcal/EgammaCoreTools TrackingTools/Records TrackingTools/TransientTrack
ALL_EXTERNAL_PLUGIN_PRODS += HLTriggerspecialAuto
HLTrigger/special_relbigobj+=HLTriggerspecialAuto
endif
ifeq ($(strip $(OnlineDBSiStripConfigDbPlugins)),)
OnlineDBSiStripConfigDbPlugins := self/src/OnlineDB/SiStripConfigDb/plugins
OnlineDBSiStripConfigDbPlugins_LOC_USE := self cmssw FWCore/ServiceRegistry OnlineDB/SiStripConfigDb
ALL_EXTERNAL_PLUGIN_PRODS += OnlineDBSiStripConfigDbPlugins
OnlineDB/SiStripConfigDb_relbigobj+=OnlineDBSiStripConfigDbPlugins
endif
ifeq ($(strip $(OnlineDB/SiStripConfigDb)),)
OnlineDBSiStripConfigDb := self/OnlineDB/SiStripConfigDb
OnlineDB/SiStripConfigDb := OnlineDBSiStripConfigDb
OnlineDBSiStripConfigDb_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
OnlineDBSiStripConfigDb_EX_USE := $(foreach d, self cmssw DataFormats/Common DataFormats/SiStripCommon FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities tkonlineswdb boost boost_serialization,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
OnlineDBSiStripConfigDb_EX_LIB   := OnlineDBSiStripConfigDb
ALL_EXTERNAL_PRODS += OnlineDBSiStripConfigDb
OnlineDBSiStripConfigDb_CLASS := LIBRARY
OnlineDB/SiStripConfigDb_relbigobj+=OnlineDBSiStripConfigDb
endif
ifeq ($(strip $(RecoEcal/EgammaClusterAlgos)),)
RecoEcalEgammaClusterAlgos := self/RecoEcal/EgammaClusterAlgos
RecoEcal/EgammaClusterAlgos := RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEcalEgammaClusterAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math DataFormats/ParticleFlowReco DataFormats/VertexReco CondFormats/ESObjects CondFormats/GBRForest CondFormats/DataRecord RecoEcal/EgammaCoreTools Geometry/CaloGeometry Geometry/CaloTopology RecoEgamma/EgammaTools RecoParticleFlow/PFClusterTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaClusterAlgos_EX_LIB   := RecoEcalEgammaClusterAlgos
ALL_EXTERNAL_PRODS += RecoEcalEgammaClusterAlgos
RecoEcalEgammaClusterAlgos_CLASS := LIBRARY
RecoEcal/EgammaClusterAlgos_relbigobj+=RecoEcalEgammaClusterAlgos
endif
ifeq ($(strip $(RecoEcal/EgammaClusterProducers)),)
RecoEcalEgammaClusterProducers := self/RecoEcal/EgammaClusterProducers
RecoEcal/EgammaClusterProducers := RecoEcalEgammaClusterProducers
RecoEcalEgammaClusterProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEcalEgammaClusterProducers_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EcalDigi DataFormats/EcalRecHit DataFormats/EgammaReco CondFormats/EcalObjects CondFormats/GBRForest CondFormats/DataRecord RecoLocalCalo/EcalRecAlgos Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaClusterAlgos Geometry/EcalAlgo DataFormats/Math RecoEcal/EgammaCoreTools clhep TrackingTools/TrackAssociator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoEcalEgammaClusterProducers
RecoEcalEgammaClusterProducers_CLASS := LIBRARY
RecoEcal/EgammaClusterProducers_relbigobj+=RecoEcalEgammaClusterProducers
endif
ifeq ($(strip $(RecoEcalEcalClusterFunctions)),)
RecoEcalEcalClusterFunctions := self/src/RecoEcal/EgammaCoreTools/plugins
RecoEcalEcalClusterFunctions_LOC_USE := self cmssw RecoEcal/EgammaCoreTools CondFormats/DataRecord CondFormats/EcalObjects
ALL_EXTERNAL_PLUGIN_PRODS += RecoEcalEcalClusterFunctions
RecoEcal/EgammaCoreTools_relbigobj+=RecoEcalEcalClusterFunctions
endif
ifeq ($(strip $(RecoEcal/EgammaCoreTools)),)
RecoEcalEgammaCoreTools := self/RecoEcal/EgammaCoreTools
RecoEcal/EgammaCoreTools := RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEcalEgammaCoreTools_EX_USE := $(foreach d, self cmssw DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/Math FWCore/Framework FWCore/Utilities FWCore/MessageLogger Geometry/CaloGeometry Geometry/CaloTopology Geometry/EcalAlgo RecoLocalCalo/EcalRecAlgos Geometry/Records CalibCalorimetry/EcalLaserCorrection clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoEcalEgammaCoreTools_EX_LIB   := RecoEcalEgammaCoreTools
ALL_EXTERNAL_PRODS += RecoEcalEgammaCoreTools
RecoEcalEgammaCoreTools_CLASS := LIBRARY
RecoEcal/EgammaCoreTools_relbigobj+=RecoEcalEgammaCoreTools
endif
ifeq ($(strip $(RecoEgammaEgammaHLTProducersPlugins)),)
RecoEgammaEgammaHLTProducersPlugins := self/src/RecoEgamma/EgammaHLTProducers/plugins
RecoEgammaEgammaHLTProducersPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EgammaCandidates Geometry/CaloGeometry RecoEcal/EgammaCoreTools RecoEgamma/EgammaIsolationAlgos RecoEgamma/EgammaTools MagneticField/Engine MagneticField/Records DataFormats/DetId DataFormats/TrackingRecHit CondFormats/L1TObjects CondFormats/DataRecord Geometry/TrackerGeometryBuilder DataFormats/L1Trigger DataFormats/L1TrackTrigger SimDataFormats/Associations SimDataFormats/TrackingAnalysis SimTracker/TrackTriggerAssociation TrackingTools/GsfTools
ALL_EXTERNAL_PLUGIN_PRODS += RecoEgammaEgammaHLTProducersPlugins
RecoEgamma/EgammaHLTProducers_relbigobj+=RecoEgammaEgammaHLTProducersPlugins
endif
ifeq ($(strip $(RecoEgamma/EgammaPhotonProducers)),)
RecoEgammaEgammaPhotonProducers := self/RecoEgamma/EgammaPhotonProducers
RecoEgamma/EgammaPhotonProducers := RecoEgammaEgammaPhotonProducers
RecoEgammaEgammaPhotonProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoEgammaEgammaPhotonProducers_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/ParticleFlowCandidate DataFormats/EgammaCandidates DataFormats/Common DataFormats/TrackCandidate DataFormats/TrackReco DataFormats/EgammaTrackReco DataFormats/CaloRecHit DataFormats/Math Geometry/CaloGeometry Geometry/CaloTopology RecoEcal/EgammaCoreTools RecoEgamma/EgammaIsolationAlgos RecoEgamma/EgammaPhotonAlgos RecoEgamma/PhotonIdentification RecoEgamma/EgammaTools RecoTracker/MeasurementDet RecoTracker/CkfPattern RecoTracker/TrackProducer DataFormats/HcalRecHit RecoCaloTools/Selectors clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoEgammaEgammaPhotonProducers
RecoEgammaEgammaPhotonProducers_CLASS := LIBRARY
RecoEgamma/EgammaPhotonProducers_relbigobj+=RecoEgammaEgammaPhotonProducers
endif
ifeq ($(strip $(RecoEgammaExamplesPlugins)),)
RecoEgammaExamplesPlugins := self/src/RecoEgamma/Examples/plugins
RecoEgammaExamplesPlugins_LOC_USE := self cmssw RecoEgamma/EgammaMCTools RecoEcal/EgammaCoreTools Geometry/CaloTopology Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder MagneticField/Engine MagneticField/Records CommonTools/UtilAlgos TrackingTools/MaterialEffects TrackingTools/TrajectoryState FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities DataFormats/BeamSpot DataFormats/CaloRecHit DataFormats/Common DataFormats/DetId DataFormats/EcalDetId DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/GeometryCommonDetAlgo DataFormats/GeometryVector DataFormats/GsfTrackReco DataFormats/JetReco DataFormats/Math DataFormats/PatCandidates DataFormats/SiStripDetId DataFormats/TrackerRecHit2D DataFormats/TrackReco DataFormats/TrajectoryState DQMServices/Core SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/Vertex
ALL_EXTERNAL_PLUGIN_PRODS += RecoEgammaExamplesPlugins
RecoEgamma/Examples_relbigobj+=RecoEgammaExamplesPlugins
endif
ifeq ($(strip $(RecoHIHiEgammaAlgosPlugins)),)
RecoHIHiEgammaAlgosPlugins := self/src/RecoHI/HiEgammaAlgos/plugins
RecoHIHiEgammaAlgosPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet FWCore/Utilities DataFormats/Common DataFormats/EgammaCandidates RecoHI/HiEgammaAlgos RecoLocalCalo/EcalRecAlgos RecoEcal/EgammaCoreTools FWCore/MessageLogger DataFormats/EgammaReco root
ALL_EXTERNAL_PLUGIN_PRODS += RecoHIHiEgammaAlgosPlugins
RecoHI/HiEgammaAlgos_relbigobj+=RecoHIHiEgammaAlgosPlugins
endif
ifeq ($(strip $(RecoHI/HiEgammaAlgos)),)
RecoHIHiEgammaAlgos := self/RecoHI/HiEgammaAlgos
RecoHI/HiEgammaAlgos := RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoHIHiEgammaAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/Candidate DataFormats/HepMCCandidate Geometry/CaloGeometry Geometry/CaloTopology Geometry/Records RecoEcal/EgammaCoreTools clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoHIHiEgammaAlgos_EX_LIB   := RecoHIHiEgammaAlgos
ALL_EXTERNAL_PRODS += RecoHIHiEgammaAlgos
RecoHIHiEgammaAlgos_CLASS := LIBRARY
RecoHI/HiEgammaAlgos_relbigobj+=RecoHIHiEgammaAlgos
endif
ifeq ($(strip $(RecoLocalCaloHGCalRecProducersPlugins)),)
RecoLocalCaloHGCalRecProducersPlugins := self/src/RecoLocalCalo/HGCalRecProducers/plugins
RecoLocalCaloHGCalRecProducersPlugins_LOC_USE := self cmssw cuda HeterogeneousCore/CUDACore HeterogeneousCore/CUDAUtilities FWCore/Framework FWCore/Utilities FWCore/ParameterSet DataFormats/HGCDigi DataFormats/HGCRecHit DataFormats/HcalDetId RecoLocalCalo/HGCalRecAlgos RecoLocalCalo/HGCalRecProducers FWCore/MessageLogger Geometry/CaloGeometry Geometry/HGCalGeometry Geometry/HGCalCommonData PhysicsTools/UtilAlgos CondFormats/DataRecord CondFormats/HGCalObjects
ALL_EXTERNAL_PLUGIN_PRODS += RecoLocalCaloHGCalRecProducersPlugins
RecoLocalCalo/HGCalRecProducers_relbigobj+=RecoLocalCaloHGCalRecProducersPlugins
endif
ifeq ($(strip $(RecoLocalCalo/HGCalRecProducers)),)
RecoLocalCaloHGCalRecProducers := self/RecoLocalCalo/HGCalRecProducers
RecoLocalCalo/HGCalRecProducers := RecoLocalCaloHGCalRecProducers
RecoLocalCaloHGCalRecProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalCaloHGCalRecProducers_EX_USE := $(foreach d, self cmssw cuda FWCore/Framework FWCore/Utilities FWCore/ParameterSet FWCore/ServiceRegistry FWCore/MessageLogger HeterogeneousCore/CUDACore HeterogeneousCore/CUDAUtilities DataFormats/HGCRecHit DataFormats/ForwardDetId CommonTools/UtilAlgos RecoLocalCalo/HGCalRecAlgos Geometry/HGCalGeometry Geometry/HGCalCommonData CondFormats/DataRecord CondFormats/HGCalObjects clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalCaloHGCalRecProducers_EX_LIB   := RecoLocalCaloHGCalRecProducers
ALL_EXTERNAL_PRODS += RecoLocalCaloHGCalRecProducers
RecoLocalCaloHGCalRecProducers_CLASS := LIBRARY
RecoLocalCalo/HGCalRecProducers_relbigobj+=RecoLocalCaloHGCalRecProducers
endif
ifeq ($(strip $(RecoLocalTrackerSiPixelRecHitsPlugins)),)
RecoLocalTrackerSiPixelRecHitsPlugins := self/src/RecoLocalTracker/SiPixelRecHits/plugins
RecoLocalTrackerSiPixelRecHitsPlugins_LOC_USE := self cmssw cuda fmt CUDADataFormats/BeamSpot CUDADataFormats/TrackingRecHit HeterogeneousCore/CUDACore RecoLocalTracker/ClusterParameterEstimator RecoLocalTracker/Records RecoLocalTracker/SiPixelRecHits DataFormats/TrackerCommon
ALL_EXTERNAL_PLUGIN_PRODS += RecoLocalTrackerSiPixelRecHitsPlugins
RecoLocalTracker/SiPixelRecHits_relbigobj+=RecoLocalTrackerSiPixelRecHitsPlugins
endif
ifeq ($(strip $(RecoLocalTracker/SiPixelRecHits)),)
RecoLocalTrackerSiPixelRecHits := self/RecoLocalTracker/SiPixelRecHits
RecoLocalTracker/SiPixelRecHits := RecoLocalTrackerSiPixelRecHits
RecoLocalTrackerSiPixelRecHits_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoLocalTrackerSiPixelRecHits_EX_USE := $(foreach d, self cmssw boost cuda vdt_headers CalibTracker/SiPixelESProducers CondFormats/SiPixelObjects CondFormats/SiPixelTransient DataFormats/TrackerCommon DataFormats/TrackerRecHit2D FWCore/ParameterSet HeterogeneousCore/CUDAUtilities RecoLocalTracker/ClusterParameterEstimator,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
RecoLocalTrackerSiPixelRecHits_EX_LIB   := RecoLocalTrackerSiPixelRecHits
ALL_EXTERNAL_PRODS += RecoLocalTrackerSiPixelRecHits
RecoLocalTrackerSiPixelRecHits_CLASS := LIBRARY
RecoLocalTracker/SiPixelRecHits_relbigobj+=RecoLocalTrackerSiPixelRecHits
endif
ifeq ($(strip $(METFilters_plugins)),)
METFilters_plugins := self/src/RecoMET/METFilters/plugins
METFilters_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EcalDetId Geometry/CaloTopology Geometry/CaloGeometry Geometry/Records CalibCalorimetry/EcalTPGTools CondFormats/EcalObjects DataFormats/PatCandidates DataFormats/ParticleFlowCandidate RecoParticleFlow/PFProducer DataFormats/DetId CondFormats/DataRecord CondFormats/HcalObjects DataFormats/HcalDetId DataFormats/HcalRecHit RecoJets/JetProducers root
ALL_EXTERNAL_PLUGIN_PRODS += METFilters_plugins
RecoMET/METFilters_relbigobj+=METFilters_plugins
endif
ifeq ($(strip $(SimG4CMSCaloPlugins)),)
SimG4CMSCaloPlugins := self/src/SimG4CMS/Calo/plugins
SimG4CMSCaloPlugins_LOC_USE := self cmssw CommonTools/UtilAlgos DataFormats/EcalDetId DataFormats/HcalDetId FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/PluginManager FWCore/ServiceRegistry Geometry/HcalCommonData Geometry/HcalTowerAlgo Geometry/HGCalGeometry Geometry/CaloTopology SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts SimG4Core/Watcher SimG4CMS/Calo boost root clhep
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSCaloPlugins
SimG4CMS/Calo_relbigobj+=SimG4CMSCaloPlugins
endif
ifeq ($(strip $(SimG4CMS/Calo)),)
SimG4CMSCalo := self/SimG4CMS/Calo
SimG4CMS/Calo := SimG4CMSCalo
SimG4CMSCalo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSCalo_EX_USE := $(foreach d, self cmssw FWCore/PluginManager SimGeneral/GFlash SimG4Core/SensitiveDetector SimG4Core/Notification DataFormats/EcalDetId DataFormats/HcalDetId DataFormats/ForwardDetId DataFormats/Math CondFormats/GeometryObjects CondFormats/HcalObjects CondFormats/DataRecord SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/CaloTest Geometry/HcalCommonData Geometry/EcalCommonData Geometry/HGCalCommonData FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost clhep dd4hep geant4core hepmc root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCalo_EX_LIB   := SimG4CMSCalo
ALL_EXTERNAL_PRODS += SimG4CMSCalo
SimG4CMSCalo_CLASS := LIBRARY
SimG4CMS/Calo_relbigobj+=SimG4CMSCalo
endif
ifeq ($(strip $(SimG4CMSCherenkovAnalysisPlugins)),)
SimG4CMSCherenkovAnalysisPlugins := self/src/SimG4CMS/CherenkovAnalysis/plugins
SimG4CMSCherenkovAnalysisPlugins_LOC_USE := self cmssw CommonTools/UtilAlgos FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry SimG4Core/SensitiveDetector SimDataFormats/CaloHit geant4core root SimG4CMS/CherenkovAnalysis
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSCherenkovAnalysisPlugins
SimG4CMS/CherenkovAnalysis_relbigobj+=SimG4CMSCherenkovAnalysisPlugins
endif
ifeq ($(strip $(SimG4CMS/CherenkovAnalysis)),)
SimG4CMSCherenkovAnalysis := self/SimG4CMS/CherenkovAnalysis
SimG4CMS/CherenkovAnalysis := SimG4CMSCherenkovAnalysis
SimG4CMSCherenkovAnalysis_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSCherenkovAnalysis_EX_USE := $(foreach d, self cmssw FWCore/MessageLogger FWCore/ServiceRegistry SimG4Core/Notification SimG4CMS/Calo DetectorDescription/Core DetectorDescription/DDCMS geant4core dd4hep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSCherenkovAnalysis_EX_LIB   := SimG4CMSCherenkovAnalysis
ALL_EXTERNAL_PRODS += SimG4CMSCherenkovAnalysis
SimG4CMSCherenkovAnalysis_CLASS := LIBRARY
SimG4CMS/CherenkovAnalysis_relbigobj+=SimG4CMSCherenkovAnalysis
endif
ifeq ($(strip $(SimG4CMSEcalTestBeamAuto)),)
SimG4CMSEcalTestBeamAuto := self/src/SimG4CMS/EcalTestBeam/plugins
SimG4CMSEcalTestBeamAuto_LOC_USE := self cmssw FWCore/Framework SimG4CMS/EcalTestBeam
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSEcalTestBeamAuto
SimG4CMS/EcalTestBeam_relbigobj+=SimG4CMSEcalTestBeamAuto
endif
ifeq ($(strip $(SimG4CMS/EcalTestBeam)),)
SimG4CMSEcalTestBeam := self/SimG4CMS/EcalTestBeam
SimG4CMS/EcalTestBeam := SimG4CMSEcalTestBeam
SimG4CMSEcalTestBeam_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSEcalTestBeam_EX_USE := $(foreach d, self cmssw DataFormats/Common DetectorDescription/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/EcalCommonData Geometry/EcalTestBeam SimDataFormats/EcalTestBeam SimDataFormats/GeneratorProducts SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo TBDataFormats/EcalTBObjects clhep rootmath geant4core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSEcalTestBeam_EX_LIB   := SimG4CMSEcalTestBeam
ALL_EXTERNAL_PRODS += SimG4CMSEcalTestBeam
SimG4CMSEcalTestBeam_CLASS := LIBRARY
SimG4CMS/EcalTestBeam_relbigobj+=SimG4CMSEcalTestBeam
endif
ifeq ($(strip $(SimG4CMSFP420Plugins)),)
SimG4CMSFP420Plugins := self/src/SimG4CMS/FP420/plugins
SimG4CMSFP420Plugins_LOC_FLAGS_REM_CXXFLAGS   := -Werror=unused-variable
SimG4CMSFP420Plugins_LOC_USE := self cmssw SimG4CMS/FP420
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSFP420Plugins
SimG4CMS/FP420_relbigobj+=SimG4CMSFP420Plugins
endif
ifeq ($(strip $(SimG4CMS/FP420)),)
SimG4CMSFP420 := self/SimG4CMS/FP420
SimG4CMS/FP420 := SimG4CMSFP420
SimG4CMSFP420_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSFP420_EX_USE := $(foreach d, self cmssw SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimDataFormats/SimHitMaker DataFormats/GeometryVector FWCore/Framework FWCore/ParameterSet boost geant4core root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSFP420_EX_LIB   := SimG4CMSFP420
ALL_EXTERNAL_PRODS += SimG4CMSFP420
SimG4CMSFP420_CLASS := LIBRARY
SimG4CMS/FP420_relbigobj+=SimG4CMSFP420
endif
ifeq ($(strip $(SimG4CMSForwardPlugins)),)
SimG4CMSForwardPlugins := self/src/SimG4CMS/Forward/plugins
SimG4CMSForwardPlugins_LOC_USE := self cmssw FWCore/PluginManager SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4CMS/Forward SimDataFormats/CaloTest FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger geant4core root rootmath
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSForwardPlugins
SimG4CMS/Forward_relbigobj+=SimG4CMSForwardPlugins
endif
ifeq ($(strip $(SimG4CMS/Forward)),)
SimG4CMSForward := self/SimG4CMS/Forward
SimG4CMS/Forward := SimG4CMSForward
SimG4CMSForward_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSForward_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Physics SimG4CMS/Calo DataFormats/ForwardDetId DataFormats/Math SimDataFormats/SimHitMaker SimDataFormats/CaloHit SimDataFormats/Forward Geometry/MTDCommonData boost clhep geant4core root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSForward_EX_LIB   := SimG4CMSForward
ALL_EXTERNAL_PRODS += SimG4CMSForward
SimG4CMSForward_CLASS := LIBRARY
SimG4CMS/Forward_relbigobj+=SimG4CMSForward
endif
ifeq ($(strip $(SimG4CMSTestBeamPlugins)),)
SimG4CMSTestBeamPlugins := self/src/SimG4CMS/HGCalTestBeam/plugins
SimG4CMSTestBeamPlugins_LOC_USE := self cmssw CommonTools/UtilAlgos DataFormats/ForwardDetId FWCore/Framework FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry Geometry/HGCalCommonData Geometry/HGCalGeometry Geometry/Records SimDataFormats/CaloTest SimDataFormats/GeneratorProducts SimDataFormats/HcalTestBeam SimDataFormats/Track SimDataFormats/Vertex SimG4CMS/Calo SimG4CMS/HGCalTestBeam SimG4Core/Notification SimG4Core/Watcher geant4core clhep rootphysics root hepmc
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSTestBeamPlugins
SimG4CMS/HGCalTestBeam_relbigobj+=SimG4CMSTestBeamPlugins
endif
ifeq ($(strip $(SimG4CMS/HGCalTestBeam)),)
SimG4CMSHGCalTestBeam := self/SimG4CMS/HGCalTestBeam
SimG4CMS/HGCalTestBeam := SimG4CMSHGCalTestBeam
SimG4CMSHGCalTestBeam_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSHGCalTestBeam_EX_USE := $(foreach d, self cmssw DataFormats/HcalDetId FWCore/ParameterSet Geometry/HGCalCommonData,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSHGCalTestBeam_EX_LIB   := SimG4CMSHGCalTestBeam
ALL_EXTERNAL_PRODS += SimG4CMSHGCalTestBeam
SimG4CMSHGCalTestBeam_CLASS := LIBRARY
SimG4CMS/HGCalTestBeam_relbigobj+=SimG4CMSHGCalTestBeam
endif
ifeq ($(strip $(SimG4CMSHcalTestBeamPlugins)),)
SimG4CMSHcalTestBeamPlugins := self/src/SimG4CMS/HcalTestBeam/plugins
SimG4CMSHcalTestBeamPlugins_LOC_USE := self cmssw DataFormats/HcalDetId DataFormats/Math Geometry/EcalCommonData Geometry/HcalTestBeamData SimDataFormats/HcalTestBeam SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos geant4core hepmc clhep rootmath rootphysics root
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSHcalTestBeamPlugins
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeamPlugins
endif
ifeq ($(strip $(SimG4CMS/Muon)),)
SimG4CMSMuon := self/SimG4CMS/Muon
SimG4CMS/Muon := SimG4CMSMuon
SimG4CMSMuon_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSMuon_EX_USE := $(foreach d, self cmssw CondFormats/GeometryObjects Geometry/MuonNumbering Geometry/Records SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Physics SimDataFormats/SimHitMaker boost geant4core hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimG4CMSMuon
SimG4CMSMuon_CLASS := LIBRARY
SimG4CMS/Muon_relbigobj+=SimG4CMSMuon
endif
ifeq ($(strip $(SimG4CMSPPSPlugins)),)
SimG4CMSPPSPlugins := self/src/SimG4CMS/PPS/plugins
SimG4CMSPPSPlugins_LOC_USE := self cmssw FWCore/PluginManager SimG4CMS/PPS
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSPPSPlugins
SimG4CMS/PPS_relbigobj+=SimG4CMSPPSPlugins
endif
ifeq ($(strip $(SimG4CMS/PPS)),)
SimG4CMSPPS := self/SimG4CMS/PPS
SimG4CMS/PPS := SimG4CMSPPS
SimG4CMSPPS_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSPPS_EX_USE := $(foreach d, self cmssw DataFormats/CTPPSDetId SimG4Core/SensitiveDetector SimDataFormats/SimHitMaker geant4core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSPPS_EX_LIB   := SimG4CMSPPS
ALL_EXTERNAL_PRODS += SimG4CMSPPS
SimG4CMSPPS_CLASS := LIBRARY
SimG4CMS/PPS_relbigobj+=SimG4CMSPPS
endif
ifeq ($(strip $(SimG4CMSHcalForwardLibWriter)),)
SimG4CMSHcalForwardLibWriter := self/src/SimG4CMS/ShowerLibraryProducer/plugins
SimG4CMSHcalForwardLibWriter_LOC_USE := self cmssw root FWCore/PluginManager SimG4CMS/ShowerLibraryProducer
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSHcalForwardLibWriter
SimG4CMS/ShowerLibraryProducer_relbigobj+=SimG4CMSHcalForwardLibWriter
endif
ifeq ($(strip $(SimG4CMSShowerLibraryProducerPlugins)),)
SimG4CMSShowerLibraryProducerPlugins := self/src/SimG4CMS/ShowerLibraryProducer/plugins
SimG4CMSShowerLibraryProducerPlugins_LOC_USE := self cmssw root FWCore/PluginManager SimG4CMS/ShowerLibraryProducer
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSShowerLibraryProducerPlugins
SimG4CMS/ShowerLibraryProducer_relbigobj+=SimG4CMSShowerLibraryProducerPlugins
endif
ifeq ($(strip $(SimG4CMS/ShowerLibraryProducer)),)
SimG4CMSShowerLibraryProducer := self/SimG4CMS/ShowerLibraryProducer
SimG4CMS/ShowerLibraryProducer := SimG4CMSShowerLibraryProducer
SimG4CMSShowerLibraryProducer_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSShowerLibraryProducer_EX_USE := $(foreach d, self cmssw SimG4Core/Watcher SimG4Core/SensitiveDetector SimG4Core/Notification SimG4CMS/Calo SimG4CMS/Forward DataFormats/Math SimDataFormats/CaloHit FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos boost geant4core root rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSShowerLibraryProducer_EX_LIB   := SimG4CMSShowerLibraryProducer
ALL_EXTERNAL_PRODS += SimG4CMSShowerLibraryProducer
SimG4CMSShowerLibraryProducer_CLASS := LIBRARY
SimG4CMS/ShowerLibraryProducer_relbigobj+=SimG4CMSShowerLibraryProducer
endif
ifeq ($(strip $(SimG4CMSTrackerPlugins)),)
SimG4CMSTrackerPlugins := self/src/SimG4CMS/Tracker/plugins
SimG4CMSTrackerPlugins_LOC_USE := self cmssw SimG4CMS/Tracker SimG4Core/SensitiveDetector geant4core
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CMSTrackerPlugins
SimG4CMS/Tracker_relbigobj+=SimG4CMSTrackerPlugins
endif
ifeq ($(strip $(SimG4CMS/Tracker)),)
SimG4CMSTracker := self/SimG4CMS/Tracker
SimG4CMS/Tracker := SimG4CMSTracker
SimG4CMSTracker_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSTracker_EX_USE := $(foreach d, self cmssw SimG4Core/SensitiveDetector SimG4Core/Notification SimG4Core/Physics Geometry/Records Geometry/TrackerNumberingBuilder geant4core SimDataFormats/SimHitMaker,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSTracker_EX_LIB   := SimG4CMSTracker
ALL_EXTERNAL_PRODS += SimG4CMSTracker
SimG4CMSTracker_CLASS := LIBRARY
SimG4CMS/Tracker_relbigobj+=SimG4CMSTracker
endif
ifeq ($(strip $(SimG4CoreApplicationPlugins)),)
SimG4CoreApplicationPlugins := self/src/SimG4Core/Application/plugins
SimG4CoreApplicationPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex geant4core hepmc SimG4Core/Application
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CoreApplicationPlugins
SimG4Core/Application_relbigobj+=SimG4CoreApplicationPlugins
endif
ifeq ($(strip $(SimG4Core/Application)),)
SimG4CoreApplication := self/SimG4Core/Application
SimG4Core/Application := SimG4CoreApplication
SimG4CoreApplication_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreApplication_EX_USE := $(foreach d, self cmssw DataFormats/Common SimDataFormats/GeneratorProducts SimDataFormats/Forward SimG4Core/Generators SimG4Core/Geometry DetectorDescription/DDCMS SimG4Core/MagneticField SimG4Core/Notification SimG4Core/PhysicsLists SimG4Core/CustomPhysics SimG4Core/Physics SimG4Core/SensitiveDetector SimG4Core/Watcher SimGeneral/HepPDTRecord SimGeneral/GFlash FWCore/ParameterSet FWCore/Framework FWCore/Utilities MagneticField/Engine MagneticField/Records clhep xerces-c geant4core hepmc heppdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreApplication_EX_LIB   := SimG4CoreApplication
ALL_EXTERNAL_PRODS += SimG4CoreApplication
SimG4CoreApplication_CLASS := LIBRARY
SimG4Core/Application_relbigobj+=SimG4CoreApplication
endif
ifeq ($(strip $(SimG4CoreCustomPhysicsPlugins)),)
SimG4CoreCustomPhysicsPlugins := self/src/SimG4Core/CustomPhysics/plugins
SimG4CoreCustomPhysicsPlugins_LOC_USE := self cmssw SimG4Core/Watcher SimG4Core/Notification FWCore/ParameterSet geant4core clhep boost SimG4Core/CustomPhysics
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CoreCustomPhysicsPlugins
SimG4Core/CustomPhysics_relbigobj+=SimG4CoreCustomPhysicsPlugins
endif
ifeq ($(strip $(SimG4Core/CustomPhysics)),)
SimG4CoreCustomPhysics := self/SimG4Core/CustomPhysics
SimG4Core/CustomPhysics := SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreCustomPhysics_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/MessageLogger SimG4Core/Physics SimG4Core/PhysicsLists geant4core clhep boost rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreCustomPhysics_EX_LIB   := SimG4CoreCustomPhysics
ALL_EXTERNAL_PRODS += SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_CLASS := LIBRARY
SimG4Core/CustomPhysics_relbigobj+=SimG4CoreCustomPhysics
endif
ifeq ($(strip $(SimG4Core/DD4hepGeometry)),)
SimG4CoreDD4hepGeometry := self/SimG4Core/DD4hepGeometry
SimG4Core/DD4hepGeometry := SimG4CoreDD4hepGeometry
SimG4CoreDD4hepGeometry_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreDD4hepGeometry_EX_USE := $(foreach d, self cmssw dd4hep-core dd4hep-geant4 geant4core FWCore/MessageLogger rootgeom rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreDD4hepGeometry_EX_LIB   := SimG4CoreDD4hepGeometry
ALL_EXTERNAL_PRODS += SimG4CoreDD4hepGeometry
SimG4CoreDD4hepGeometry_CLASS := LIBRARY
SimG4Core/DD4hepGeometry_relbigobj+=SimG4CoreDD4hepGeometry
endif
ifeq ($(strip $(SimG4CoreGFlashPlugins)),)
SimG4CoreGFlashPlugins := self/src/SimG4Core/GFlash/plugins
SimG4CoreGFlashPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/PluginManager SimG4Core/PhysicsLists SimG4Core/Notification SimG4Core/Watcher SimG4Core/GFlash geant4core clhep root
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CoreGFlashPlugins
SimG4Core/GFlash_relbigobj+=SimG4CoreGFlashPlugins
endif
ifeq ($(strip $(SimG4Core/GFlash)),)
SimG4CoreGFlash := self/SimG4Core/GFlash
SimG4Core/GFlash := SimG4CoreGFlash
SimG4CoreGFlash_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGFlash_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet FWCore/MessageLogger SimG4Core/PhysicsLists SimG4Core/Application SimGeneral/GFlash geant4core clhep root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGFlash_EX_LIB   := SimG4CoreGFlash
ALL_EXTERNAL_PRODS += SimG4CoreGFlash
SimG4CoreGFlash_CLASS := LIBRARY
SimG4Core/GFlash_relbigobj+=SimG4CoreGFlash
endif
ifeq ($(strip $(SimG4Core/Generators)),)
SimG4CoreGenerators := self/SimG4Core/Generators
SimG4Core/Generators := SimG4CoreGenerators
SimG4CoreGenerators_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGenerators_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet FWCore/MessageLogger boost hepmc heppdt geant4core rootmath expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGenerators_EX_LIB   := SimG4CoreGenerators
ALL_EXTERNAL_PRODS += SimG4CoreGenerators
SimG4CoreGenerators_CLASS := LIBRARY
SimG4Core/Generators_relbigobj+=SimG4CoreGenerators
endif
ifeq ($(strip $(SimG4Core/Geometry)),)
SimG4CoreGeometry := self/SimG4Core/Geometry
SimG4Core/Geometry := SimG4CoreGeometry
SimG4CoreGeometry_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGeometry_EX_USE := $(foreach d, self cmssw DetectorDescription/Core geant4core DetectorDescription/DDCMS dd4hep-core dd4hep-geant4 FWCore/MessageLogger FWCore/Utilities xerces-c expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGeometry_EX_LIB   := SimG4CoreGeometry
ALL_EXTERNAL_PRODS += SimG4CoreGeometry
SimG4CoreGeometry_CLASS := LIBRARY
SimG4Core/Geometry_relbigobj+=SimG4CoreGeometry
endif
ifeq ($(strip $(SimG4Core/HelpfulWatchers)),)
SimG4CoreHelpfulWatchers := self/SimG4Core/HelpfulWatchers
SimG4Core/HelpfulWatchers := SimG4CoreHelpfulWatchers
SimG4CoreHelpfulWatchers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreHelpfulWatchers_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet SimG4Core/Watcher SimG4Core/Notification boost geant4core CommonTools/UtilAlgos MagneticField/Engine MagneticField/Records SimG4Core/Physics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimG4CoreHelpfulWatchers
SimG4CoreHelpfulWatchers_CLASS := LIBRARY
SimG4Core/HelpfulWatchers_relbigobj+=SimG4CoreHelpfulWatchers
endif
ifeq ($(strip $(SimG4Core/MagneticField)),)
SimG4CoreMagneticField := self/SimG4Core/MagneticField
SimG4Core/MagneticField := SimG4CoreMagneticField
SimG4CoreMagneticField_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreMagneticField_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet boost geant4core expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreMagneticField_EX_LIB   := SimG4CoreMagneticField
ALL_EXTERNAL_PRODS += SimG4CoreMagneticField
SimG4CoreMagneticField_CLASS := LIBRARY
SimG4Core/MagneticField_relbigobj+=SimG4CoreMagneticField
endif
ifeq ($(strip $(SimG4Core/Notification)),)
SimG4CoreNotification := self/SimG4Core/Notification
SimG4Core/Notification := SimG4CoreNotification
SimG4CoreNotification_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreNotification_EX_USE := $(foreach d, self cmssw SimDataFormats/Forward SimDataFormats/Track SimDataFormats/Vertex DataFormats/Math geant4core FWCore/MessageLogger rootmath expat hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreNotification_EX_LIB   := SimG4CoreNotification
ALL_EXTERNAL_PRODS += SimG4CoreNotification
SimG4CoreNotification_CLASS := LIBRARY
SimG4Core/Notification_relbigobj+=SimG4CoreNotification
endif
ifeq ($(strip $(SimG4Core/Physics)),)
SimG4CorePhysics := self/SimG4Core/Physics
SimG4Core/Physics := SimG4CorePhysics
SimG4CorePhysics_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CorePhysics_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet geant4core heppdt boost expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CorePhysics_EX_LIB   := SimG4CorePhysics
ALL_EXTERNAL_PRODS += SimG4CorePhysics
SimG4CorePhysics_CLASS := LIBRARY
SimG4Core/Physics_relbigobj+=SimG4CorePhysics
endif
ifeq ($(strip $(SimG4CorePhysicsListsPlugins)),)
SimG4CorePhysicsListsPlugins := self/src/SimG4Core/PhysicsLists/plugins
SimG4CorePhysicsListsPlugins_LOC_USE := self cmssw FWCore/ParameterSet FWCore/MessageLogger SimG4Core/Physics geant4core clhep heppdt boost SimG4Core/PhysicsLists
ALL_EXTERNAL_PLUGIN_PRODS += SimG4CorePhysicsListsPlugins
SimG4Core/PhysicsLists_relbigobj+=SimG4CorePhysicsListsPlugins
endif
ifeq ($(strip $(SimG4Core/PhysicsLists)),)
SimG4CorePhysicsLists := self/SimG4Core/PhysicsLists
SimG4Core/PhysicsLists := SimG4CorePhysicsLists
SimG4CorePhysicsLists_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CorePhysicsLists_EX_USE := $(foreach d, self cmssw boost clhep geant4core heppdt FWCore/MessageLogger SimG4Core/MagneticField SimG4Core/Physics,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CorePhysicsLists_EX_LIB   := SimG4CorePhysicsLists
ALL_EXTERNAL_PRODS += SimG4CorePhysicsLists
SimG4CorePhysicsLists_CLASS := LIBRARY
SimG4Core/PhysicsLists_relbigobj+=SimG4CorePhysicsLists
endif
ifeq ($(strip $(SimG4Core/PrintGeomInfo)),)
SimG4CorePrintGeomInfo := self/SimG4Core/PrintGeomInfo
SimG4Core/PrintGeomInfo := SimG4CorePrintGeomInfo
SimG4CorePrintGeomInfo_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CorePrintGeomInfo_EX_USE := $(foreach d, self cmssw DetectorDescription/Core DetectorDescription/DDCMS SimG4Core/Notification SimG4Core/Watcher FWCore/ParameterSet Geometry/Records geant4core dd4hep boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimG4CorePrintGeomInfo
SimG4CorePrintGeomInfo_CLASS := LIBRARY
SimG4Core/PrintGeomInfo_relbigobj+=SimG4CorePrintGeomInfo
endif
ifeq ($(strip $(SimG4Core/SaveSimTrackAction)),)
SimG4CoreSaveSimTrackAction := self/SimG4Core/SaveSimTrackAction
SimG4Core/SaveSimTrackAction := SimG4CoreSaveSimTrackAction
SimG4CoreSaveSimTrackAction_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreSaveSimTrackAction_EX_USE := $(foreach d, self cmssw SimG4Core/Notification SimG4Core/Watcher FWCore/PluginManager FWCore/ParameterSet geant4core boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimG4CoreSaveSimTrackAction
SimG4CoreSaveSimTrackAction_CLASS := LIBRARY
SimG4Core/SaveSimTrackAction_relbigobj+=SimG4CoreSaveSimTrackAction
endif
ifeq ($(strip $(SimG4Core/SensitiveDetector)),)
SimG4CoreSensitiveDetector := self/SimG4Core/SensitiveDetector
SimG4Core/SensitiveDetector := SimG4CoreSensitiveDetector
SimG4CoreSensitiveDetector_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreSensitiveDetector_EX_USE := $(foreach d, self cmssw DataFormats/GeometryVector FWCore/MessageLogger FWCore/PluginManager SimG4Core/Geometry SimG4Core/Notification geant4core,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreSensitiveDetector_EX_LIB   := SimG4CoreSensitiveDetector
ALL_EXTERNAL_PRODS += SimG4CoreSensitiveDetector
SimG4CoreSensitiveDetector_CLASS := LIBRARY
SimG4Core/SensitiveDetector_relbigobj+=SimG4CoreSensitiveDetector
endif
ifeq ($(strip $(SimG4Core/TrackingVerbose)),)
SimG4CoreTrackingVerbose := self/SimG4Core/TrackingVerbose
SimG4Core/TrackingVerbose := SimG4CoreTrackingVerbose
SimG4CoreTrackingVerbose_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreTrackingVerbose_EX_USE := $(foreach d, self cmssw SimG4Core/Application geant4core boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimG4CoreTrackingVerbose
SimG4CoreTrackingVerbose_CLASS := LIBRARY
SimG4Core/TrackingVerbose_relbigobj+=SimG4CoreTrackingVerbose
endif
ifeq ($(strip $(SimGeneralMixingModulePlugins)),)
SimGeneralMixingModulePlugins := self/src/SimGeneral/MixingModule/plugins
SimGeneralMixingModulePlugins_LOC_USE := self cmssw DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/PluginManager Mixing/Base SimDataFormats/CaloHit SimDataFormats/CrossingFrame SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimDataFormats/GeneratorProducts SimGeneral/MixingModule clhep CondFormats/DataRecord CondFormats/RunInfo CondCore/DBOutputService DataFormats/TrackerRecHit2D
ALL_EXTERNAL_PLUGIN_PRODS += SimGeneralMixingModulePlugins
SimGeneral/MixingModule_relbigobj+=SimGeneralMixingModulePlugins
endif
ifeq ($(strip $(SimGeneral/MixingModule)),)
SimGeneralMixingModule := self/SimGeneral/MixingModule
SimGeneral/MixingModule := SimGeneralMixingModule
SimGeneralMixingModule_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralMixingModule_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralMixingModule_EX_LIB   := SimGeneralMixingModule
ALL_EXTERNAL_PRODS += SimGeneralMixingModule
SimGeneralMixingModule_CLASS := LIBRARY
SimGeneral/MixingModule_relbigobj+=SimGeneralMixingModule
endif
ifeq ($(strip $(SimRomanPotSimFP420Plugins)),)
SimRomanPotSimFP420Plugins := self/src/SimRomanPot/SimFP420/plugins
SimRomanPotSimFP420Plugins_LOC_USE := self cmssw SimGeneral/HepPDTRecord SimRomanPot/SimFP420
ALL_EXTERNAL_PLUGIN_PRODS += SimRomanPotSimFP420Plugins
SimRomanPot/SimFP420_relbigobj+=SimRomanPotSimFP420Plugins
endif
ifeq ($(strip $(SimRomanPot/SimFP420)),)
SimRomanPotSimFP420 := self/SimRomanPot/SimFP420
SimRomanPot/SimFP420 := SimRomanPotSimFP420
SimRomanPotSimFP420_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimRomanPotSimFP420_EX_USE := $(foreach d, self cmssw SimDataFormats/TrackingHit SimDataFormats/CrossingFrame DataFormats/FP420Digi DataFormats/Common SimG4CMS/FP420 FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger boost geant4core root clhep hepmc gsl,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimRomanPotSimFP420_EX_LIB   := SimRomanPotSimFP420
ALL_EXTERNAL_PRODS += SimRomanPotSimFP420
SimRomanPotSimFP420_CLASS := LIBRARY
SimRomanPot/SimFP420_relbigobj+=SimRomanPotSimFP420
endif
ifeq ($(strip $(DD4hep_SimTrackerMaterialAnalysisPlugins)),)
DD4hep_SimTrackerMaterialAnalysisPlugins := self/src/SimTracker/TrackerMaterialAnalysis/plugins
DD4hep_SimTrackerMaterialAnalysisPlugins_LOC_LIB   := Geom
DD4hep_SimTrackerMaterialAnalysisPlugins_LOC_USE := self cmssw DataFormats/DetId DataFormats/GeometryVector FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder SimDataFormats/ValidationFormats SimG4Core/Watcher boost geant4core rootgpad DetectorDescription/DDCMS dd4hep
ALL_EXTERNAL_PLUGIN_PRODS += DD4hep_SimTrackerMaterialAnalysisPlugins
SimTracker/TrackerMaterialAnalysis_relbigobj+=DD4hep_SimTrackerMaterialAnalysisPlugins
endif
ifeq ($(strip $(SimTrackerTrackerMaterialAnalysisPlugins)),)
SimTrackerTrackerMaterialAnalysisPlugins := self/src/SimTracker/TrackerMaterialAnalysis/plugins
SimTrackerTrackerMaterialAnalysisPlugins_LOC_USE := self cmssw DataFormats/DetId DataFormats/GeometryVector DetectorDescription/Core FWCore/Framework FWCore/ParameterSet FWCore/PluginManager Geometry/CommonDetUnit Geometry/Records Geometry/TrackerGeometryBuilder SimDataFormats/ValidationFormats SimG4Core/Watcher boost geant4core rootgpad
ALL_EXTERNAL_PLUGIN_PRODS += SimTrackerTrackerMaterialAnalysisPlugins
SimTracker/TrackerMaterialAnalysis_relbigobj+=SimTrackerTrackerMaterialAnalysisPlugins
endif
ifeq ($(strip $(Validation/CheckOverlap)),)
ValidationCheckOverlap := self/Validation/CheckOverlap
Validation/CheckOverlap := ValidationCheckOverlap
ValidationCheckOverlap_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationCheckOverlap_EX_USE := $(foreach d, self cmssw SimG4Core/Notification SimG4Core/Watcher Geometry/Records FWCore/ParameterSet geant4core boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += ValidationCheckOverlap
ValidationCheckOverlap_CLASS := LIBRARY
Validation/CheckOverlap_relbigobj+=ValidationCheckOverlap
endif
ifeq ($(strip $(Validation/EcalClusters)),)
ValidationEcalClusters := self/Validation/EcalClusters
Validation/EcalClusters := ValidationEcalClusters
ValidationEcalClusters_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationEcalClusters_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet DataFormats/EcalRecHit DataFormats/EgammaReco DataFormats/EcalDetId Geometry/CaloGeometry Geometry/CaloTopology DataFormats/Math RecoEcal/EgammaCoreTools DQMServices/Core SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/Vertex CommonTools/UtilAlgos clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += ValidationEcalClusters
ValidationEcalClusters_CLASS := LIBRARY
Validation/EcalClusters_relbigobj+=ValidationEcalClusters
endif
ifeq ($(strip $(Validation/EcalHits)),)
ValidationEcalHits := self/Validation/EcalHits
Validation/EcalHits := ValidationEcalHits
ValidationEcalHits_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationEcalHits_EX_USE := $(foreach d, self cmssw root geant4core boost FWCore/ParameterSet SimG4Core/Watcher SimG4CMS/Calo DataFormats/EcalDetId SimDataFormats/GeneratorProducts SimDataFormats/ValidationFormats DQMServices/Core rootmath DataFormats/Math,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += ValidationEcalHits
ValidationEcalHits_CLASS := LIBRARY
Validation/EcalHits_relbigobj+=ValidationEcalHits
endif
ifeq ($(strip $(Validation/Geometry)),)
ValidationGeometry := self/Validation/Geometry
Validation/Geometry := ValidationGeometry
ValidationGeometry_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationGeometry_LOC_FLAGS_REM_CXXFLAGS   := -Werror=unused-variable
ValidationGeometry_EX_USE := $(foreach d, self cmssw root dd4hep geant4core boost FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry DetectorDescription/Core DetectorDescription/DDCMS Geometry/Records SimG4Core/Notification SimG4Core/Watcher CommonTools/UtilAlgos,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += ValidationGeometry
ValidationGeometry_CLASS := LIBRARY
Validation/Geometry_relbigobj+=ValidationGeometry
endif
ifeq ($(strip $(ValidationHGCalValidationAuto)),)
ValidationHGCalValidationAuto := self/src/Validation/HGCalValidation/plugins
ValidationHGCalValidationAuto_LOC_USE := self cmssw CalibFormats/HcalObjects CondFormats/GeometryObjects DataFormats/ForwardDetId DataFormats/HcalDetId DataFormats/ParticleFlowCandidate DataFormats/Common DataFormats/L1THGCal DetectorDescription/Core DetectorDescription/DDCMS DQMServices/Core FWCore/Common FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities Geometry/HcalCommonData Geometry/HGCalCommonData Geometry/HGCalGeometry Geometry/Records HeterogeneousCore/CUDACore HeterogeneousCore/CUDAUtilities L1Trigger/L1THGCal SimDataFormats/CaloHit SimDataFormats/CaloTest SimDataFormats/CaloAnalysis SimDataFormats/GeneratorProducts SimDataFormats/Track SimDataFormats/ValidationFormats SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo RecoLocalCalo/HGCalRecAlgos RecoLocalCalo/HGCalRecProducers Validation/HGCalValidation geant4core dd4hep clhep hepmc cuda
ALL_EXTERNAL_PLUGIN_PRODS += ValidationHGCalValidationAuto
Validation/HGCalValidation_relbigobj+=ValidationHGCalValidationAuto
endif
ifeq ($(strip $(Validation/HGCalValidation)),)
ValidationHGCalValidation := self/Validation/HGCalValidation
Validation/HGCalValidation := ValidationHGCalValidation
ValidationHGCalValidation_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationHGCalValidation_EX_USE := $(foreach d, self cmssw DataFormats/ForwardDetId DataFormats/HepMCCandidate DataFormats/ParticleFlowCandidate DQMServices/Core FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimDataFormats/CaloAnalysis RecoLocalCalo/HGCalRecAlgos RecoLocalCalo/HGCalRecProducers geant4core clhep hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ValidationHGCalValidation_LCGDICTS  := x 
ValidationHGCalValidation_EX_LIB   := ValidationHGCalValidation
ALL_EXTERNAL_PRODS += ValidationHGCalValidation
ValidationHGCalValidation_CLASS := LIBRARY
Validation/HGCalValidation_relbigobj+=ValidationHGCalValidation
endif
ifeq ($(strip $(Validation/HcalHits)),)
ValidationHcalHits := self/Validation/HcalHits
Validation/HcalHits := ValidationHcalHits
ValidationHcalHits_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
ValidationHcalHits_EX_USE := $(foreach d, self cmssw DataFormats/HcalDetId DataFormats/HepMCCandidate DataFormats/Math DQMServices/Core FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet Geometry/HcalCommonData SimDataFormats/CaloHit SimDataFormats/GeneratorProducts SimDataFormats/ValidationFormats SimG4CMS/Calo SimG4Core/Notification SimG4Core/Watcher geant4core hepmc boost rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += ValidationHcalHits
ValidationHcalHits_CLASS := LIBRARY
Validation/HcalHits_relbigobj+=ValidationHcalHits
endif
