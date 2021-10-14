class MutCommandsPC extends ROPlayerController;

var ROMapInfo                   ROMI;

simulated function PreBeginPlay()
{
    super.PreBeginPlay();

    if (WorldInfo.NetMode == NM_Standalone || Role == ROLE_Authority)
    {
        ReplaceRoles();
    }
}

simulated function AddObjectsToReferences()
{
    ROMI.SharedContentReferences.Remove(0, ROMI.SharedContentReferences.Length);
	class'WorldInfo'.static.GetWorldInfo().ForceGarbageCollection(TRUE);
    ROMI.SharedContentReferences.AddItem(class<Inventory>(DynamicLoadObject("WinterWar.WWWeapon_Maxim_ActualContent", class'Class')));
	ROMI.SharedContentReferences.AddItem(class<Inventory>(DynamicLoadObject("WinterWar.WWWeapon_QuadMaxims_ActualContent", class'Class')));
	ROMI.SharedContentReferences.AddItem(class<Inventory>(DynamicLoadObject("ROGameContent.ROWeap_M2_HMG_Tripod_Content", class'Class')));
	ROMI.SharedContentReferences.AddItem(class<Inventory>(DynamicLoadObject("ROGameContent.ROWeap_DShK_HMG_Tripod_Content", class'Class')));
	ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("ROGameContent.ROHeli_AH1G_Content", class'Class')));
	ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("ROGameContent.ROHeli_OH6_Content", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("ROGameContent.ROHeli_UH1H_Content", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("ROGameContent.ROHeli_UH1H_Gunship_Content", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("GOM3.GOMVehicle_M113_ACAV_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_T20_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_T26_EarlyWar_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_T28_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_HT130_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_53K_ActualContent", class'Class')));
    ROMI.SharedContentReferences.AddItem(class<ROVehicle>(DynamicLoadObject("WinterWar.WWVehicle_Vickers_ActualContent", class'Class')));
}

simulated function LoadObjects()
{
    ROMI = ROMapInfo(WorldInfo.GetMapInfo());

    DynamicLoadObject("ROGameContent.ROHeli_AH1G_Content", class'Class');
    DynamicLoadObject("ROGameContent.ROHeli_OH6_Content", class'Class');
    DynamicLoadObject("ROGameContent.ROHeli_UH1H_Content", class'Class');
    DynamicLoadObject("ROGameContent.ROHeli_UH1H_Gunship_Content", class'Class');
    DynamicLoadObject("GOM3.GOMVehicle_M113_ACAV_ActualContent", class'Class');
    //DynamicLoadObject("GOM4.GOMVehicle_M113_ACAV_ActualContent", class'Class');
    //DynamicLoadObject("GOM4.GOMVehicle_M113_APC_ARVN", class'Class');
    //DynamicLoadObject("GOM4.GOMVehicle_M151_MUTT_US", class'Class');
    //DynamicLoadObject("GOM4.GOMVehicle_T34_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_T20_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_T26_EarlyWar_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_T28_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_HT130_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_53K_ActualContent", class'Class');
    DynamicLoadObject("WinterWar.WWVehicle_Vickers_ActualContent", class'Class');
}

reliable client function ClientLoadObjects()
{
    LoadObjects();
}

simulated function ReplaceRoles()
{
    ROMI = ROMapInfo(WorldInfo.GetMapInfo());

    if (ROMI != None)
    { 
        
        
    }
}

reliable client function ClientReplaceRoles()
{
    ReplaceRoles();
}