#Games Basic Information
[GameInfo]

#Set to 1 (true) if the games engine version is 4.23 and up
UsesFNamePool=1

#Set to 1 (true) if the game engine version is 4.18 and up (this can vary)
IsUsingFChunkedFixedUObjectArray=1

#GName, GWorld, and GObject patterns with op code (EXAMPLE BELOW, FILL OUT PATTERNS YOURSELF IF NEEDED)
[GInfo]

#Set to 1 if you are manually defining GName, GObject, and GWorld by Patterns. Set to 0 if manually defining via offsets.
IsGInfoPatterns=1

#Patten Example

GName=74 09 48 8D 15 ? ? ? ? EB 16
GNameFirstOpCodes=5
GNameTotalByteInstruction=9

GObject=8B 46 10 3B 46 3C 75 0F 48 8B D6 48 8D 0D ? ? ? ? E8
GObjectFirstOpCodes=14
GObjectTotalByteInstruction=18

GWorld=74 26 48 8B 05 ? ? ? ? 48 85 C0 
GWorldFirstOpCodes=5
GWorldTotalByteInstruction=9

#Function direct patterns or offsets in the event auto finder fails.

[FunctionInfo]

#Set to 1 (true) in the event you wish to define with direct patterns
IsFunctionPatterns=1

GameStateInit=40 53 48 83 EC 20 48 8B 41 10 48 8B D9 48 8B 91
BeginPlay=48 89 5C 24 ? 48 89 6C 24 ? 48 89 74 24 ? 57 48 81 EC ? ? ? ? 48 8B 05 ? ? ? ? 48 33 C4 48 89 84 24 ? ? ? ? 48 8B 01 48 8B F1 F3 0F 10 89
StaticLoadObject=40 55 53 56 57 41 54 41 55 41 56 41 57 48 8D AC 24 ? ? ? ? 48 81 EC ? ? ? ? 48 8B 05 ? ? ? ? 48 33 C4 48 89 85 ? ? ? ? 48 8B 85 ? ? ? ? 48 8B DA 44 8B BD
SpawnActorFTrans=40 55 53 56 57 41 54 41 55 41 56 41 57 48 8D AC 24 ? ? ? ? 48 81 EC ? ? ? ? 48 8B 05 ? ? ? ? 48 33 C4 48 89 45 50 4C 8B E9 49 8B F9 48 8D 0D
CallFunctionByNameWithArguments=40 55 53 56 57 41 54 41 55 41 56 41 57 48 81 EC ? ? ? ? 48 8D 6C 24 ? 48 8B 05 ? ? ? ? 48 33 C5 48 89 85 ? ? ? ? 4C 89 85
ProcessEvent=40 55 56 57 41 54 41 55 41 56 41 57 48 81 EC ? ? ? ? 48 8D 6C 24 ? 48 89 9D ? ? ? ? 48 8B 05 ? ? ? ? 48 33 C5 48 89 85 ? ? ? ? 8B 41 0C 