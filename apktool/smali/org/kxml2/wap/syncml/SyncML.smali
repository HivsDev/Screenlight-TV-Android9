.class public abstract Lorg/kxml2/wap/syncml/SyncML;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_TABLE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_2_DM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Add"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "Alert"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "Archive"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "Atomic"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "Chal"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "Cmd"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "CmdID"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "CmdRef"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "Copy"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "Cred"

    aput-object v11, v0, v10

    const/16 v11, 0xa

    const-string v12, "Data"

    aput-object v12, v0, v11

    const/16 v12, 0xb

    const-string v13, "Delete"

    aput-object v13, v0, v12

    const/16 v13, 0xc

    const-string v14, "Exec"

    aput-object v14, v0, v13

    const/16 v14, 0xd

    const-string v15, "Final"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "Get"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "Item"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "Lang"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "LocName"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "LocURI"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "Map"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "MapItem"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "Meta"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "MsgID"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "MsgRef"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "NoResp"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "NoResults"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "Put"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "Replace"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "RespURI"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "Results"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "Search"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "Sequence"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "SessionID"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "SftDel"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "Source"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "SourceRef"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "Status"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "Sync"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "SyncBody"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "SyncHdr"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "SyncML"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "Target"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "TargetRef"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "Reserved for future use"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "VerDTD"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "VerProto"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "NumberOfChanged"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "MoreData"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "Field"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    const-string v17, "Filter"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "Record"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "FilterType"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "SourceParent"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "TargetParent"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "Move"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "Correlator"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "Anchor"

    aput-object v16, v0, v1

    const-string v16, "EMI"

    aput-object v16, v0, v2

    const-string v16, "Format"

    aput-object v16, v0, v3

    const-string v16, "FreeID"

    aput-object v16, v0, v4

    const-string v16, "FreeMem"

    aput-object v16, v0, v5

    const-string v16, "Last"

    aput-object v16, v0, v6

    const-string v16, "Mark"

    aput-object v16, v0, v7

    const-string v16, "MaxMsgSize"

    aput-object v16, v0, v8

    const-string v16, "Mem"

    aput-object v16, v0, v9

    const-string v16, "MetInf"

    aput-object v16, v0, v10

    const-string v16, "Next"

    aput-object v16, v0, v11

    const-string v16, "NextNonce"

    aput-object v16, v0, v12

    const-string v16, "SharedMem"

    aput-object v16, v0, v13

    const-string v16, "Size"

    aput-object v16, v0, v14

    const-string v16, "Type"

    aput-object v16, v0, v15

    const/16 v16, 0xf

    const-string v17, "Version"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "MaxObjSize"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "FieldLevel"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "AccessType"

    aput-object v16, v0, v1

    const-string v1, "ACL"

    aput-object v1, v0, v2

    const-string v1, "Add"

    aput-object v1, v0, v3

    const-string v1, "b64"

    aput-object v1, v0, v4

    const-string v1, "bin"

    aput-object v1, v0, v5

    const-string v1, "bool"

    aput-object v1, v0, v6

    const-string v1, "chr"

    aput-object v1, v0, v7

    const-string v1, "CaseSense"

    aput-object v1, v0, v8

    const-string v1, "CIS"

    aput-object v1, v0, v9

    const-string v1, "Copy"

    aput-object v1, v0, v10

    const-string v1, "CS"

    aput-object v1, v0, v11

    const-string v1, "date"

    aput-object v1, v0, v12

    const-string v1, "DDFName"

    aput-object v1, v0, v13

    const-string v1, "DefaultValue"

    aput-object v1, v0, v14

    const-string v1, "Delete"

    aput-object v1, v0, v15

    const/16 v1, 0xf

    const-string v2, "Description"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DDFFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DFProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DFTitle"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DFType"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Exec"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Format"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Get"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "MgmtTree"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MIME"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Node"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "NodeName"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Occurence"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "One"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "OneOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "OneOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Path"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Permanent"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Replace"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "RTProperties"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Scope"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Size"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "TStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Value"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "VerDTD"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "VerNo"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ZeroOrMore"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ZeroOrN"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "ZeroOrOne"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDMParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDMSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlSerializer;-><init>()V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method
